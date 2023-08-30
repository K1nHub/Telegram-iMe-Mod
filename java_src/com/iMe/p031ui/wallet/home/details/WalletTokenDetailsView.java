package com.iMe.p031ui.wallet.home.details;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeStatus;
import com.iMe.model.statistic.StatisticDiagramModel;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletTokenDetailsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView */
/* loaded from: classes4.dex */
public interface WalletTokenDetailsView extends BaseView, WalletCreateManagerView, SwipeRefreshView {
    void actionCopyToClipboard(String str);

    @AddToEndSingle
    void onSetupNavigationRouter();

    @AddToEndSingle
    void onTabSelected(int i);

    void openAddAdminScreen(long j, long j2, String str);

    void openBinanceReceiveScreen(TokenItem tokenItem);

    void openBinanceReplenishScreen(TokenItem tokenItem, String str);

    void openBinanceSwapScreen(TokenDetailed tokenDetailed);

    void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void openReceiveScreen(String str, String str2, String str3);

    void openSendScreen(TokenItem tokenItem, String str);

    void openStakingCalculatorScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingProfitScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingReplenishScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingWithdrawScreen(StakingDetailsItem stakingDetailsItem);

    void openTokenInformationScreen(TokenDetailed tokenDetailed);

    @AddToEndSingle
    void renderHorizontalActionButtons(List<HorizontalActionButtonItem> list);

    @AddToEndSingle
    void setupCryptoBoxDetailsScreen(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, CryptoBoxStatus cryptoBoxStatus);

    @AddToEndSingle
    void setupRankBadge(boolean z, AccountLevel accountLevel);

    @AddToEndSingle
    void setupStakingDetailsScreen(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, StakingProgrammeStatus stakingProgrammeStatus);

    @AddToEndSingle
    void setupTransactionsScreen(TokenDetailsArgs tokenDetailsArgs);

    void showAccountLevelDialog(AccountLevelInformation accountLevelInformation);

    void showActionError(String str);

    void showConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showCryptoBoxConditionsDialog(CryptoBoxInfo cryptoBoxInfo);

    void showCryptoBoxRefreshSuccess();

    void showCryptoBoxSuspensionDialog(CryptoBoxTransactionAction cryptoBoxTransactionAction);

    void showLevelRequiredDialog(AccountLevel accountLevel, TokenDetailed tokenDetailed);

    void showRequiredVerifyDialog();

    void showRequiredWalletCreatedDialog(Callbacks$Callback callbacks$Callback);

    void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem);

    void showStatisticDialog(StatisticDiagramModel statisticDiagramModel);
}
