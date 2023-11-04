package com.iMe.p030ui.wallet.staking.transaction;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.manager.common.FeatureAvailableManager$Token;
import com.iMe.mapper.staking.StakingTransactionActionToFeeUiMappingKt;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.staking.StakingScreenType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingApprovalInfo;
import com.iMe.storage.domain.model.staking.StakingApprovalTokenType;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingTokenApprovalStatus;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.model.staking.StakingTransactionArgs;
import com.iMe.storage.domain.model.staking.StakingValues;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extensions.TokenExtKt;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.math.BigDecimal;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import timber.log.Timber;
/* compiled from: StakingTransactionPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter */
/* loaded from: classes4.dex */
public final class StakingTransactionPresenter extends BasePresenter<StakingTransactionView> {
    private final PublishSubject<String> amountSubject;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private BigDecimal currentAmount;
    private TransactionStep currentStep;
    private TokenBalance feeTokenBalance;
    private boolean isSafeWithdrawalSelected;
    private final Double presetAmount;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final Lazy safeWithdrawalReceiveTimeText$delegate;
    private final SchedulersProvider schedulersProvider;
    private final StakingScreenType screenType;
    private final StakingAnnualPercentageData stakingAnnualPercentageData;
    private final StakingDetailsItem stakingDetails;
    private final StakingInteractor stakingInteractor;
    private StakingTransactionAction stakingTransactionAction;
    private final TokenDetailed token;
    private TokenBalance tokenBalance;
    private Disposable tokensApprovalStatusUpdateDisposable;
    private final WalletInteractor walletInteractor;
    private String wrappedAction;

    /* compiled from: StakingTransactionPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StakingScreenType.values().length];
            try {
                iArr[StakingScreenType.STAKING_WITHDRAW_SCREEN_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StakingScreenType.STAKING_REPLENISH_SCREEN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StakingScreenType.STAKING_PROFIT_SCREEN_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public StakingTransactionPresenter(Double d, StakingScreenType screenType, StakingDetailsItem stakingDetailsItem, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor, WalletInteractor walletInteractor) {
        Lazy lazy;
        StakingAnnualPercentageData stakingAnnualPercentageData;
        BigDecimal ZERO;
        TokenItem feeTokenItem;
        TokenDetailed mapToDomain;
        TokenItem tokenItem;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.presetAmount = d;
        this.screenType = screenType;
        this.stakingDetails = stakingDetailsItem;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.walletInteractor = walletInteractor;
        TokenBalance tokenBalance = null;
        TokenDetailed mapToDomain2 = (stakingDetailsItem == null || (tokenItem = stakingDetailsItem.getTokenItem()) == null) ? null : TokenUiMappingKt.mapToDomain(tokenItem);
        this.token = mapToDomain2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                String safeWithdrawalDurationText;
                safeWithdrawalDurationText = StakingTransactionPresenter.this.getSafeWithdrawalDurationText();
                return safeWithdrawalDurationText;
            }
        });
        this.safeWithdrawalReceiveTimeText$delegate = lazy;
        if (stakingDetailsItem != null) {
            String formattedAPR = stakingDetailsItem.getFormattedAPR();
            String formattedAPY = stakingDetailsItem.getFormattedAPY();
            String bigDecimal = stakingDetailsItem.getCompoundAccrualThreshold().toString();
            Intrinsics.checkNotNullExpressionValue(bigDecimal, "compoundAccrualThreshold.toString()");
            stakingAnnualPercentageData = new StakingAnnualPercentageData(formattedAPR, formattedAPY, bigDecimal);
        } else {
            stakingAnnualPercentageData = null;
        }
        this.stakingAnnualPercentageData = stakingAnnualPercentageData;
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.amountSubject = create;
        if (d != null) {
            ZERO = new BigDecimal(String.valueOf(d.doubleValue()));
        } else {
            ZERO = BigDecimal.ZERO;
            Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        }
        this.currentAmount = ZERO;
        this.wrappedAction = "";
        Disposable disposed = Disposables.disposed();
        Intrinsics.checkNotNullExpressionValue(disposed, "disposed()");
        this.tokensApprovalStatusUpdateDisposable = disposed;
        this.isSafeWithdrawalSelected = stakingDetailsItem != null ? stakingDetailsItem.getCanWithdrawSafely() : false;
        this.tokenBalance = mapToDomain2 != null ? TokenBalance.Companion.createEmptyBalanceFor(mapToDomain2) : null;
        this.currentStep = TransactionStep.Loading.INSTANCE;
        if (stakingDetailsItem != null && (feeTokenItem = stakingDetailsItem.getFeeTokenItem()) != null && (mapToDomain = TokenUiMappingKt.mapToDomain(feeTokenItem)) != null) {
            tokenBalance = TokenBalance.Companion.createEmptyBalanceFor(mapToDomain);
        }
        this.feeTokenBalance = tokenBalance;
    }

    private final String getSafeWithdrawalReceiveTimeText() {
        return (String) this.safeWithdrawalReceiveTimeText$delegate.getValue();
    }

    public final void startStakingConditionsDialog() {
        StakingTransactionView stakingTransactionView = (StakingTransactionView) getViewState();
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        stakingTransactionView.showStakingConditionsDialog(stakingDetailsItem);
    }

    public final void onActionClick() {
        TransactionStep transactionStep = this.currentStep;
        if (transactionStep instanceof TransactionStep.ApprovalNeeded) {
            confirmTokenApprovalExecution(((TransactionStep.ApprovalNeeded) transactionStep).getTokenTicker());
        } else if (Intrinsics.areEqual(transactionStep, new TransactionStep.StakingExecute(this.screenType))) {
            confirmExecution();
        } else if (Intrinsics.areEqual(transactionStep, TransactionStep.RetryLoading.INSTANCE)) {
            loadInitialData();
        }
    }

    public final void setMaxAmount() {
        StakingTransactionView stakingTransactionView = (StakingTransactionView) getViewState();
        TokenBalance tokenBalance = this.tokenBalance;
        String plainString = new BigDecimal(String.valueOf(NumberExtKt.orZero(tokenBalance != null ? Double.valueOf(tokenBalance.getTotal()) : null))).toPlainString();
        Intrinsics.checkNotNullExpressionValue(plainString, "tokenBalance?.total.orZe…Decimal().toPlainString()");
        stakingTransactionView.setupAmount(plainString);
    }

    public final void switchSafeWithdrawal(boolean z) {
        this.isSafeWithdrawalSelected = z;
        updateWithdrawalFee();
        if (this.currentStep instanceof TransactionStep.StakingExecute) {
            prepareAction();
        }
    }

    public final void onAmountChanged(String amountText) {
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        this.amountSubject.onNext(amountText);
        if (this.currentStep instanceof TransactionStep.StakingExecute) {
            setCurrentStep(new TransactionStep.Idle(this.screenType.getButtonTextId()));
        }
    }

    public final void onReplenishClick() {
        TokenDetailed token;
        StakingTransactionView stakingTransactionView = (StakingTransactionView) getViewState();
        TokenBalance tokenBalance = this.tokenBalance;
        if (tokenBalance == null || (token = tokenBalance.getToken()) == null) {
            return;
        }
        stakingTransactionView.openBuyScreen(new TokenBuyCoordinatorArgs(null, token, SwapProtocol.Companion.resolveByNetworkId(this.cryptoPreferenceHelper.getNetworkId()), null, 9, null));
    }

    public final void onWithdrawHelpClick() {
        ((StakingTransactionView) getViewState()).showWithdrawHelpAlert(getWithdrawalHelpAlertText());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        String plainString;
        subscribeToAmountSubject();
        StakingTransactionView stakingTransactionView = (StakingTransactionView) getViewState();
        Double d = this.presetAmount;
        String str = null;
        if (d != null && (plainString = new BigDecimal(String.valueOf(d.doubleValue())).toPlainString()) != null) {
            str = StringExtKt.stripZeros$default(plainString, (char) 0, 1, null);
        }
        if (str == null) {
            str = "";
        }
        stakingTransactionView.setupAmount(str);
        loadInitialData();
        int i = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i == 1) {
            setupSafeWithdrawal();
            updateWithdrawalFee();
        } else if (i != 2) {
        } else {
            ((StakingTransactionView) getViewState()).renderStakingPercentage(this.stakingAnnualPercentageData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCurrentStep(TransactionStep transactionStep) {
        this.currentStep = transactionStep;
        ((StakingTransactionView) getViewState()).updateStakingStep(this.currentStep);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateWithdrawalFee() {
        ((StakingTransactionView) getViewState()).updateWithdrawalFee(getWithdrawalFeeText(), getWithdrawalTimeText());
    }

    private final void setupSafeWithdrawal() {
        ((StakingTransactionView) getViewState()).setupSafeWithdrawal(this.isSafeWithdrawalSelected, this.resourceManager.getString(C3634R.string.staking_withdraw_safe_withdrawal_help_alert_title), getSafeWithdrawalHelpAlertText());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getCompoundThresholdProgress(BigDecimal bigDecimal) {
        Float f;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem != null) {
            BigDecimal add = stakingDetailsItem.getImpact().add(bigDecimal);
            Intrinsics.checkNotNullExpressionValue(add, "this.add(other)");
            f = Float.valueOf(((BigDecimal) ComparisonsKt.minOf(add.divide(stakingDetailsItem.getCompoundAccrualThreshold()), new BigDecimal(1))).floatValue());
        } else {
            f = null;
        }
        return NumberExtKt.orZero(f);
    }

    private final void loadInitialData() {
        setCurrentStep(TransactionStep.Loading.INSTANCE);
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem != null) {
            updateAvailableBalance(stakingDetailsItem);
            checkTokensApproval(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void checkTokensApproval$default(StakingTransactionPresenter stakingTransactionPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        stakingTransactionPresenter.checkTokensApproval(z);
    }

    private final void checkTokensApproval(final boolean z) {
        Observable<Long> interval;
        final StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        if (z) {
            interval = Observable.just(Boolean.TRUE);
        } else {
            interval = Observable.interval(15L, TimeUnit.SECONDS);
        }
        final Function1<?, ObservableSource<? extends Result<? extends StakingApprovalInfo>>> function1 = new Function1<?, ObservableSource<? extends Result<? extends StakingApprovalInfo>>>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* renamed from: invoke */
            public final ObservableSource<? extends Result<? extends StakingApprovalInfo>> invoke2(Object obj) {
                StakingInteractor stakingInteractor;
                stakingInteractor = StakingTransactionPresenter.this.stakingInteractor;
                return stakingInteractor.getApprovalInfo(stakingDetailsItem.getId());
            }
        };
        Observable observeOn = interval.flatMap(new Function() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource checkTokensApproval$lambda$4;
                checkTokensApproval$lambda$4 = StakingTransactionPresenter.checkTokensApproval$lambda$4(Function1.this, obj);
                return checkTokensApproval$lambda$4;
            }
        }).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun checkTokensA…y { autoDispose() }\n    }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends StakingApprovalInfo>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingApprovalInfo> result) {
                m1826invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1826invoke(Result<? extends StakingApprovalInfo> it) {
                ResourceManager resourceManager;
                Disposable disposable;
                StakingScreenType stakingScreenType;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingApprovalInfo> result = it;
                if (result instanceof Result.Success) {
                    StakingApprovalInfo stakingApprovalInfo = (StakingApprovalInfo) ((Result.Success) result).getData();
                    StakingTokenApprovalStatus token = stakingApprovalInfo.getToken();
                    StakingTokenApprovalStatus stakingTokenApprovalStatus = StakingTokenApprovalStatus.NONE;
                    if (token == stakingTokenApprovalStatus) {
                        this.prepareTokenApproval(StakingApprovalTokenType.STAKING);
                    } else if (stakingApprovalInfo.getFeeToken() == stakingTokenApprovalStatus) {
                        this.prepareTokenApproval(StakingApprovalTokenType.FEE);
                    } else {
                        StakingTokenApprovalStatus token2 = stakingApprovalInfo.getToken();
                        StakingTokenApprovalStatus stakingTokenApprovalStatus2 = StakingTokenApprovalStatus.CONFIRMED;
                        if (token2 != stakingTokenApprovalStatus2 || stakingApprovalInfo.getFeeToken() != stakingTokenApprovalStatus2) {
                            this.setCurrentStep(TransactionStep.ApprovalProcessing.INSTANCE);
                            StakingTransactionPresenter.checkTokensApproval$default(this, false, 1, null);
                            return;
                        }
                        disposable = this.tokensApprovalStatusUpdateDisposable;
                        disposable.dispose();
                        StakingTransactionPresenter stakingTransactionPresenter = this;
                        stakingScreenType = stakingTransactionPresenter.screenType;
                        stakingTransactionPresenter.setCurrentStep(new TransactionStep.Idle(stakingScreenType.getButtonTextId()));
                    }
                } else if (result instanceof Result.Error) {
                    if (z) {
                        this.setCurrentStep(TransactionStep.RetryLoading.INSTANCE);
                    }
                    resourceManager = this.resourceManager;
                    ((StakingTransactionView) this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        this.tokensApprovalStatusUpdateDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource checkTokensApproval$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareTokenApproval(final StakingApprovalTokenType stakingApprovalTokenType) {
        this.tokensApprovalStatusUpdateDisposable.dispose();
        final StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = this.stakingInteractor.sendApprovalPrepare(stakingDetailsItem.getId(), stakingApprovalTokenType).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result) {
                m1831invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1831invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> it) {
                ResourceManager resourceManager;
                TransactionStep.ApprovalNeeded approvalNeeded;
                DialogModel feeDialogModel;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result = it;
                if (result instanceof Result.Success) {
                    Pair pair = (Pair) ((Result.Success) result).getData();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
                    if (stakingTransactionAction != null) {
                        StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                        if (stakingApprovalTokenType == StakingApprovalTokenType.STAKING) {
                            approvalNeeded = new TransactionStep.ApprovalNeeded(stakingDetailsItem.getTokenItem().getTicker());
                        } else {
                            approvalNeeded = new TransactionStep.ApprovalNeeded(stakingDetailsItem.getFeeTokenItem().getTicker());
                        }
                        feeDialogModel = StakingTransactionPresenter.this.getFeeDialogModel();
                        stakingTransactionPresenter2.onActionSuccess(approvalNeeded, StakingTransactionActionToFeeUiMappingKt.mapToUi(stakingTransactionAction, feeDialogModel), (String) pair.getFirst());
                    } else {
                        stakingTransactionAction = null;
                    }
                    stakingTransactionPresenter.stakingTransactionAction = stakingTransactionAction;
                } else if (result instanceof Result.Error) {
                    resourceManager = StakingTransactionPresenter.this.resourceManager;
                    ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void confirmTokenApprovalExecution(String str) {
        ((StakingTransactionView) getViewState()).showConfirmDialog(getApproveConfirmationDialogModel(str), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionPresenter.this.executeTokenApproval();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void executeTokenApproval() {
        StakingTransactionArgs transaction;
        StakingInteractor stakingInteractor = this.stakingInteractor;
        String str = this.wrappedAction;
        StakingTransactionAction stakingTransactionAction = this.stakingTransactionAction;
        if (stakingTransactionAction == null || (transaction = stakingTransactionAction.getTransaction()) == null) {
            return;
        }
        Observable<Result<StakingOperation>> observeOn = stakingInteractor.sendApprovalExecute(str, transaction).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends StakingOperation>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingOperation> result) {
                m1828invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1828invoke(Result<? extends StakingOperation> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingOperation> result = it;
                if (result instanceof Result.Success) {
                    StakingTransactionPresenter.onActionSuccess$default(StakingTransactionPresenter.this, TransactionStep.ApprovalProcessing.INSTANCE, null, null, 6, null);
                    StakingTransactionPresenter.checkTokensApproval$default(StakingTransactionPresenter.this, false, 1, null);
                } else if (result instanceof Result.Error) {
                    resourceManager = StakingTransactionPresenter.this.resourceManager;
                    ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareAction() {
        setCurrentStep(TransactionStep.Loading.INSTANCE);
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = getPrepareActionObservableByScreenType(stakingDetailsItem.getId()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getPrepareActionObservab…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result) {
                m1830invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1830invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> it) {
                StakingScreenType stakingScreenType;
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                ResourceManager resourceManager4;
                ResourceManager resourceManager5;
                ResourceManager resourceManager6;
                StakingScreenType stakingScreenType2;
                DialogModel feeDialogModel;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result = it;
                if (result instanceof Result.Success) {
                    Pair pair = (Pair) ((Result.Success) result).getData();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
                    if (stakingTransactionAction != null) {
                        StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                        stakingScreenType2 = stakingTransactionPresenter2.screenType;
                        TransactionStep.StakingExecute stakingExecute = new TransactionStep.StakingExecute(stakingScreenType2);
                        feeDialogModel = StakingTransactionPresenter.this.getFeeDialogModel();
                        stakingTransactionPresenter2.onActionSuccess(stakingExecute, StakingTransactionActionToFeeUiMappingKt.mapToUi(stakingTransactionAction, feeDialogModel), (String) pair.getFirst());
                    } else {
                        stakingTransactionAction = null;
                    }
                    stakingTransactionPresenter.stakingTransactionAction = stakingTransactionAction;
                } else if (result instanceof Result.Error) {
                    StakingTransactionPresenter stakingTransactionPresenter3 = StakingTransactionPresenter.this;
                    stakingScreenType = stakingTransactionPresenter3.screenType;
                    stakingTransactionPresenter3.setCurrentStep(new TransactionStep.Idle(stakingScreenType.getButtonTextId()));
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        StakingTransactionPresenter.this.runNoEnoughMoneyFlow();
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_FINISHED) {
                        resourceManager6 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showToast(resourceManager6.getString(C3634R.string.staking_replenishment_already_finished));
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_CLAIM_OVERLAP) {
                        resourceManager4 = StakingTransactionPresenter.this.resourceManager;
                        String string = resourceManager4.getString(C3634R.string.staking_profit_error_title);
                        resourceManager5 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showActionError(string, resourceManager5.getString(C3634R.string.staking_profit_overlap_error_description));
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_WITHDRAWAL_OVER_LIMIT) {
                        resourceManager2 = StakingTransactionPresenter.this.resourceManager;
                        String string2 = resourceManager2.getString(C3634R.string.staking_withdraw_error_title);
                        resourceManager3 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showActionError(string2, resourceManager3.getString(C3634R.string.staking_withdraw_over_limit_error_description));
                    } else {
                        resourceManager = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Observable<Result<Pair<String, StakingTransactionAction>>> getPrepareActionObservableByScreenType(long j) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i != 2) {
            if (i == 3) {
                return this.stakingInteractor.sendClaimPrepare(j);
            }
            return this.stakingInteractor.sendWithdrawPrepare(j, this.currentAmount, this.isSafeWithdrawalSelected);
        }
        return this.stakingInteractor.sendDepositPrepare(j, this.currentAmount);
    }

    private final void confirmExecution() {
        ((StakingTransactionView) getViewState()).showConfirmDialog(getSendConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionPresenter.this.executeAction();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void executeAction() {
        StakingTransactionArgs transaction;
        StakingTransactionAction stakingTransactionAction = this.stakingTransactionAction;
        if (stakingTransactionAction == null || (transaction = stakingTransactionAction.getTransaction()) == null) {
            return;
        }
        Observable<Result<StakingOperation>> observeOn = getExecuteActionObservableByScreenType(transaction).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getExecuteActionObservab…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends StakingOperation>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingOperation> result) {
                m1827invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1827invoke(Result<? extends StakingOperation> it) {
                ResourceManager resourceManager;
                StakingScreenType stakingScreenType;
                RxEventBus rxEventBus;
                String successTitle;
                String successMessage;
                StakingValues value;
                BigDecimal asToken;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingOperation> result = it;
                if (result instanceof Result.Success) {
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    stakingScreenType = stakingTransactionPresenter.screenType;
                    StakingTransactionPresenter.onActionSuccess$default(stakingTransactionPresenter, new TransactionStep.Idle(stakingScreenType.getButtonTextId()), null, null, 6, null);
                    rxEventBus = StakingTransactionPresenter.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.StakingProgrammesRefresh.INSTANCE);
                    StakingTransactionView stakingTransactionView = (StakingTransactionView) StakingTransactionPresenter.this.getViewState();
                    successTitle = StakingTransactionPresenter.this.getSuccessTitle();
                    StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                    StakingOperationCost amount = ((StakingOperation) ((Result.Success) result).getData()).getAmount();
                    successMessage = stakingTransactionPresenter2.getSuccessMessage(NumberExtKt.orZero((amount == null || (value = amount.getValue()) == null || (asToken = value.getAsToken()) == null) ? null : Double.valueOf(asToken.doubleValue())));
                    stakingTransactionView.showActionSuccess(successTitle, successMessage);
                } else if (result instanceof Result.Error) {
                    resourceManager = StakingTransactionPresenter.this.resourceManager;
                    ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Observable<Result<StakingOperation>> getExecuteActionObservableByScreenType(StakingTransactionArgs stakingTransactionArgs) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i != 2) {
            if (i == 3) {
                return this.stakingInteractor.sendClaimExecute(this.wrappedAction, stakingTransactionArgs);
            }
            return this.stakingInteractor.sendWithdrawExecute(this.wrappedAction, stakingTransactionArgs);
        }
        return this.stakingInteractor.sendDepositExecute(this.wrappedAction, stakingTransactionArgs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void onActionSuccess$default(StakingTransactionPresenter stakingTransactionPresenter, TransactionStep transactionStep, FeeType feeType, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            feeType = null;
        }
        if ((i & 4) != 0) {
            str = "";
        }
        stakingTransactionPresenter.onActionSuccess(transactionStep, feeType, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onActionSuccess(TransactionStep transactionStep, FeeType feeType, String str) {
        this.wrappedAction = str;
        setCurrentStep(transactionStep);
        ((StakingTransactionView) getViewState()).updateFeeView(feeType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runNoEnoughMoneyFlow() {
        String networkId;
        TokenDetailed tokenDetailed = this.token;
        if (tokenDetailed == null || (networkId = tokenDetailed.getNetworkId()) == null) {
            return;
        }
        ((StakingTransactionView) getViewState()).showNoEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(null, this.token, SwapProtocol.Companion.resolveByNetworkId(networkId), networkId, 1, null));
    }

    private final void updateAvailableBalance(StakingDetailsItem stakingDetailsItem) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i == 1) {
            TokenBalance tokenBalance = this.tokenBalance;
            this.tokenBalance = tokenBalance != null ? tokenBalance.copy((r16 & 1) != 0 ? tokenBalance.total : stakingDetailsItem.getDebt().doubleValue(), (r16 & 2) != 0 ? tokenBalance.totalInFiat : null, (r16 & 4) != 0 ? tokenBalance.rateToFiat : null, (r16 & 8) != 0 ? tokenBalance.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? tokenBalance.token : null) : null;
            showBalance();
        } else if (i == 2) {
            loadBalance();
        } else if (i != 3) {
        } else {
            TokenBalance tokenBalance2 = this.tokenBalance;
            this.tokenBalance = tokenBalance2 != null ? tokenBalance2.copy((r16 & 1) != 0 ? tokenBalance2.total : stakingDetailsItem.getAvailableForClaim(), (r16 & 2) != 0 ? tokenBalance2.totalInFiat : null, (r16 & 4) != 0 ? tokenBalance2.rateToFiat : null, (r16 & 8) != 0 ? tokenBalance2.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? tokenBalance2.token : null) : null;
            showBalance();
            setMaxAmount();
        }
    }

    private final void loadBalance() {
        Token indexedToken;
        WalletInteractor walletInteractor = this.walletInteractor;
        TokenDetailed tokenDetailed = this.token;
        if (tokenDetailed == null || (indexedToken = TokenExtKt.toIndexedToken(tokenDetailed)) == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(walletInteractor, indexedToken, false, this.token.getNetworkId(), 2, null).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1829invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1829invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    StakingTransactionPresenter.this.tokenBalance = (TokenBalance) ((Result.Success) result).getData();
                    StakingTransactionPresenter.this.showBalance();
                } else if (result instanceof Result.Error) {
                    resourceManager = StakingTransactionPresenter.this.resourceManager;
                    ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showBalance() {
        TokenBalance tokenBalance = this.tokenBalance;
        if (tokenBalance != null) {
            ResourceManager resourceManager = this.resourceManager;
            int i = C3634R.string.wallet_swap_process_my_balance;
            ((StakingTransactionView) getViewState()).showBalance(resourceManager.getString(i, BalanceFormatter.format$default(Double.valueOf(tokenBalance.getTotal()), null, 2, null) + ' ' + tokenBalance.getToken().getTicker()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showAmountError(boolean z) {
        ((StakingTransactionView) getViewState()).setupAmountInputErrorState(z, this.resourceManager.getString(C3634R.string.wallet_amount_send_error_insufficient_funds), (FeatureAvailableManager$Token.INSTANCE.isPurchaseAvailable(this.cryptoPreferenceHelper.getNetworkId()) && this.screenType == StakingScreenType.STAKING_REPLENISH_SCREEN_TYPE) ? this.resourceManager.getString(C3634R.string.wallet_token_details_action_buy) : "");
    }

    private final void subscribeToAmountSubject() {
        Observable<String> observeOn = this.amountSubject.observeOn(this.schedulersProvider.mo1011io()).debounce(300L, TimeUnit.MILLISECONDS).observeOn(this.schedulersProvider.mo1010ui());
        final Function1<String, Unit> function1 = new Function1<String, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$subscribeToAmountSubject$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                BigDecimal bigDecimalOrNull;
                TokenBalance tokenBalance;
                float compoundThresholdProgress;
                StakingScreenType stakingScreenType;
                StakingScreenType stakingScreenType2;
                BigDecimal bigDecimal;
                TokenBalance tokenBalance2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                bigDecimalOrNull = StringsKt__StringNumberConversionsJVMKt.toBigDecimalOrNull(it);
                BigDecimal orZero = NumberExtKt.orZero(bigDecimalOrNull);
                tokenBalance = StakingTransactionPresenter.this.tokenBalance;
                boolean z = NumberExtKt.orZero(tokenBalance != null ? new BigDecimal(String.valueOf(tokenBalance.getTotal())) : null).compareTo(orZero) < 0;
                compoundThresholdProgress = StakingTransactionPresenter.this.getCompoundThresholdProgress(orZero);
                ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).updateProgress(compoundThresholdProgress);
                StakingTransactionPresenter.this.showAmountError(z);
                if (!NumberExtKt.isZero(orZero) && !z) {
                    bigDecimal = StakingTransactionPresenter.this.currentAmount;
                    if (!Intrinsics.areEqual(bigDecimal, new BigDecimal(it))) {
                        StakingTransactionPresenter.this.currentAmount = orZero;
                        tokenBalance2 = StakingTransactionPresenter.this.tokenBalance;
                        if (tokenBalance2 != null) {
                            double total = tokenBalance2.getTotal();
                            StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                            if (orZero.doubleValue() <= total) {
                                stakingTransactionPresenter.prepareAction();
                            }
                        }
                    }
                } else {
                    StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                    stakingScreenType = stakingTransactionPresenter2.screenType;
                    stakingTransactionPresenter2.setCurrentStep(new TransactionStep.Idle(stakingScreenType.getButtonTextId()));
                    ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).updateFeeView(null);
                    StakingTransactionPresenter.this.currentAmount = orZero;
                }
                stakingScreenType2 = StakingTransactionPresenter.this.screenType;
                if (stakingScreenType2 == StakingScreenType.STAKING_WITHDRAW_SCREEN_TYPE) {
                    StakingTransactionPresenter.this.updateWithdrawalFee();
                }
            }
        };
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                StakingTransactionPresenter.subscribeToAmountSubject$lambda$19(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun subscribeToA…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToAmountSubject$lambda$19(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final String getWithdrawalFeeText() {
        double immediateWithdrawalFeePercentage;
        TokenBalance copy;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        String str = null;
        if (stakingDetailsItem != null) {
            if (this.isSafeWithdrawalSelected) {
                immediateWithdrawalFeePercentage = stakingDetailsItem.getSafeWithdrawalFeePercentage();
            } else {
                immediateWithdrawalFeePercentage = stakingDetailsItem.getImmediateWithdrawalFeePercentage();
            }
            ResourceManager resourceManager = this.resourceManager;
            int i = C3634R.string.staking_withdraw_fee_value;
            Object[] objArr = new Object[2];
            objArr[0] = BalanceFormatter.formatPercents$default(BalanceFormatter.INSTANCE, Double.valueOf(immediateWithdrawalFeePercentage), 0, 2, null);
            TokenBalance tokenBalance = this.feeTokenBalance;
            if (tokenBalance != null) {
                BigDecimal multiply = this.currentAmount.multiply(new BigDecimal(String.valueOf(immediateWithdrawalFeePercentage / 100)));
                Intrinsics.checkNotNullExpressionValue(multiply, "this.multiply(other)");
                copy = tokenBalance.copy((r16 & 1) != 0 ? tokenBalance.total : multiply.doubleValue(), (r16 & 2) != 0 ? tokenBalance.totalInFiat : null, (r16 & 4) != 0 ? tokenBalance.rateToFiat : null, (r16 & 8) != 0 ? tokenBalance.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? tokenBalance.token : null);
                if (copy != null) {
                    str = TokenBalanceExtKt.getTotalBalanceShortText(copy);
                }
            }
            if (str == null) {
                str = "";
            }
            objArr[1] = str;
            str = resourceManager.getString(i, objArr);
        }
        return str == null ? "" : str;
    }

    private final String getWithdrawalTimeText() {
        return this.isSafeWithdrawalSelected ? getSafeWithdrawalReceiveTimeText() : this.resourceManager.getString(C3634R.string.staking_withdraw_time_immediate);
    }

    private final String getSafeWithdrawalHelpAlertText() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3634R.string.staking_withdraw_safe_withdrawal_help_alert_description;
        Object[] objArr = new Object[2];
        objArr[0] = getWithdrawalTimeText();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        objArr[1] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem != null ? Double.valueOf(stakingDetailsItem.getSafeWithdrawalFeePercentage()) : null)), 0, 2, null);
        return resourceManager.getString(i, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSafeWithdrawalDurationText() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        long orZero = NumberExtKt.orZero(stakingDetailsItem != null ? Long.valueOf(stakingDetailsItem.getSafeWithdrawalDuration()) : null);
        long days = TimeUnit.SECONDS.toDays(orZero);
        if (days >= 1) {
            String formatPluralString = LocaleController.formatPluralString("DaysSchedule", (int) days, new Object[0]);
            Intrinsics.checkNotNullExpressionValue(formatPluralString, "{\n            LocaleCont…onDays.toInt())\n        }");
            return formatPluralString;
        }
        String formatDuration = LocaleController.formatDuration((int) orZero);
        Intrinsics.checkNotNullExpressionValue(formatDuration, "{\n            LocaleCont…econds.toInt())\n        }");
        return formatDuration;
    }

    private final String getWithdrawalHelpAlertText() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3634R.string.staking_withdraw_help_alert;
        Object[] objArr = new Object[3];
        objArr[0] = getWithdrawalTimeText();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        objArr[1] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem != null ? Double.valueOf(stakingDetailsItem.getSafeWithdrawalFeePercentage()) : null)), 0, 2, null);
        StakingDetailsItem stakingDetailsItem2 = this.stakingDetails;
        objArr[2] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem2 != null ? Double.valueOf(stakingDetailsItem2.getImmediateWithdrawalFeePercentage()) : null)), 0, 2, null);
        return resourceManager.getString(i, objArr);
    }

    private final DialogModel getApproveConfirmationDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3634R.string.wallet_swap_process_confirm_approve_alert_title), this.resourceManager.getString(C3634R.string.wallet_swap_process_confirm_approve_alert_description, str), this.resourceManager.getString(C3634R.string.common_cancel), this.resourceManager.getString(C3634R.string.wallet_swap_process_confirm_approve_alert_action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3634R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3634R.string.common_cancel), 6, null);
    }

    private final DialogModel getSendConfirmationDialogModel() {
        return new DialogModel(this.resourceManager.getString(this.screenType.getConfirmTitleTextId()), getConfirmMessage(), this.resourceManager.getString(C3634R.string.common_cancel), this.resourceManager.getString(this.screenType.getButtonTextId()));
    }

    private final String getConfirmMessage() {
        ResourceManager resourceManager = this.resourceManager;
        int confirmMessageTextId = this.screenType.getConfirmMessageTextId();
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(this.currentAmount.doubleValue());
        TokenDetailed tokenDetailed = this.token;
        objArr[0] = BalanceFormatter.format(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
        TokenDetailed tokenDetailed2 = this.token;
        String ticker = tokenDetailed2 != null ? tokenDetailed2.getTicker() : null;
        if (ticker == null) {
            ticker = "";
        }
        objArr[1] = ticker;
        return resourceManager.getString(confirmMessageTextId, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessTitle() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i2 == 2) {
            i = C3634R.string.staking_replenishment_success_title;
        } else if (i2 == 3) {
            i = C3634R.string.staking_profit_success_title;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3634R.string.staking_withdraw_safe_success_title;
        } else {
            i = C3634R.string.staking_withdraw_immediate_success_title;
        }
        return resourceManager.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessMessage(double d) {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i2 == 2) {
            i = C3634R.string.staking_replenishment_success_description;
        } else if (i2 == 3) {
            i = C3634R.string.staking_profit_success_description;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3634R.string.staking_withdraw_safe_success_description;
        } else {
            i = C3634R.string.staking_withdraw_immediate_success_description;
        }
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(d);
        TokenDetailed tokenDetailed = this.token;
        objArr[0] = BalanceFormatter.format(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
        TokenDetailed tokenDetailed2 = this.token;
        String ticker = tokenDetailed2 != null ? tokenDetailed2.getTicker() : null;
        if (ticker == null) {
            ticker = "";
        }
        objArr[1] = ticker;
        return resourceManager.getString(i, objArr);
    }

    /* compiled from: StakingTransactionPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
