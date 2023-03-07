package com.smedialink.p031ui.wallet.home.p032v2.details;

import com.iMe.i_staking.StakingInteractor;
import com.smedialink.manager.common.FeatureAvailableManager$Token;
import com.smedialink.manager.wallet.create.WalletCreateManager;
import com.smedialink.manager.wallet.create.WalletCreateManagerView;
import com.smedialink.mapper.staking.StakingDetailedMetadataUiMappingKt;
import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.model.staking.StakingAnnualPercentageMode;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingProgrammeStatus;
import com.smedialink.model.statistic.StatisticDiagramModel;
import com.smedialink.model.wallet.details.TokenDetailsArgs;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import com.smedialink.storage.domain.model.staking.StakingDetailedMetadata;
import com.smedialink.storage.domain.model.staking.StakingDetailedStats;
import com.smedialink.storage.domain.model.staking.StakingRules;
import com.smedialink.storage.domain.model.staking.StakingValues;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.extentions.model.TokenInfoExtKt;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.smedialink.utils.extentions.model.wallet.BinanceTokenBalanceExtKt;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import com.smedialink.utils.helper.wallet.SwapHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: WalletTokenDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter */
/* loaded from: classes3.dex */
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
    private final Lazy tokenCode$delegate;
    private final WalletCreateManager walletCreateManager;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAccountLevelInfo$lambda-3  reason: not valid java name */
    public static final void m1649loadAccountLevelInfo$lambda3(AccountLevelInformation accountLevelInformation) {
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
        lazy = LazyKt__LazyJVMKt.lazy(new WalletTokenDetailsPresenter$tokenCode$2(this));
        this.tokenCode$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new WalletTokenDetailsPresenter$horizontalActionButtonItems$2(this));
        this.horizontalActionButtonItems$delegate = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenCode getTokenCode() {
        return (TokenCode) this.tokenCode$delegate.getValue();
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
        startAccountLevelInformationAction(new Callbacks$Callback1() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda2
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletTokenDetailsPresenter.m1652startAccountLevelDialog$lambda0(WalletTokenDetailsPresenter.this, (AccountLevelInformation) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startAccountLevelDialog$lambda-0  reason: not valid java name */
    public static final void m1652startAccountLevelDialog$lambda0(WalletTokenDetailsPresenter this$0, AccountLevelInformation accountLevelInfo) {
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
        Observable<Result<Boolean>> observeOn = this.accountLevelInteractor.changeLevelVisibility(z).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletTokenDetailsPresenter.this.resourceManager;
                    ((WalletTokenDetailsView) WalletTokenDetailsPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void startTokenDistributionDialog(BinanceTokenBalanceInfo token) {
        List listOf;
        Intrinsics.checkNotNullParameter(token, "token");
        String totalBalanceText = BinanceTokenBalanceExtKt.getTotalBalanceText(token);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new StatisticDiagramModel.DiagramItem[]{new StatisticDiagramModel.DiagramItem(this.resourceManager.getString(C3158R.string.binance_token_details_distribution_spot), "statisticChartLine_blue", token.getSpot().getTotal()), new StatisticDiagramModel.DiagramItem(this.resourceManager.getString(C3158R.string.binance_token_details_distribution_margin), "statisticChartLine_golden", token.getMargin().getTotal())});
        ((WalletTokenDetailsView) getViewState()).showStatisticDialog(new StatisticDiagramModel(totalBalanceText, listOf));
    }

    public final void reload() {
        if (this.args instanceof TokenDetailsArgs.Staking) {
            loadStakingDetailedMetadata();
        } else {
            ((WalletTokenDetailsView) getViewState()).showRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        attachViewState((WalletCreateManagerView) viewState);
        setupWithTokenType(this.args);
        setupHorizontalActionButtons();
        if (this.args instanceof TokenDetailsArgs.Staking) {
            loadStakingDetailedMetadata();
            listenEvents();
        } else if (getTokenCode().isLime()) {
            loadAccountLevelInfo$default(this, false, null, 3, null);
        }
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
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
        ((WalletTokenDetailsView) getViewState()).setupRankBadge((this.args instanceof TokenDetailsArgs.Crypto) && getTokenCode().isLime() && !this.cryptoPreferenceHelper.getCryptoHiddenBalance(), this.cryptoPreferenceHelper.getAccountLevelMetadata().getLevel());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadStakingDetailedMetadata() {
        TokenDetailsArgs tokenDetailsArgs = this.args;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            Observable<Result<StakingDetailedMetadata>> observeOn = this.stakingInteractor.getStakingDetails(((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails().getId()).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    RxEventBus rxEventBus;
                    TokenDetailsArgs tokenDetailsArgs2;
                    TokenDetailsArgs tokenDetailsArgs3;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        rxEventBus = WalletTokenDetailsPresenter.this.rxEventBus;
                        rxEventBus.publish(DomainRxEvents.RefreshTransactions.INSTANCE);
                        ((WalletTokenDetailsView) WalletTokenDetailsPresenter.this.getViewState()).showRefreshing(false);
                        Result.Success success = (Result.Success) result;
                        WalletTokenDetailsPresenter.this.stakingMetadata = (StakingDetailedMetadata) success.getData();
                        tokenDetailsArgs2 = WalletTokenDetailsPresenter.this.args;
                        ((TokenDetailsArgs.Staking) tokenDetailsArgs2).setStakingDetails(StakingDetailedMetadataUiMappingKt.mapToUi((StakingDetailedMetadata) success.getData()));
                        WalletTokenDetailsPresenter walletTokenDetailsPresenter = WalletTokenDetailsPresenter.this;
                        tokenDetailsArgs3 = walletTokenDetailsPresenter.args;
                        walletTokenDetailsPresenter.setupStakingDetailsScreen(((TokenDetailsArgs.Staking) tokenDetailsArgs3).getStakingDetails());
                        WalletTokenDetailsPresenter.this.setupHorizontalActionButtons();
                    } else if (result instanceof Result.Loading) {
                        ((WalletTokenDetailsView) WalletTokenDetailsPresenter.this.getViewState()).showRefreshing(true);
                    } else if (result instanceof Result.Error) {
                        ((WalletTokenDetailsView) WalletTokenDetailsPresenter.this.getViewState()).showRefreshing(false);
                        ErrorModel error = ((Result.Error) result).getError();
                        resourceManager = WalletTokenDetailsPresenter.this.resourceManager;
                        ((WalletTokenDetailsView) WalletTokenDetailsPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView = BaseView.this;
                    if (baseView == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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
            callbacks$Callback1 = WalletTokenDetailsPresenter$$ExternalSyntheticLambda3.INSTANCE;
        }
        walletTokenDetailsPresenter.loadAccountLevelInfo(z, callbacks$Callback1);
    }

    private final void loadAccountLevelInfo(final boolean z, final Callbacks$Callback1<AccountLevelInformation> callbacks$Callback1) {
        Observable compose = AccountLevelInteractor.getAccountLevelInformation$default(this.accountLevelInteractor, 0L, 1, null).observeOn(this.schedulersProvider.mo707ui()).compose(new ObservableTransformer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                ObservableSource m1650loadAccountLevelInfo$lambda4;
                m1650loadAccountLevelInfo$lambda4 = WalletTokenDetailsPresenter.m1650loadAccountLevelInfo$lambda4(z, this, observable);
                return m1650loadAccountLevelInfo$lambda4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(compose, "accountLevelInteractor\n …ervable\n                }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = compose.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletTokenDetailsPresenter.this.accountLevelInformation = (AccountLevelInformation) success.getData();
                    WalletTokenDetailsPresenter.this.setupRankBadge();
                    callbacks$Callback1.invoke(success.getData());
                } else if ((result instanceof Result.Error) && z) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletTokenDetailsPresenter.this.resourceManager;
                    ((WalletTokenDetailsView) WalletTokenDetailsPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAccountLevelInfo$lambda-4  reason: not valid java name */
    public static final ObservableSource m1650loadAccountLevelInfo$lambda4(boolean z, WalletTokenDetailsPresenter this$0, Observable observable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(observable, "observable");
        if (z) {
            T viewState = this$0.getViewState();
            Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
            return RxExtKt.withLoadingDialog$default(observable, (BaseView) viewState, false, 2, (Object) null);
        }
        return observable;
    }

    private final boolean isSendAvailable(TokenCode tokenCode) {
        return tokenCode.isCryptoTokens();
    }

    private final boolean isReceiveAvailable(TokenCode tokenCode) {
        return tokenCode.isCryptoTokens();
    }

    private final boolean isBuyAvailable(TokenCode tokenCode, NetworkType networkType) {
        return FeatureAvailableManager$Token.INSTANCE.isPurchaseAvailable(tokenCode, networkType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startReceiveScreen(TokenCode tokenCode, NetworkType networkType) {
        ((WalletTokenDetailsView) getViewState()).openReceiveScreen(tokenCode, getCryptoAddress(), networkType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBuyScreen(NetworkType networkType) {
        ((WalletTokenDetailsView) getViewState()).openBuyScreen(new TokenBuyCoordinatorArgs(getTokenCode(), SwapHelper.INSTANCE.resolveSwapProtocolByNetwork(networkType), null, 4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startSendScreen(NetworkType networkType) {
        if (getTokenCode().isCryptoTokens()) {
            ((WalletTokenDetailsView) getViewState()).openSendScreen(getTokenCode(), networkType);
        } else {
            ((WalletTokenDetailsView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.wallet_feature_not_available));
        }
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
        StakingDetailedStats stats;
        StakingDetailedStats stats2;
        String stringPlus;
        String string;
        BigDecimal asToken;
        String str;
        StakingProgrammeStatus stakingProgrammeStatus;
        BigDecimal asUsd;
        BigDecimal asToken2;
        BigDecimal asUsd2;
        TokenInfo map = TokenInfo.Companion.map(stakingDetailsItem.getTokenTicker());
        StakingDetailedMetadata stakingDetailedMetadata = this.stakingMetadata;
        Float f = null;
        StakingValues profit = (stakingDetailedMetadata == null || (stats = stakingDetailedMetadata.getStats()) == null) ? null : stats.getProfit();
        StakingDetailedMetadata stakingDetailedMetadata2 = this.stakingMetadata;
        StakingValues debt = (stakingDetailedMetadata2 == null || (stats2 = stakingDetailedMetadata2.getStats()) == null) ? null : stats2.getDebt();
        BigDecimal asToken3 = debt == null ? null : debt.getAsToken();
        if (asToken3 == null) {
            asToken3 = stakingDetailsItem.getDebt();
        }
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        Number parseFormattedString = balanceFormatter.parseFormattedString(stakingDetailsItem.getFormattedAPY());
        Number parseFormattedString2 = balanceFormatter.parseFormattedString(stakingDetailsItem.getFormattedAPR());
        if (NumberExtKt.isZero(parseFormattedString) || stakingDetailsItem.getAnnualPercentageMode() == StakingAnnualPercentageMode.APY) {
            stringPlus = Intrinsics.stringPlus(stakingDetailsItem.getFormattedAPY(), "%");
            string = this.resourceManager.getString(C3158R.string.staking_details_apy);
        } else if (NumberExtKt.isZero(parseFormattedString2) || stakingDetailsItem.getAnnualPercentageMode() == StakingAnnualPercentageMode.APR) {
            stringPlus = Intrinsics.stringPlus(stakingDetailsItem.getFormattedAPR(), "%");
            string = this.resourceManager.getString(C3158R.string.staking_details_apr);
        } else {
            stringPlus = this.resourceManager.getString(C3158R.string.staking_details_apy_apr_values, stakingDetailsItem.getFormattedAPR(), stakingDetailsItem.getFormattedAPY());
            string = this.resourceManager.getString(C3158R.string.staking_details_apy_apr);
        }
        String str2 = stringPlus;
        String str3 = string;
        boolean z = (profit == null || (asToken = profit.getAsToken()) == null || NumberExtKt.isZero(asToken)) ? false : true;
        if (z) {
            TokenBalance copy$default = TokenBalance.copy$default(TokenBalance.Companion.createEmptyBalanceFor(map), null, NumberExtKt.orZero((profit == null || (asToken2 = profit.getAsToken()) == null) ? null : Double.valueOf(asToken2.doubleValue())), NumberExtKt.orZero((profit == null || (asUsd2 = profit.getAsUsd()) == null) ? null : Float.valueOf(asUsd2.floatValue())), null, null, null, 57, null);
            ResourceManager resourceManager = this.resourceManager;
            str = resourceManager.getString(C3158R.string.staking_details_profit_value, TokenBalanceExtKt.getTotalBalanceShortText(copy$default, resourceManager), TokenBalanceExtKt.getDollarsBalanceText(copy$default, this.resourceManager));
        } else {
            str = "-";
        }
        String str4 = str;
        if (!stakingDetailsItem.getHasEnoughFunds()) {
            stakingProgrammeStatus = StakingProgrammeStatus.SHORT_OF_FUNDS;
        } else if (StringExtKt.parseISODate(stakingDetailsItem.getEndsAtISO()) > DateExtKt.now()) {
            stakingProgrammeStatus = StakingProgrammeStatus.ACTIVE;
        } else {
            stakingProgrammeStatus = asToken3.compareTo(BigDecimal.ZERO) > 0 ? StakingProgrammeStatus.WITHDRAWAL_AVAILABLE : StakingProgrammeStatus.CLOSED;
        }
        StakingProgrammeStatus stakingProgrammeStatus2 = stakingProgrammeStatus;
        WalletTokenDetailsView walletTokenDetailsView = (WalletTokenDetailsView) getViewState();
        int logo = TokenInfoExtKt.getLogo(map, stakingDetailsItem.getNetworkType());
        String string2 = this.resourceManager.getString(map.getFullName());
        TokenBalance createEmptyBalanceFor = TokenBalance.Companion.createEmptyBalanceFor(map);
        double orZero = NumberExtKt.orZero(Double.valueOf(asToken3.doubleValue()));
        if (debt != null && (asUsd = debt.getAsUsd()) != null) {
            f = Float.valueOf(asUsd.floatValue());
        }
        walletTokenDetailsView.setupStakingDetailsScreen(logo, string2, TokenBalanceExtKt.getTotalBalanceShortText(TokenBalance.copy$default(createEmptyBalanceFor, null, orZero, NumberExtKt.orZero(f), null, null, null, 57, null), this.resourceManager), str3, str2, str4, z, stakingProgrammeStatus2);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.StakingProgrammesRefresh.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.StakingProgrammesRefresh stakingProgrammesRefresh = (DomainRxEvents.StakingProgrammesRefresh) it;
                WalletTokenDetailsPresenter.this.loadStakingDetailedMetadata();
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final String getCryptoAddress() {
        Wallet wallet = this.cryptoAccessManager.getWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType());
        String address = wallet == null ? null : wallet.getAddress();
        return address == null ? "" : address;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenCode resolveTokenCode(TokenDetailsArgs tokenDetailsArgs) {
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            return TokenCode.UNKNOWN;
        }
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            return ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance().getCode();
        }
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            return TokenCode.Companion.map(((TokenDetailsArgs.Staking) tokenDetailsArgs).getStakingDetails().getTokenTicker());
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<HorizontalActionButtonItem> resolveAvailableTokenActions(TokenDetailsArgs tokenDetailsArgs) {
        StakingRules rules;
        StakingDetailedStats stats;
        StakingRules rules2;
        StakingRules rules3;
        List<HorizontalActionButtonItem> listOf;
        List<HorizontalActionButtonItem> listOfNotNull;
        List<HorizontalActionButtonItem> listOfNotNull2;
        if (tokenDetailsArgs instanceof TokenDetailsArgs.Binance) {
            HorizontalActionButtonItem[] horizontalActionButtonItemArr = new HorizontalActionButtonItem[3];
            TokenDetailsArgs.Binance binance = (TokenDetailsArgs.Binance) tokenDetailsArgs;
            horizontalActionButtonItemArr[0] = binance.getToken().getConvertible() ? new HorizontalActionButtonItem(C3158R.C3160drawable.fork_ic_exchange_27, C3158R.string.wallet_token_details_transactions_swap, false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$1(this, tokenDetailsArgs), 4, null) : null;
            horizontalActionButtonItemArr[1] = binance.getToken().getReplenishNetworks().isEmpty() ^ true ? new HorizontalActionButtonItem(C3158R.C3160drawable.fork_ic_buy_28, C3158R.string.wallet_token_details_action_buy, false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$2(this, tokenDetailsArgs), 4, null) : null;
            horizontalActionButtonItemArr[2] = binance.getToken().getReceivable() ? new HorizontalActionButtonItem(C3158R.C3160drawable.fork_ic_ask_transfer, C3158R.string.wallet_token_details_action_receive, false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$3(this, tokenDetailsArgs), 4, null) : null;
            listOfNotNull2 = CollectionsKt__CollectionsKt.listOfNotNull(horizontalActionButtonItemArr);
            return listOfNotNull2;
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Crypto) {
            HorizontalActionButtonItem[] horizontalActionButtonItemArr2 = new HorizontalActionButtonItem[3];
            horizontalActionButtonItemArr2[0] = isSendAvailable(getTokenCode()) ? new HorizontalActionButtonItem(C3158R.C3160drawable.msg_send, C3158R.string.wallet_token_details_details_action_send, false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$4(this, tokenDetailsArgs), 4, null) : null;
            horizontalActionButtonItemArr2[1] = isBuyAvailable(getTokenCode(), ((TokenDetailsArgs.Crypto) tokenDetailsArgs).getToken().getBalance().getNetworkType()) ? new HorizontalActionButtonItem(C3158R.C3160drawable.fork_ic_buy_28, C3158R.string.wallet_token_details_action_buy, false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$5(this, tokenDetailsArgs), 4, null) : null;
            horizontalActionButtonItemArr2[2] = isReceiveAvailable(getTokenCode()) ? new HorizontalActionButtonItem(C3158R.C3160drawable.fork_ic_ask_transfer, C3158R.string.wallet_token_details_action_receive, false, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$6(this, tokenDetailsArgs), 4, null) : null;
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(horizontalActionButtonItemArr2);
            return listOfNotNull;
        } else if (tokenDetailsArgs instanceof TokenDetailsArgs.Staking) {
            HorizontalActionButtonItem[] horizontalActionButtonItemArr3 = new HorizontalActionButtonItem[4];
            int i = C3158R.C3160drawable.fork_ic_buy_28;
            int i2 = C3158R.string.staking_details_replenish;
            StakingDetailedMetadata stakingDetailedMetadata = this.stakingMetadata;
            horizontalActionButtonItemArr3[0] = new HorizontalActionButtonItem(i, i2, (stakingDetailedMetadata == null || (rules = stakingDetailedMetadata.getRules()) == null || !rules.getCanDeposit()) ? false : true, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$7(this, tokenDetailsArgs));
            int i3 = C3158R.C3160drawable.fork_ic_ask_transfer;
            int i4 = C3158R.string.staking_details_claim;
            StakingDetailedMetadata stakingDetailedMetadata2 = this.stakingMetadata;
            horizontalActionButtonItemArr3[1] = new HorizontalActionButtonItem(i3, i4, (stakingDetailedMetadata2 == null || (stats = stakingDetailedMetadata2.getStats()) == null || !stats.isParticipated()) ? false : true, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$8(this, tokenDetailsArgs));
            int i5 = C3158R.C3160drawable.fork_ic_withdraw;
            int i6 = C3158R.string.staking_details_withdraw;
            StakingDetailedMetadata stakingDetailedMetadata3 = this.stakingMetadata;
            horizontalActionButtonItemArr3[2] = new HorizontalActionButtonItem(i5, i6, (stakingDetailedMetadata3 == null || (rules2 = stakingDetailedMetadata3.getRules()) == null || (!rules2.getCanWithdrawSafely() && !rules2.getCanWithdrawImmediately())) ? false : true, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$10(this, tokenDetailsArgs));
            int i7 = C3158R.C3160drawable.fork_wallet_staking_dashboard_calculator;
            int i8 = C3158R.string.staking_dashboard_calculator;
            StakingDetailedMetadata stakingDetailedMetadata4 = this.stakingMetadata;
            horizontalActionButtonItemArr3[3] = new HorizontalActionButtonItem(i7, i8, (stakingDetailedMetadata4 == null || (rules3 = stakingDetailedMetadata4.getRules()) == null || !rules3.getCanDeposit()) ? false : true, new WalletTokenDetailsPresenter$resolveAvailableTokenActions$11(this, tokenDetailsArgs));
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) horizontalActionButtonItemArr3);
            return listOf;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openStakingReplenishCheckingAccountLevel(final StakingDetailsItem stakingDetailsItem) {
        startAccountLevelInformationAction(new Callbacks$Callback1() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletTokenDetailsPresenter.m1651openStakingReplenishCheckingAccountLevel$lambda10(StakingDetailsItem.this, this, (AccountLevelInformation) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: openStakingReplenishCheckingAccountLevel$lambda-10  reason: not valid java name */
    public static final void m1651openStakingReplenishCheckingAccountLevel$lambda10(StakingDetailsItem stakingDetailsItem, WalletTokenDetailsPresenter this$0, AccountLevelInformation accountLevelInformation) {
        Intrinsics.checkNotNullParameter(stakingDetailsItem, "$stakingDetailsItem");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (stakingDetailsItem.getMinimalRank().isReached(accountLevelInformation.getLevel())) {
            ((WalletTokenDetailsView) this$0.getViewState()).openStakingReplenishScreen(stakingDetailsItem);
        } else {
            ((WalletTokenDetailsView) this$0.getViewState()).showLevelRequiredDialog(stakingDetailsItem.getMinimalRank());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBinanceSwapScreen(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        BinanceUserInfo info = this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
        if (Intrinsics.areEqual(info == null ? null : Boolean.valueOf(info.isVerified()), Boolean.FALSE)) {
            ((WalletTokenDetailsView) getViewState()).showRequiredVerifyDialog();
        } else {
            ((WalletTokenDetailsView) getViewState()).openBinanceSwapScreen(SelectableMappingKt.mapToSelectable(binanceTokenBalanceInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBinanceReplenishScreen(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        if (!this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            ((WalletTokenDetailsView) getViewState()).showRequiredWalletCreatedDialog(new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsPresenter$$ExternalSyntheticLambda4
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletTokenDetailsPresenter.m1653startBinanceReplenishScreen$lambda11(WalletTokenDetailsPresenter.this);
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
            ((WalletTokenDetailsView) getViewState()).openBinanceReplenishScreen(TokenCode.Companion.map(binanceTokenBalanceInfo.getAsset()), resolveNetworkForReplenish(binanceTokenBalanceInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startBinanceReplenishScreen$lambda-11  reason: not valid java name */
    public static final void m1653startBinanceReplenishScreen$lambda11(WalletTokenDetailsPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startChooseWalletOptionsFlow(this$0.cryptoPreferenceHelper.getCurrentBlockchainType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startBinanceReceiveScreen(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        ((WalletTokenDetailsView) getViewState()).openBinanceReceiveScreen(SelectableMappingKt.mapToSelectable(binanceTokenBalanceInfo));
    }

    private final NetworkType resolveNetworkForReplenish(BinanceTokenBalanceInfo binanceTokenBalanceInfo) {
        Object obj;
        boolean z;
        Iterator<T> it = binanceTokenBalanceInfo.getReplenishNetworks().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((NetworkType) obj) == this.cryptoPreferenceHelper.getNetworkType()) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                break;
            }
        }
        NetworkType networkType = (NetworkType) obj;
        return networkType == null ? (NetworkType) CollectionsKt.first((List<? extends Object>) binanceTokenBalanceInfo.getReplenishNetworks()) : networkType;
    }
}
