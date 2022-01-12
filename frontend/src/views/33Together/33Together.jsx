import { useEffect, useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useHistory } from "react-router-dom";
import { Paper, Tab, Tabs, Box, Grid } from "@material-ui/core";
import InfoTooltipMulti from "../../components/InfoTooltip/InfoTooltipMulti";

import TabPanel from "../../components/TabPanel";
import CardHeader from "../../components/CardHeader/CardHeader";
import { PoolDeposit } from "./PoolDeposit";
import { PoolWithdraw } from "./PoolWithdraw";
import { PoolInfo } from "./PoolInfo";
import { PoolPrize } from "./PoolPrize";
import "./33together.scss";
import { addresses, POOL_GRAPH_URLS } from "../../constants";
import { useWeb3Context } from "../../hooks";
import { apolloExt } from "../../lib/apolloClient";
import { poolDataQuery, yourAwardsQuery } from "./poolData.js";
import { calculateOdds } from "../../helpers/33Together";
import { getPoolValues, getRNGStatus } from "../../slices/PoolThunk";
import { trim } from "../../helpers/index";
import { Typography, Button, Zoom } from "@material-ui/core";
import { Skeleton } from "@material-ui/lab";
function a11yProps(index) {
  return {
    id: `pool-tab-${index}`,
    "aria-controls": `pool-tabpanel-${index}`,
  };
}

const Presale = () => {
  const [view, setView] = useState(0);

  const changeView = (event, newView) => {
    setView(newView);
  };

  // NOTE (appleseed): these calcs were previously in PoolInfo, however would be need in PoolPrize, too, if...
  // ... we ever were to implement other types of awards
  const { connect, address, provider, chainID, connected, hasCachedProvider } = useWeb3Context();
  const dispatch = useDispatch();
  let history = useHistory();
  const [graphUrl, setGraphUrl] = useState(POOL_GRAPH_URLS[chainID]);
  const [poolData, setPoolData] = useState(null);
  const [poolDataError, setPoolDataError] = useState(null);
  const [graphLoading, setGraphLoading] = useState(true);
  const [walletChecked, setWalletChecked] = useState(false);
  const [winners, setWinners] = useState("--");
  const [totalDeposits, setTotalDeposits] = useState(0);
  const [totalSponsorship, setTotalSponsorship] = useState(0);
  const [yourOdds, setYourOdds] = useState(0);
  const [yourTotalAwards, setYourTotalAwards] = useState(0);
  // TODO (appleseed-33T): create a table for AwardHistory
  const [yourAwardHistory, setYourAwardHistory] = useState([]);
  const [infoTooltipMessage, setInfoTooltipMessage] = useState([
    "Deposit sPID to win! Once deposited, you will receive a corresponding amount of 3,3 π and be entered to win until your sPID is withdrawn.",
  ]);
  const isAccountLoading = useSelector(state => state.account.loading ?? true);

  const sohmBalance = useSelector(state => {
    return state.account.balances && state.account.balances.sohm;
  });

  const poolBalance = useSelector(state => {
    return state.account.balances && state.account.balances.pool;
  });

  // query correct pool subgraph depending on current chain
  useEffect(() => {
    setGraphUrl(POOL_GRAPH_URLS[chainID]);
  }, [chainID]);

  useEffect(() => {
    // get poolData
    // apolloExt(poolDataQuery(addresses[chainID].PT_PRIZE_POOL_ADDRESS), graphUrl)
    //   .then(poolData => {
    //     const poolWinners = poolData.data.prizePool?.prizeStrategy.multipleWinners.numberOfWinners;
    //     if (poolWinners) setWinners(parseFloat(poolWinners));

    //     const poolTotalDeposits = poolData.data.prizePool?.controlledTokens[0].totalSupply / 1_000_000_000;
    //     if (poolTotalDeposits) setTotalDeposits(poolTotalDeposits);

    //     // sponsorship is deposited funds contributing to the prize without being eligible to win
    //     const poolTotalSponsorship = poolData.data.prizePool?.controlledTokens[1].totalSupply / 1_000_000_000;
    //     if (poolTotalSponsorship) setTotalSponsorship(poolTotalSponsorship);

    //     setPoolData(poolData.data);
    //     setGraphLoading(false);
    //   })
    //   .catch(err => setPoolDataError(err));

    // // get your Award History
    // if (address) {
    //   let yourPrizes = [];
    //   let totalAwards = 0;
    //   apolloExt(
    //     yourAwardsQuery(addresses[chainID].PT_PRIZE_POOL_ADDRESS, address, addresses[chainID].PT_TOKEN_ADDRESS),
    //     graphUrl,
    //   )
    //     .then(poolData => {
    //       poolData.data.prizePool?.prizes.map(prize => {
    //         let awardedAmount = parseFloat(prize.awardedControlledTokens[0]?.amount) / 10 ** 9 || 0;
    //         // pushing in an AwardItem {awardedTimestamp, awardedBlock, awardedAmount}
    //         yourPrizes.push({
    //           awardedTimestamp: prize.awardedTimestamp,
    //           awardedBlock: prize.awardedBlock,
    //           awardedAmount: awardedAmount,
    //         });
    //         totalAwards += awardedAmount;
    //       });
    //       setYourTotalAwards(totalAwards);
    //       setYourAwardHistory(yourPrizes);
    //     })
    //     .catch(err => setPoolDataError(err));
    // }
  }, [graphUrl]);

  useEffect(() => {
    let userOdds = calculateOdds(poolBalance, totalDeposits, winners);
    setYourOdds(userOdds);
  }, [winners, totalDeposits, poolBalance]);

  useEffect(() => {
    if (hasCachedProvider()) {
      // then user DOES have a wallet
      connect().then(() => {
        setWalletChecked(true);
      });
    } else {
      // then user DOES NOT have a wallet
      setWalletChecked(true);
    }
  }, []);

  // this useEffect fires on state change from above. It will ALWAYS fire AFTER
  useEffect(() => {
    // don't load ANY details until wallet is Checked
    if (walletChecked) {
      dispatch(getPoolValues({ networkID: chainID, provider: provider }));
      dispatch(getRNGStatus({ networkID: chainID, provider: provider }));
    }
  }, [walletChecked]);

  return (
    <Zoom in={true}>
      <div id="pool-together-view">
        <Paper className="ohm-card">
          <Box display="flex">
            <CardHeader title="Presale" />
          </Box>
          <Grid container direction="column" spacing={2}>
            <Grid item>
              <Grid container spacing={2} alignItems="flex-end">
                <Grid item xs={12} sm={4} md={4} lg={4} />
                <Grid item xs={12} sm={4} md={4} lg={4}>
                  <Typography variant="h5">
                    <Skeleton type="text" />
                  </Typography>
                  <Typography variant="h6" color="textSecondary" align="center">
                    Claimable Rewards
                  </Typography>
                </Grid>
                <Grid item xs={12} sm={4} md={4} lg={4} />
              </Grid>
            </Grid>
            <Grid item>
              <Grid container spacing={2} alignItems="flex-end">
                <Grid item xs={12} sm={4} md={4} lg={4} />
                <Grid item xs={12} sm={4} md={4} lg={4}>
                  <Button
                    className="stake-button"
                    variant="contained"
                    color="primary"
                  >
                    Claim PID
                  </Button>
                </Grid>
                <Grid item xs={12} sm={4} md={4} lg={4} />
              </Grid>
              <Grid container spacing={2} alignItems="flex-end">
                <Grid item xs={12} sm={4} md={4} lg={4} />
                <Grid item xs={12} sm={4} md={4} lg={4}>
                  <Button
                    className="stake-button"
                    variant="contained"
                    color="primary"
                  >
                    Claim And Stake
                  </Button>
                </Grid>
                <Grid item xs={12} sm={4} md={4} lg={4} />
              </Grid>
            </Grid>
            <Grid item>
              <Grid container spacing={2} alignItems="flex-end">
                <Grid item xs={12} sm={10} md={10} lg={10} >
                  <Typography variant="h7">Pending Rewards</Typography>
                </Grid>
                <Grid item xs={12} sm={2} md={2} lg={2} >
                  <Typography variant="h7">
                    <Skeleton type="text" />
                  </Typography>
                </Grid>
              </Grid>
              <Grid container spacing={2} alignItems="flex-end">
                <Grid item xs={12} sm={10} md={10} lg={10} >
                  <Typography variant="h7">Claimable Rewards</Typography>
                </Grid>
                <Grid item xs={12} sm={2} md={2} lg={2} >
                  <Typography variant="h7">
                    <Skeleton type="text" />
                  </Typography>
                </Grid>
              </Grid>
              <Grid container spacing={2} alignItems="flex-end">
                <Grid item xs={12} sm={10} md={10} lg={10} >
                  <Typography variant="h7">Time until fully vested</Typography>
                </Grid>
                <Grid item xs={12} sm={2} md={2} lg={2} >
                  <Typography variant="h7">
                    <Skeleton type="text" />
                  </Typography>
                </Grid>
              </Grid>
            </Grid>

          </Grid>
        </Paper>
        <Paper className="ohm-card">
          <Box display="flex">
            <CardHeader title="About Presale" />
          </Box>
          <Typography variant="h6">
            ● Only whitelisted users can join the pre-sale
          </Typography>
          <Typography variant="h6">
            ● Pre-sale Date: 27th Dec 2021 from 08:00:00 UTC to 23:59:00 UTC
          </Typography>
          <Typography variant="h6">
            ● Token: $POWER
          </Typography>
          <Typography variant="h6">
            ● Price per token: 10 BUSD per $POWER
          </Typography>
          <Typography variant="h6">
            ● Each whitelisted address can buy a maximum of 1000 BUSD
          </Typography>
          <Typography variant="h6">
            ● Vesting Period: Linearly release over 14 days from launching date
          </Typography>
        </Paper>
        {/* <PoolInfo
        graphLoading={graphLoading}
        isAccountLoading={isAccountLoading}
        poolBalance={trim(poolBalance, 4)}
        sohmBalance={trim(sohmBalance, 4)}
        yourTotalAwards={trim(yourTotalAwards, 4)}
        yourOdds={trim(yourOdds, 0)}
        winners={winners}
        totalDeposits={totalDeposits}
        totalSponsorship={totalSponsorship}
      /> */}
      </div >
    </Zoom>
  );
};

export default Presale;
