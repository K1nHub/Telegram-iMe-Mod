package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.mapper.staking.StakingTransactionActionToFeeUiMappingKt;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingTransactionStep;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.FeeView;
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
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Function;
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
import moxy.InjectViewState;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ManageLinksActivity;
import timber.log.Timber;
/* compiled from: StakingTransactionPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter */
/* loaded from: classes4.dex */
public final class StakingTransactionPresenter extends BasePresenter<StakingTransactionView> {
    private BigDecimal currentAmount;
    private StakingTransactionStep currentStep;
    private TokenBalance feeTokenBalance;
    private FeeView.ChooseFeeType feeType;
    private String forcedAmountText;
    private boolean isSafeWithdrawalSelected;
    private final boolean isSafeWithdrawalVisible;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final Lazy safeWithdrawalReceiveTimeText$delegate;
    private final SchedulersProvider schedulersProvider;
    private final int screenType;
    private final StakingAnnualPercentageData stakingAnnualPercentageData;
    private final StakingDetailsItem stakingDetails;
    private final StakingInteractor stakingInteractor;
    private StakingTransactionAction stakingTransactionAction;
    private final TokenDetailed token;
    private TokenBalance tokenBalance;
    private Disposable tokensApprovalStatusUpdateDisposable;
    private final WalletInteractor walletInteractor;
    private String wrappedAction;

    static {
        new Companion(null);
    }

    public StakingTransactionPresenter(Double d, int i, StakingDetailsItem stakingDetailsItem, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor, WalletInteractor walletInteractor) {
        StakingAnnualPercentageData stakingAnnualPercentageData;
        Lazy lazy;
        BigDecimal ZERO;
        BigDecimal stripTrailingZeros;
        TokenItem feeTokenItem;
        TokenDetailed mapToDomain;
        TokenItem tokenItem;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.screenType = i;
        this.stakingDetails = stakingDetailsItem;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.walletInteractor = walletInteractor;
        String str = null;
        TokenDetailed mapToDomain2 = (stakingDetailsItem == null || (tokenItem = stakingDetailsItem.getTokenItem()) == null) ? null : TokenUiMappingKt.mapToDomain(tokenItem);
        this.token = mapToDomain2;
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
        this.isSafeWithdrawalVisible = stakingDetailsItem != null && stakingDetailsItem.getCanWithdrawSafely() && stakingDetailsItem.getCanWithdrawImmediately();
        this.isSafeWithdrawalSelected = stakingDetailsItem != null ? stakingDetailsItem.getCanWithdrawSafely() : false;
        this.tokenBalance = mapToDomain2 != null ? TokenBalance.Companion.createEmptyBalanceFor(mapToDomain2) : null;
        this.currentStep = StakingTransactionStep.Loading.INSTANCE;
        this.feeTokenBalance = (stakingDetailsItem == null || (feeTokenItem = stakingDetailsItem.getFeeTokenItem()) == null || (mapToDomain = TokenUiMappingKt.mapToDomain(feeTokenItem)) == null) ? null : TokenBalance.Companion.createEmptyBalanceFor(mapToDomain);
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
        if (d != null) {
            ZERO = new BigDecimal(String.valueOf(d.doubleValue()));
        } else {
            ZERO = BigDecimal.ZERO;
            Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        }
        this.currentAmount = ZERO;
        this.wrappedAction = "";
        ZERO = NumberExtKt.isZero(ZERO) ? null : ZERO;
        if (ZERO != null && (stripTrailingZeros = ZERO.stripTrailingZeros()) != null) {
            str = stripTrailingZeros.toPlainString();
        }
        this.forcedAmountText = str;
        Disposable disposed = Disposables.disposed();
        Intrinsics.checkNotNullExpressionValue(disposed, "disposed()");
        this.tokensApprovalStatusUpdateDisposable = disposed;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final StakingAnnualPercentageData getStakingAnnualPercentageData() {
        return this.stakingAnnualPercentageData;
    }

    public final boolean isSafeWithdrawalVisible() {
        return this.isSafeWithdrawalVisible;
    }

    public final String getTokenBalanceShortText() {
        TokenBalance tokenBalance = this.tokenBalance;
        String totalBalanceShortText = tokenBalance != null ? TokenBalanceExtKt.getTotalBalanceShortText(tokenBalance) : null;
        return totalBalanceShortText == null ? "" : totalBalanceShortText;
    }

    public final boolean isSafeWithdrawalSelected() {
        return this.isSafeWithdrawalSelected;
    }

    public final StakingTransactionStep getCurrentStep() {
        return this.currentStep;
    }

    public final FeeView.ChooseFeeType getFeeType() {
        return this.feeType;
    }

    private final String getSafeWithdrawalReceiveTimeText() {
        return (String) this.safeWithdrawalReceiveTimeText$delegate.getValue();
    }

    public final boolean shouldShowApprovalInfoButton() {
        return this.currentStep instanceof StakingTransactionStep.ApprovalNeeded;
    }

    public final String getStakingContractUrl() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        String contractUrl = stakingDetailsItem != null ? stakingDetailsItem.getContractUrl() : null;
        return contractUrl == null ? "" : contractUrl;
    }

    public final float getCompoundThresholdProgress() {
        Float f;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem != null) {
            BigDecimal add = stakingDetailsItem.getImpact().add(this.currentAmount);
            Intrinsics.checkNotNullExpressionValue(add, "this.add(other)");
            f = Float.valueOf(((BigDecimal) ComparisonsKt.minOf(add.divide(stakingDetailsItem.getCompoundAccrualThreshold()), new BigDecimal(1))).floatValue());
        } else {
            f = null;
        }
        return NumberExtKt.orZero(f);
    }

    public final String getWithdrawalFeeText() {
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
            int i = C3419R.string.staking_withdraw_fee_value;
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

    public final String getWithdrawalTimeText() {
        return this.isSafeWithdrawalSelected ? getSafeWithdrawalReceiveTimeText() : this.resourceManager.getString(C3419R.string.staking_withdraw_time_immediate);
    }

    public final String getWithdrawalHelpAlertText() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3419R.string.staking_withdraw_help_alert;
        Object[] objArr = new Object[3];
        objArr[0] = getWithdrawalTimeText();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        objArr[1] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem != null ? Double.valueOf(stakingDetailsItem.getSafeWithdrawalFeePercentage()) : null)), 0, 2, null);
        StakingDetailsItem stakingDetailsItem2 = this.stakingDetails;
        objArr[2] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem2 != null ? Double.valueOf(stakingDetailsItem2.getImmediateWithdrawalFeePercentage()) : null)), 0, 2, null);
        return resourceManager.getString(i, objArr);
    }

    public final String getSafeWithdrawalHelpAlertText() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3419R.string.staking_withdraw_safe_withdrawal_help_alert_description;
        Object[] objArr = new Object[2];
        objArr[0] = getWithdrawalTimeText();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        objArr[1] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem != null ? Double.valueOf(stakingDetailsItem.getSafeWithdrawalFeePercentage()) : null)), 0, 2, null);
        return resourceManager.getString(i, objArr);
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
        StakingTransactionStep stakingTransactionStep = this.currentStep;
        if (stakingTransactionStep instanceof StakingTransactionStep.ApprovalNeeded) {
            confirmTokenApprovalExecution(((StakingTransactionStep.ApprovalNeeded) stakingTransactionStep).getTokenTicker());
        } else if (Intrinsics.areEqual(stakingTransactionStep, StakingTransactionStep.Prepare.INSTANCE)) {
            validatePrepareAmount();
        } else if (Intrinsics.areEqual(stakingTransactionStep, new StakingTransactionStep.Execute(this.screenType))) {
            confirmExecution();
        } else if (Intrinsics.areEqual(stakingTransactionStep, StakingTransactionStep.Loading.INSTANCE)) {
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(C3419R.string.staking_action_loading_wait));
        } else if (Intrinsics.areEqual(stakingTransactionStep, StakingTransactionStep.RetryLoading.INSTANCE)) {
            loadInitialData();
        }
    }

    public final String getForcedAmountText() {
        String str = this.forcedAmountText;
        if (str != null) {
            this.forcedAmountText = null;
            return str;
        }
        return null;
    }

    public final void setMaxAmount() {
        TokenBalance tokenBalance = this.tokenBalance;
        String it = new BigDecimal(String.valueOf(NumberExtKt.orZero(tokenBalance != null ? Double.valueOf(tokenBalance.getTotal()) : null))).toPlainString();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        onAmountChanged(it);
        this.forcedAmountText = it;
    }

    public final void switchSafeWithdrawal(boolean z) {
        this.isSafeWithdrawalSelected = z;
        ((StakingTransactionView) getViewState()).updateWithdrawalFee();
        if (this.currentStep instanceof StakingTransactionStep.Execute) {
            this.currentStep = StakingTransactionStep.Prepare.INSTANCE;
            prepareAction();
        }
    }

    public final void onAmountChanged(String amountText) {
        BigDecimal ZERO;
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        try {
            if (amountText.length() == 0) {
                ZERO = BigDecimal.ZERO;
                Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
            } else {
                ZERO = new BigDecimal(amountText);
            }
            this.currentAmount = ZERO;
        } catch (Exception e) {
            Timber.m6e(e);
        }
        if (this.currentStep instanceof StakingTransactionStep.Execute) {
            this.currentStep = StakingTransactionStep.Prepare.INSTANCE;
            this.feeType = null;
        }
        ((StakingTransactionView) getViewState()).updateAmountDependedViews();
    }

    public final DialogModel getApproveTokenDescriptionModel() {
        return new DialogModel(this.resourceManager.getString(C3419R.string.wallet_swap_process_what_is_approve), this.resourceManager.getString(C3419R.string.wallet_swap_process_what_is_approve_dialog_description), null, this.resourceManager.getString(C3419R.string.common_ok), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadInitialData();
    }

    private final void loadInitialData() {
        this.currentStep = StakingTransactionStep.Loading.INSTANCE;
        ((StakingTransactionView) getViewState()).updateStakingStep();
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
        Observable observeOn = interval.flatMap(new Function() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource checkTokensApproval$lambda$10;
                checkTokensApproval$lambda$10 = StakingTransactionPresenter.checkTokensApproval$lambda$10(Function1.this, obj);
                return checkTokensApproval$lambda$10;
            }
        }).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun checkTokensA…y { autoDispose() }\n    }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends StakingApprovalInfo>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingApprovalInfo> result) {
                m1555invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1555invoke(Result<? extends StakingApprovalInfo> it) {
                ResourceManager resourceManager;
                Disposable disposable;
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
                        if (token2 == stakingTokenApprovalStatus2 && stakingApprovalInfo.getFeeToken() == stakingTokenApprovalStatus2) {
                            disposable = this.tokensApprovalStatusUpdateDisposable;
                            disposable.dispose();
                            this.currentStep = StakingTransactionStep.Prepare.INSTANCE;
                            ((StakingTransactionView) this.getViewState()).updateStakingStep();
                            return;
                        }
                        this.currentStep = StakingTransactionStep.ApprovalProcessing.INSTANCE;
                        ((StakingTransactionView) this.getViewState()).updateStakingStep();
                        StakingTransactionPresenter.checkTokensApproval$default(this, false, 1, null);
                    }
                } else if (result instanceof Result.Error) {
                    if (z) {
                        this.currentStep = StakingTransactionStep.RetryLoading.INSTANCE;
                        ((StakingTransactionView) this.getViewState()).updateStakingStep();
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        this.tokensApprovalStatusUpdateDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource checkTokensApproval$lambda$10(Function1 tmp0, Object obj) {
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
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = this.stakingInteractor.sendApprovalPrepare(stakingDetailsItem.getId(), stakingApprovalTokenType).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result) {
                m1560invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1560invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> it) {
                ResourceManager resourceManager;
                DialogModel feeDialogModel;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result = it;
                if (result instanceof Result.Success) {
                    Pair pair = (Pair) ((Result.Success) result).getData();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
                    if (stakingTransactionAction != null) {
                        StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                        StakingTransactionStep.ApprovalNeeded approvalNeeded = stakingApprovalTokenType == StakingApprovalTokenType.STAKING ? new StakingTransactionStep.ApprovalNeeded(stakingDetailsItem.getTokenItem().getTicker()) : new StakingTransactionStep.ApprovalNeeded(stakingDetailsItem.getFeeTokenItem().getTicker());
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        Observable<Result<StakingOperation>> observeOn = stakingInteractor.sendApprovalExecute(str, transaction).observeOn(this.schedulersProvider.mo716ui());
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
                m1557invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1557invoke(Result<? extends StakingOperation> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingOperation> result = it;
                if (result instanceof Result.Success) {
                    StakingTransactionPresenter.onActionSuccess$default(StakingTransactionPresenter.this, StakingTransactionStep.ApprovalProcessing.INSTANCE, null, null, 6, null);
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void validatePrepareAmount() {
        if (NumberExtKt.isZero(this.currentAmount)) {
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(this.screenType == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3419R.string.staking_profit_no_tokens_to_claim : C3419R.string.wallet_amount_validation_zero_amount_error));
            return;
        }
        TokenBalance tokenBalance = this.tokenBalance;
        if (NumberExtKt.orZero(tokenBalance != null ? new BigDecimal(String.valueOf(tokenBalance.getTotal())) : null).compareTo(this.currentAmount) < 0) {
            if (this.screenType == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
                runNoEnoughMoneyFlow();
                return;
            } else {
                ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(C3419R.string.staking_not_enough_money));
                return;
            }
        }
        prepareAction();
    }

    private final void prepareAction() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = getPrepareActionObservableByScreenType(stakingDetailsItem.getId()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getPrepareActionObservab…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result) {
                m1559invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1559invoke(Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                ResourceManager resourceManager4;
                ResourceManager resourceManager5;
                ResourceManager resourceManager6;
                int i;
                DialogModel feeDialogModel;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Pair<? extends String, ? extends StakingTransactionAction>> result = it;
                if (result instanceof Result.Success) {
                    Pair pair = (Pair) ((Result.Success) result).getData();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
                    if (stakingTransactionAction != null) {
                        StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                        i = stakingTransactionPresenter2.screenType;
                        StakingTransactionStep.Execute execute = new StakingTransactionStep.Execute(i);
                        feeDialogModel = StakingTransactionPresenter.this.getFeeDialogModel();
                        stakingTransactionPresenter2.onActionSuccess(execute, StakingTransactionActionToFeeUiMappingKt.mapToUi(stakingTransactionAction, feeDialogModel), (String) pair.getFirst());
                    } else {
                        stakingTransactionAction = null;
                    }
                    stakingTransactionPresenter.stakingTransactionAction = stakingTransactionAction;
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        StakingTransactionPresenter.this.runNoEnoughMoneyFlow();
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_FINISHED) {
                        resourceManager6 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showToast(resourceManager6.getString(C3419R.string.staking_replenishment_already_finished));
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_CLAIM_OVERLAP) {
                        resourceManager4 = StakingTransactionPresenter.this.resourceManager;
                        String string = resourceManager4.getString(C3419R.string.staking_profit_error_title);
                        resourceManager5 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showActionError(string, resourceManager5.getString(C3419R.string.staking_profit_overlap_error_description));
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_WITHDRAWAL_OVER_LIMIT) {
                        resourceManager2 = StakingTransactionPresenter.this.resourceManager;
                        String string2 = resourceManager2.getString(C3419R.string.staking_withdraw_error_title);
                        resourceManager3 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showActionError(string2, resourceManager3.getString(C3419R.string.staking_withdraw_over_limit_error_description));
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Observable<Result<Pair<String, StakingTransactionAction>>> getPrepareActionObservableByScreenType(long j) {
        int i = this.screenType;
        if (i == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            return this.stakingInteractor.sendDepositPrepare(j, this.currentAmount);
        }
        return i == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? this.stakingInteractor.sendClaimPrepare(j) : this.stakingInteractor.sendWithdrawPrepare(j, this.currentAmount, this.isSafeWithdrawalSelected);
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
        Observable<Result<StakingOperation>> observeOn = getExecuteActionObservableByScreenType(transaction).observeOn(this.schedulersProvider.mo716ui());
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
                m1556invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1556invoke(Result<? extends StakingOperation> it) {
                ResourceManager resourceManager;
                RxEventBus rxEventBus;
                String successTitle;
                String successMessage;
                StakingValues value;
                BigDecimal asToken;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingOperation> result = it;
                if (result instanceof Result.Success) {
                    StakingTransactionPresenter.onActionSuccess$default(StakingTransactionPresenter.this, StakingTransactionStep.Prepare.INSTANCE, null, null, 6, null);
                    rxEventBus = StakingTransactionPresenter.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.StakingProgrammesRefresh.INSTANCE);
                    StakingTransactionView stakingTransactionView = (StakingTransactionView) StakingTransactionPresenter.this.getViewState();
                    successTitle = StakingTransactionPresenter.this.getSuccessTitle();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingOperationCost amount = ((StakingOperation) ((Result.Success) result).getData()).getAmount();
                    successMessage = stakingTransactionPresenter.getSuccessMessage(NumberExtKt.orZero((amount == null || (value = amount.getValue()) == null || (asToken = value.getAsToken()) == null) ? null : Double.valueOf(asToken.doubleValue())));
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Observable<Result<StakingOperation>> getExecuteActionObservableByScreenType(StakingTransactionArgs stakingTransactionArgs) {
        int i = this.screenType;
        if (i == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            return this.stakingInteractor.sendDepositExecute(this.wrappedAction, stakingTransactionArgs);
        }
        if (i == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            return this.stakingInteractor.sendClaimExecute(this.wrappedAction, stakingTransactionArgs);
        }
        return this.stakingInteractor.sendWithdrawExecute(this.wrappedAction, stakingTransactionArgs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void onActionSuccess$default(StakingTransactionPresenter stakingTransactionPresenter, StakingTransactionStep stakingTransactionStep, FeeView.ChooseFeeType chooseFeeType, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            chooseFeeType = null;
        }
        if ((i & 4) != 0) {
            str = "";
        }
        stakingTransactionPresenter.onActionSuccess(stakingTransactionStep, chooseFeeType, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onActionSuccess(StakingTransactionStep stakingTransactionStep, FeeView.ChooseFeeType chooseFeeType, String str) {
        this.wrappedAction = str;
        this.feeType = chooseFeeType;
        this.currentStep = stakingTransactionStep;
        ((StakingTransactionView) getViewState()).updateStakingStep();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runNoEnoughMoneyFlow() {
        String networkId;
        TokenDetailed tokenDetailed = this.token;
        if (tokenDetailed == null || (networkId = tokenDetailed.getNetworkId()) == null) {
            return;
        }
        ((StakingTransactionView) getViewState()).showNoEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(this.token, SwapProtocol.Companion.resolveByNetworkId(networkId), networkId));
    }

    private final void updateAvailableBalance(StakingDetailsItem stakingDetailsItem) {
        int i = this.screenType;
        if (i == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            loadBalance();
            return;
        }
        if (i == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            TokenBalance tokenBalance = this.tokenBalance;
            this.tokenBalance = tokenBalance != null ? tokenBalance.copy((r16 & 1) != 0 ? tokenBalance.total : stakingDetailsItem.getAvailableForClaim(), (r16 & 2) != 0 ? tokenBalance.totalInFiat : null, (r16 & 4) != 0 ? tokenBalance.rateToFiat : null, (r16 & 8) != 0 ? tokenBalance.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? tokenBalance.token : null) : null;
            setMaxAmount();
        } else if (i == ManageLinksActivity.STAKING_WITHDRAW_SCREEN_TYPE) {
            TokenBalance tokenBalance2 = this.tokenBalance;
            this.tokenBalance = tokenBalance2 != null ? tokenBalance2.copy((r16 & 1) != 0 ? tokenBalance2.total : stakingDetailsItem.getDebt().doubleValue(), (r16 & 2) != 0 ? tokenBalance2.totalInFiat : null, (r16 & 4) != 0 ? tokenBalance2.rateToFiat : null, (r16 & 8) != 0 ? tokenBalance2.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? tokenBalance2.token : null) : null;
        }
    }

    private final void loadBalance() {
        Token indexedToken;
        WalletInteractor walletInteractor = this.walletInteractor;
        TokenDetailed tokenDetailed = this.token;
        if (tokenDetailed == null || (indexedToken = TokenExtKt.toIndexedToken(tokenDetailed)) == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(walletInteractor, indexedToken, false, this.token.getNetworkId(), 2, null).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1558invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1558invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    StakingTransactionPresenter.this.tokenBalance = (TokenBalance) success.getData();
                    ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showBalance((TokenBalance) success.getData());
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
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
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

    private final DialogModel getApproveConfirmationDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3419R.string.wallet_swap_process_confirm_approve_alert_title), this.resourceManager.getString(C3419R.string.wallet_swap_process_confirm_approve_alert_description, str), this.resourceManager.getString(C3419R.string.common_cancel), this.resourceManager.getString(C3419R.string.wallet_swap_process_confirm_approve_alert_action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3419R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3419R.string.common_cancel), 6, null);
    }

    private final DialogModel getSendConfirmationDialogModel() {
        int i;
        String confirmTitle = getConfirmTitle();
        String confirmMessage = getConfirmMessage();
        String string = this.resourceManager.getString(C3419R.string.common_cancel);
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3419R.string.wallet_operation_deposit;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3419R.string.staking_profit_claim : C3419R.string.staking_details_withdraw;
        }
        return new DialogModel(confirmTitle, confirmMessage, string, resourceManager.getString(i));
    }

    private final String getConfirmTitle() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3419R.string.staking_replenishment_confirm_title;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3419R.string.staking_profit_confirm_title : C3419R.string.staking_withdraw_confirm_title;
        }
        return resourceManager.getString(i);
    }

    private final String getConfirmMessage() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3419R.string.staking_replenishment_confirm_description;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3419R.string.staking_profit_confirm_description : C3419R.string.staking_withdraw_confirm_description;
        }
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(this.currentAmount.doubleValue());
        TokenDetailed tokenDetailed = this.token;
        objArr[0] = BalanceFormatter.formatBalance(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
        TokenDetailed tokenDetailed2 = this.token;
        String ticker = tokenDetailed2 != null ? tokenDetailed2.getTicker() : null;
        if (ticker == null) {
            ticker = "";
        }
        objArr[1] = ticker;
        return resourceManager.getString(i, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessTitle() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3419R.string.staking_replenishment_success_title;
        } else if (i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            i = C3419R.string.staking_profit_success_title;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3419R.string.staking_withdraw_safe_success_title;
        } else {
            i = C3419R.string.staking_withdraw_immediate_success_title;
        }
        return resourceManager.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessMessage(double d) {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3419R.string.staking_replenishment_success_description;
        } else if (i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            i = C3419R.string.staking_profit_success_description;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3419R.string.staking_withdraw_safe_success_description;
        } else {
            i = C3419R.string.staking_withdraw_immediate_success_description;
        }
        Object[] objArr = new Object[2];
        Double valueOf = Double.valueOf(d);
        TokenDetailed tokenDetailed = this.token;
        objArr[0] = BalanceFormatter.formatBalance(valueOf, Integer.valueOf(NumberExtKt.orZero(tokenDetailed != null ? Integer.valueOf(tokenDetailed.getDecimals()) : null)));
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
