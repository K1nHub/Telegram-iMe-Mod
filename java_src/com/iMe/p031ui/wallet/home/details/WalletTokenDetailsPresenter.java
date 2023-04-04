package com.iMe.p031ui.wallet.home.details;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.manager.common.FeatureAvailableManager$Token;
import com.iMe.manager.wallet.create.WalletCreateManager;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.staking.StakingAnnualPercentageMode;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeStatus;
import com.iMe.model.statistic.StatisticDiagramModel;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.binancepay.BinanceUserInfo;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.model.staking.StakingDetailedMetadata;
import com.iMe.storage.domain.model.staking.StakingDetailedStats;
import com.iMe.storage.domain.model.staking.StakingRules;
import com.iMe.storage.domain.model.staking.StakingValues;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.disposables.Disposable;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: WalletTokenDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsPresenter extends BasePresenter<WalletTokenDetailsView> {
    private AccountLevelInformation accountLevelInformation;
    private final AccountLevelInteractor accountLevelInteractor;
    private final TokenDetailsArgs args;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final Lazy horizontalActionButtonItems$delegate;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final StakingInteractor stakingInteractor;
    private StakingDetailedMetadata stakingMetadata;
    private final Lazy token$delegate;
    private final WalletCreateManager walletCreateManager;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAccountLevelInfo$lambda$3(AccountLevelInformation accountLevelInformation) {
    }

    public void attachViewState(WalletCreateManagerView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.walletCreateManager.attachViewState(view);
    }

    public void onDetachViewState() {
        this.walletCreateManager.onDetachViewState();
    }

    public void startChooseWalletOptionsFlow(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.walletCreateManager.startChooseWalletOptionsFlow(blockchainType);
    }

    public WalletTokenDetailsPresenter(TokenDetailsArgs args, AccountLevelInteractor accountLevelInteractor, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor, WalletCreateManager walletCreateManager) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(accountLevelInteractor, "accountLevelInteractor");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        Intrinsics.checkNotNullParameter(walletCreateManager, "walletCreateManager");
        this.args = args;
        this.accountLevelInteractor = accountLevelInteractor;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.walletCreateManager = walletCreateManager;
        lazy = LazyKt__LazyJVMKt.lazy(new WalletTokenDetailsPresenter$token$2(this));
        this.token$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new WalletTokenDetailsPresenter$horizontalActionButtonItems$2(this));
        this.horizontalActionButtonItems$delegate = lazy2;
    }

    private final TokenDetailed getToken() {
        return (TokenDetailed) this.token$delegate.getValue();
    }

    private final List<HorizontalActionButtonItem> getHorizontalActionButtonItems() {
        return (List) this.horizontalActionButtonItems$delegate.getValue();
    }

    public final void setupNavigationRouter() {
        ((WalletTokenDetailsView) getViewState()).onSetupNavigationRouter();
    }

    public final void selectTab(int i) {
        ((WalletTokenDetailsView) getViewState()).onTabSelected(i);
    }

    public final void startAccountLevelDialog() {
        startAccountLevelInformationAction(new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletTokenDetailsPresenter.startAccountLevelDialog$lambda$0(WalletTokenDetailsPresenter.this, (AccountLevelInformation) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startAccountLevelDialog$lambda$0(WalletTokenDetailsPresenter this$0, AccountLevelInformation accountLevelInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(accountLevelInfo, "accountLevelInfo");
        ((WalletTokenDetailsView) this$0.getViewState()).showAccountLevelDialog(accountLevelInfo);
    }

    public final void startStakingConditionsDialog() {
        if (this.args instanceof TokenDetailsArgs.Staking) {
            ((WalletTokenDetailsView) getViewState()).showStakingConditionsDialog(((TokenDetailsArgs.Staking) this.args).getStakingDetails());
        }
    }

    public final void changeRankVisibility(boolean z) {
        Disposable subscribe = SchedulersExtKt.scheduleIO(this.accountLevelInteractor.changeLevelVisibility(z)).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2267x3dbc88cf(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2268x3dbc88d0((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void startTokenDistributionDialog(BinanceTokenBalanceInfo token) {
        List listOf;
        Intrinsics.checkNotNullParameter(token, "token");
        String totalBalanceText = BinanceTokenBalanceExtKt.getTotalBalanceText(token);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new StatisticDiagramModel.DiagramItem[]{new StatisticDiagramModel.DiagramItem(this.resourceManager.getString(C3417R.string.binance_token_details_distribution_spot), Theme.key_statisticChartLine_blue, token.getSpot().getTotal()), new StatisticDiagramModel.DiagramItem(this.resourceManager.getString(C3417R.string.binance_token_details_distribution_margin), Theme.key_statisticChartLine_golden, token.getMargin().getTotal())});
        ((WalletTokenDetailsView) getViewState()).showStatisticDialog(new StatisticDiagramModel(totalBalanceText, listOf));
    }

    public final void reload() {
        if (this.args instanceof TokenDetailsArgs.Staking) {
            loadStakingDetailedMetadata();
        } else {
            ((WalletTokenDetailsView) getViewState()).showRefreshing(false);
        }
    }

    public final void openTokenInformationScreen() {
        ((WalletTokenDetailsView) getViewState()).openTokenInformationScreen(getToken());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        attachViewState((WalletCreateManagerView) viewState);
        setupWithTokenType(this.args);
        setupHorizontalActionButtons();
        listenEvents();
        if (this.args instanceof TokenDetailsArgs.Staking) {
            loadStakingDetailedMetadata();
        } else if (Intrinsics.areEqual(getToken().getTicker(), TokenCode.LIME.name())) {
            loadAccountLevelInfo$default(this, false, null, 3, null);
        }
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        super.onDestroy();
        onDetachViewState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupHorizontalActionButtons() {
        WalletTokenDetailsView walletTokenDetailsView = (WalletTokenDetailsView) getViewState();
        TokenDetailsArgs tokenDetailsArgs = this.args;
        walletTokenDetailsView.setupHorizontalActionButtons(tokenDetailsArgs instanceof TokenDetailsArgs.Staking ? resolveAvailableTokenActions(tokenDetailsArgs) : getHorizontalActionButtonItems());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupRankBadge() {
        ((WalletTokenDetailsView) getViewState()).setupRankBadge((this.args instanceof TokenDetailsArgs.Crypto) && Intrinsics.areEqual(getToken().getTicker(), TokenCode.LIME.name()) && !this.cryptoPreferenceHelper.isBalanceHidden(), this.cryptoPreferenceHelper.getAccountLevelMetadata().getLevel());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadStakingDetailedMetadata() {
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            Observable<Result<StakingDetailedMetadata>> observeOn = this.stakingInteractor.getStakingDetails(((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails().getId()).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2273xdf270a35(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2274xdf270a36(null)));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    private final void startAccountLevelInformationAction(Callbacks$Callback1<AccountLevelInformation> callbacks$Callback1) {
        AccountLevelInformation accountLevelInformation = this.accountLevelInformation;
        if (accountLevelInformation != null) {
            callbacks$Callback1.invoke(accountLevelInformation);
        } else {
            loadAccountLevelInfo(true, callbacks$Callback1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void loadAccountLevelInfo$default(WalletTokenDetailsPresenter walletTokenDetailsPresenter, boolean z, Callbacks$Callback1 callbacks$Callback1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            callbacks$Callback1 = WalletTokenDetailsPresenter$$ExternalSyntheticLambda2.INSTANCE;
        }
        walletTokenDetailsPresenter.loadAccountLevelInfo(z, callbacks$Callback1);
    }

    private final void loadAccountLevelInfo(boolean z, Callbacks$Callback1<AccountLevelInformation> callbacks$Callback1) {
        Observable scheduleIO = SchedulersExtKt.scheduleIO(AccountLevelInteractor.getAccountLevelInformation$default(this.accountLevelInteractor, 0L, 1, null));
        final WalletTokenDetailsPresenter$loadAccountLevelInfo$2 walletTokenDetailsPresenter$loadAccountLevelInfo$2 = new WalletTokenDetailsPresenter$loadAccountLevelInfo$2(z, this);
        Observable compose = scheduleIO.compose(new ObservableTransformer() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                ObservableSource loadAccountLevelInfo$lambda$4;
                loadAccountLevelInfo$lambda$4 = WalletTokenDetailsPresenter.loadAccountLevelInfo$lambda$4(Function1.this, observable);
                return loadAccountLevelInfo$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(compose, "private fun loadAccountL…     .autoDispose()\n    }");
        Disposable subscribe = compose.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2271xfd1058cc(this, callbacks$Callback1, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2272xfd1058cd((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource loadAccountLevelInfo$lambda$4(Function1 tmp0, Observable p0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        Intrinsics.checkNotNullParameter(p0, "p0");
        return (ObservableSource) tmp0.invoke(p0);
    }

    private final boolean isBuyAvailable(String str) {
        return FeatureAvailableManager$Token.INSTANCE.isPurchaseAvailable(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startReceiveScreen(String str) {
        BlockchainType currentBlockchainType = this.cryptoPreferenceHelper.getCurrentBlockchainType();
        Wallet wallet2 = this.cryptoAccessManager.getWallet(currentBlockchainType);
        String address = wallet2 != null ? wallet2.getAddress() : null;
        if (address == null) {
            address = "";
        }
        ((WalletTokenDetailsView) getViewState()).openReceiveScreen(address, CryptoHelper.formatAddressQR(address, currentBlockchainType), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBuyScreen(String str) {
        ((WalletTokenDetailsView) getViewState()).openBuyScreen(new TokenBuyCoordinatorArgs(getToken(), SwapProtocol.Companion.resolveByNetworkId(str), null, 4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startSendScreen(String str) {
        ((WalletTokenDetailsView) getViewState()).openSendScreen(TokenUiMappingKt.mapToUI(getToken()), str);
    }

    private final void setupWithTokenType(TokenDetailsArgs tokenDetailsArgs) {
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            setupStakingDetailsScreen(((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails());
        } else {
            ((WalletTokenDetailsView) getViewState()).setupTransactionsScreen(tokenDetailsArgs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupStakingDetailsScreen(StakingDetailsItem stakingDetailsItem) {
        BigDecimal debt;
        String str;
        String string;
        String str2;
        StakingProgrammeStatus stakingProgrammeStatus;
        FiatValue createUSDValue$default;
        TokenBalance copy;
        FiatValue createUSDValue$default2;
        TokenBalance copy2;
        BigDecimal asToken;
        BigDecimal asToken2;
        StakingDetailedStats stats;
        StakingDetailedStats stats2;
        StakingDetailedMetadata stakingDetailedMetadata = this.stakingMetadata;
        StakingValues profit = (stakingDetailedMetadata == null || (stats2 = stakingDetailedMetadata.getStats()) == null) ? null : stats2.getProfit();
        StakingDetailedMetadata stakingDetailedMetadata2 = this.stakingMetadata;
        StakingValues debt2 = (stakingDetailedMetadata2 == null || (stats = stakingDetailedMetadata2.getStats()) == null) ? null : stats.getDebt();
        if (debt2 == null || (debt = debt2.getAsToken()) == null) {
            debt = stakingDetailsItem.getDebt();
        }
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        Number parseFormattedString = balanceFormatter.parseFormattedString(stakingDetailsItem.getFormattedAPY());
        Number parseFormattedString2 = balanceFormatter.parseFormattedString(stakingDetailsItem.getFormattedAPR());
        if (NumberExtKt.isZero(parseFormattedString) || stakingDetailsItem.getAnnualPercentageMode() == StakingAnnualPercentageMode.APY) {
            str = stakingDetailsItem.getFormattedAPY() + '%';
            string = this.resourceManager.getString(C3417R.string.staking_details_apy);
        } else if (NumberExtKt.isZero(parseFormattedString2) || stakingDetailsItem.getAnnualPercentageMode() == StakingAnnualPercentageMode.APR) {
            str = stakingDetailsItem.getFormattedAPR() + '%';
            string = this.resourceManager.getString(C3417R.string.staking_details_apr);
        } else {
            str = this.resourceManager.getString(C3417R.string.staking_details_apy_apr_values, stakingDetailsItem.getFormattedAPR(), stakingDetailsItem.getFormattedAPY());
            string = this.resourceManager.getString(C3417R.string.staking_details_apy_apr);
        }
        String str3 = str;
        String str4 = string;
        boolean z = (profit == null || (asToken2 = profit.getAsToken()) == null || NumberExtKt.isZero(asToken2)) ? false : true;
        if (z) {
            TokenBalance createEmptyBalanceFor = TokenBalance.Companion.createEmptyBalanceFor(TokenUiMappingKt.mapToDomain(stakingDetailsItem.getTokenItem()));
            double orZero = NumberExtKt.orZero((profit == null || (asToken = profit.getAsToken()) == null) ? null : Double.valueOf(asToken.doubleValue()));
            if (profit == null || (createUSDValue$default2 = profit.getAsFiat()) == null) {
                createUSDValue$default2 = FiatValue.Companion.createUSDValue$default(FiatValue.Companion, 0.0d, 1, null);
            }
            copy2 = createEmptyBalanceFor.copy((r16 & 1) != 0 ? createEmptyBalanceFor.total : orZero, (r16 & 2) != 0 ? createEmptyBalanceFor.totalInFiat : createUSDValue$default2, (r16 & 4) != 0 ? createEmptyBalanceFor.rateToFiat : null, (r16 & 8) != 0 ? createEmptyBalanceFor.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? createEmptyBalanceFor.token : null);
            str2 = this.resourceManager.getString(C3417R.string.staking_details_profit_value, TokenBalanceExtKt.getTotalBalanceShortText(copy2), TokenBalanceExtKt.getDollarsBalanceText(copy2));
        } else {
            str2 = "-";
        }
        String str5 = str2;
        if (!stakingDetailsItem.getHasEnoughFunds()) {
            stakingProgrammeStatus = StakingProgrammeStatus.SHORT_OF_FUNDS;
        } else if (StringExtKt.parseISODate(stakingDetailsItem.getEndsAtISO()) > DateExtKt.now()) {
            stakingProgrammeStatus = StakingProgrammeStatus.ACTIVE;
        } else {
            stakingProgrammeStatus = debt.compareTo(BigDecimal.ZERO) > 0 ? StakingProgrammeStatus.WITHDRAWAL_AVAILABLE : StakingProgrammeStatus.CLOSED;
        }
        StakingProgrammeStatus stakingProgrammeStatus2 = stakingProgrammeStatus;
        WalletTokenDetailsView walletTokenDetailsView = (WalletTokenDetailsView) getViewState();
        String avatarUrl = stakingDetailsItem.getTokenItem().getAvatarUrl();
        String name = stakingDetailsItem.getTokenItem().getName();
        TokenBalance createEmptyBalanceFor2 = TokenBalance.Companion.createEmptyBalanceFor(getToken());
        double orZero2 = NumberExtKt.orZero(Double.valueOf(debt.doubleValue()));
        if (debt2 == null || (createUSDValue$default = debt2.getAsFiat()) == null) {
            createUSDValue$default = FiatValue.Companion.createUSDValue$default(FiatValue.Companion, 0.0d, 1, null);
        }
        copy = createEmptyBalanceFor2.copy((r16 & 1) != 0 ? createEmptyBalanceFor2.total : orZero2, (r16 & 2) != 0 ? createEmptyBalanceFor2.totalInFiat : createUSDValue$default, (r16 & 4) != 0 ? createEmptyBalanceFor2.rateToFiat : null, (r16 & 8) != 0 ? createEmptyBalanceFor2.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? createEmptyBalanceFor2.token : null);
        walletTokenDetailsView.setupStakingDetailsScreen(avatarUrl, name, TokenBalanceExtKt.getTotalBalanceShortText(copy), str4, str3, str5, z, stakingProgrammeStatus2);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2269x72f8ed61(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2270x72f8ed62(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenDetailed resolveToken(TokenDetailsArgs tokenDetailsArgs) {
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            return TokenExtKt.toTokenDetailed(((TokenDetailsArgs.Binance) tokenDetailsArgs).getToken());
        }
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            return ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance().getToken();
        }
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            return TokenUiMappingKt.mapToDomain(((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails().getTokenItem());
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<HorizontalActionButtonItem> resolveAvailableTokenActions(TokenDetailsArgs tokenDetailsArgs) {
        List<HorizontalActionButtonItem> listOf;
        StakingRules rules;
        StakingRules rules2;
        StakingDetailedStats stats;
        StakingRules rules3;
        List<HorizontalActionButtonItem> listOfNotNull;
        List<HorizontalActionButtonItem> listOfNotNull2;
        boolean z = true;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            HorizontalActionButtonItem[] horizontalActionButtonItemArr = new HorizontalActionButtonItem[3];
            TokenDetailsArgs.Binance binance = (TokenDetailsArgs.Binance) tokenDetailsArgs;
            horizontalActionButtonItemArr[0] = binance.getToken().getConvertible() ? new HorizontalActionButtonItem(C3417R.C3419drawable.fork_ic_exchange_27, this.resourceManager.getString(C3417R.string.wallet_token_details_transactions_swap), false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$1(this, tokenDetailsArgs), 4, null) : null;
            horizontalActionButtonItemArr[1] = binance.getToken().getReplenishNetworksIds().isEmpty() ^ true ? new HorizontalActionButtonItem(C3417R.C3419drawable.fork_ic_buy_28, this.resourceManager.getString(C3417R.string.wallet_token_details_action_buy), false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$2(this, tokenDetailsArgs), 4, null) : null;
            horizontalActionButtonItemArr[2] = binance.getToken().getReceivable() ? new HorizontalActionButtonItem(C3417R.C3419drawable.fork_ic_ask_transfer, this.resourceManager.getString(C3417R.string.wallet_token_details_action_receive), false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$3(this, tokenDetailsArgs), 4, null) : null;
            listOfNotNull2 = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) horizontalActionButtonItemArr);
            return listOfNotNull2;
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            TokenDetailed token = ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance().getToken();
            HorizontalActionButtonItem[] horizontalActionButtonItemArr2 = new HorizontalActionButtonItem[3];
            horizontalActionButtonItemArr2[0] = new HorizontalActionButtonItem(C3417R.C3419drawable.msg_send, this.resourceManager.getString(C3417R.string.wallet_token_details_details_action_send), false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$1(this, token), 4, null);
            horizontalActionButtonItemArr2[1] = isBuyAvailable(token.getNetworkId()) ? new HorizontalActionButtonItem(C3417R.C3419drawable.fork_ic_buy_28, this.resourceManager.getString(C3417R.string.wallet_token_details_action_buy), false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$2(this, token), 4, null) : null;
            horizontalActionButtonItemArr2[2] = new HorizontalActionButtonItem(C3417R.C3419drawable.fork_ic_ask_transfer, this.resourceManager.getString(C3417R.string.wallet_token_details_action_receive), false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$4$3(this, token), 4, null);
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) horizontalActionButtonItemArr2);
            return listOfNotNull;
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            HorizontalActionButtonItem[] horizontalActionButtonItemArr3 = new HorizontalActionButtonItem[4];
            int i = C3417R.C3419drawable.fork_ic_buy_28;
            String string = this.resourceManager.getString(C3417R.string.staking_details_replenish);
            StakingDetailedMetadata stakingDetailedMetadata = this.stakingMetadata;
            horizontalActionButtonItemArr3[0] = new HorizontalActionButtonItem(i, string, (stakingDetailedMetadata == null || (rules3 = stakingDetailedMetadata.getRules()) == null || !rules3.getCanDeposit()) ? false : true, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$5(this, tokenDetailsArgs));
            int i2 = C3417R.C3419drawable.fork_ic_ask_transfer;
            String string2 = this.resourceManager.getString(C3417R.string.staking_details_claim);
            StakingDetailedMetadata stakingDetailedMetadata2 = this.stakingMetadata;
            horizontalActionButtonItemArr3[1] = new HorizontalActionButtonItem(i2, string2, (stakingDetailedMetadata2 == null || (stats = stakingDetailedMetadata2.getStats()) == null || !stats.isParticipated()) ? false : true, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$6(this, tokenDetailsArgs));
            int i3 = C3417R.C3419drawable.fork_ic_withdraw;
            String string3 = this.resourceManager.getString(C3417R.string.staking_details_withdraw);
            StakingDetailedMetadata stakingDetailedMetadata3 = this.stakingMetadata;
            horizontalActionButtonItemArr3[2] = new HorizontalActionButtonItem(i3, string3, (stakingDetailedMetadata3 == null || (rules2 = stakingDetailedMetadata3.getRules()) == null || (!rules2.getCanWithdrawSafely() && !rules2.getCanWithdrawImmediately())) ? false : true, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$8(this, tokenDetailsArgs));
            int i4 = C3417R.C3419drawable.fork_wallet_staking_dashboard_calculator;
            String string4 = this.resourceManager.getString(C3417R.string.staking_dashboard_calculator);
            StakingDetailedMetadata stakingDetailedMetadata4 = this.stakingMetadata;
            if (stakingDetailedMetadata4 == null || (rules = stakingDetailedMetadata4.getRules()) == null || !rules.getCanDeposit()) {
                z = false;
            }
            horizontalActionButtonItemArr3[3] = new HorizontalActionButtonItem(i4, string4, z, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$9(this, tokenDetailsArgs));
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) horizontalActionButtonItemArr3);
            return listOf;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openStakingReplenishCheckingAccountLevel(final StakingDetailsItem stakingDetailsItem) {
        startAccountLevelInformationAction(new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletTokenDetailsPresenter.openStakingReplenishCheckingAccountLevel$lambda$11(StakingDetailsItem.this, this, (AccountLevelInformation) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openStakingReplenishCheckingAccountLevel$lambda$11(StakingDetailsItem stakingDetailsItem, WalletTokenDetailsPresenter this$0, AccountLevelInformation accountLevelInformation) {
        Intrinsics.checkNotNullParameter(stakingDetailsItem, "$stakingDetailsItem");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (stakingDetailsItem.getMinimalRank().isReached(accountLevelInformation.getLevel())) {
            ((WalletTokenDetailsView) this$0.getViewState()).openStakingReplenishScreen(stakingDetailsItem);
        } else {
            ((WalletTokenDetailsView) this$0.getViewState()).showLevelRequiredDialog(stakingDetailsItem.getMinimalRank(), TokenDetailed.Companion.getLIME(stakingDetailsItem.getTokenItem().getNetworkId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBinanceSwapScreen(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        BinanceUserInfo info = this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
        if (Intrinsics.areEqual(info != null ? Boolean.valueOf(info.isVerified()) : null, Boolean.FALSE)) {
            ((WalletTokenDetailsView) getViewState()).showRequiredVerifyDialog();
        } else {
            ((WalletTokenDetailsView) getViewState()).openBinanceSwapScreen(SelectableMappingKt.mapToDetailedToken(binanceTokenBalanceInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBinanceReplenishScreen(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        if (!this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            ((WalletTokenDetailsView) getViewState()).showRequiredWalletCreatedDialog(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda3
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletTokenDetailsPresenter.startBinanceReplenishScreen$lambda$12(WalletTokenDetailsPresenter.this);
                }
            });
            return;
        }
        BinanceUserInfo info = this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
        boolean z = false;
        if (info != null && !info.isVerified()) {
            z = true;
        }
        if (z) {
            ((WalletTokenDetailsView) getViewState()).showRequiredVerifyDialog();
        } else {
            ((WalletTokenDetailsView) getViewState()).openBinanceReplenishScreen(TokenUiMappingKt.mapToUI(TokenExtKt.toTokenDetailed(binanceTokenBalanceInfo)), resolveNetworkIdForReplenish(binanceTokenBalanceInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startBinanceReplenishScreen$lambda$12(WalletTokenDetailsPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startChooseWalletOptionsFlow(this$0.cryptoPreferenceHelper.getCurrentBlockchainType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBinanceReceiveScreen(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        ((WalletTokenDetailsView) getViewState()).openBinanceReceiveScreen(TokenUiMappingKt.mapToUI(SelectableMappingKt.mapToDetailedToken(binanceTokenBalanceInfo)));
    }

    private final String resolveNetworkIdForReplenish(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Object obj;
        Iterator<T> it = binanceTokenBalanceInfo.getReplenishNetworksIds().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual((String) obj, this.cryptoPreferenceHelper.getNetworkId())) {
                break;
            }
        }
        String str = (String) obj;
        return str == null ? (String) CollectionsKt.first((List<? extends Object>) binanceTokenBalanceInfo.getReplenishNetworksIds()) : str;
    }
}