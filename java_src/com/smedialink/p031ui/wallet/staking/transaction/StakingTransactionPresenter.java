package com.smedialink.p031ui.wallet.staking.transaction;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.i_staking.StakingInteractor;
import com.smedialink.mapper.staking.StakingTransactionActionToFeeUiMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.staking.StakingAnnualPercentageData;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingTransactionStep;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.FeeView;
import com.smedialink.storage.common.AppConfiguration$Crypto;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.staking.StakingApprovalInfo;
import com.smedialink.storage.domain.model.staking.StakingApprovalTokenType;
import com.smedialink.storage.domain.model.staking.StakingOperation;
import com.smedialink.storage.domain.model.staking.StakingOperationCost;
import com.smedialink.storage.domain.model.staking.StakingTokenApprovalStatus;
import com.smedialink.storage.domain.model.staking.StakingTransactionAction;
import com.smedialink.storage.domain.model.staking.StakingTransactionArgs;
import com.smedialink.storage.domain.model.staking.StakingValues;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import com.smedialink.utils.helper.wallet.SwapHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.math.BigDecimal;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ManageLinksActivity;
import timber.log.Timber;
/* compiled from: StakingTransactionPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter */
/* loaded from: classes3.dex */
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
    private TokenBalance tokenBalance;
    private final TokenCode tokenCode;
    private final TokenInfo tokenInfo;
    private Disposable tokensApprovalStatusUpdateDisposable;
    private final WalletInteractor walletInteractor;
    private String wrappedAction;

    static {
        new Companion(null);
    }

    public StakingTransactionPresenter(Double d, int i, StakingDetailsItem stakingDetailsItem, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor, WalletInteractor walletInteractor) {
        StakingAnnualPercentageData stakingAnnualPercentageData;
        Lazy lazy;
        BigDecimal stripTrailingZeros;
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
        TokenCode.Companion companion = TokenCode.Companion;
        String str = null;
        String tokenTicker = stakingDetailsItem == null ? null : stakingDetailsItem.getTokenTicker();
        TokenCode map = companion.map(tokenTicker == null ? "" : tokenTicker);
        this.tokenCode = map;
        TokenInfo.Companion companion2 = TokenInfo.Companion;
        TokenInfo map2 = companion2.map(map);
        this.tokenInfo = map2;
        if (stakingDetailsItem == null) {
            stakingAnnualPercentageData = null;
        } else {
            String formattedAPR = stakingDetailsItem.getFormattedAPR();
            String formattedAPY = stakingDetailsItem.getFormattedAPY();
            String bigDecimal = stakingDetailsItem.getCompoundAccrualThreshold().toString();
            Intrinsics.checkNotNullExpressionValue(bigDecimal, "compoundAccrualThreshold.toString()");
            stakingAnnualPercentageData = new StakingAnnualPercentageData(formattedAPR, formattedAPY, bigDecimal);
        }
        this.stakingAnnualPercentageData = stakingAnnualPercentageData;
        this.isSafeWithdrawalVisible = stakingDetailsItem != null && stakingDetailsItem.getCanWithdrawSafely() && stakingDetailsItem.getCanWithdrawImmediately();
        this.isSafeWithdrawalSelected = stakingDetailsItem != null ? stakingDetailsItem.getCanWithdrawSafely() : false;
        TokenBalance.Companion companion3 = TokenBalance.Companion;
        this.tokenBalance = companion3.createEmptyBalanceFor(map2);
        this.currentStep = StakingTransactionStep.Loading.INSTANCE;
        String feeTokenTicker = stakingDetailsItem == null ? null : stakingDetailsItem.getFeeTokenTicker();
        this.feeTokenBalance = companion3.createEmptyBalanceFor(companion2.map(feeTokenTicker == null ? "" : feeTokenTicker));
        lazy = LazyKt__LazyJVMKt.lazy(new StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2(this));
        this.safeWithdrawalReceiveTimeText$delegate = lazy;
        BigDecimal ZERO = d == null ? null : new BigDecimal(String.valueOf(d.doubleValue()));
        if (ZERO == null) {
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

    public final TokenCode getTokenCode() {
        return this.tokenCode;
    }

    public final TokenInfo getTokenInfo() {
        return this.tokenInfo;
    }

    public final StakingAnnualPercentageData getStakingAnnualPercentageData() {
        return this.stakingAnnualPercentageData;
    }

    public final boolean isSafeWithdrawalVisible() {
        return this.isSafeWithdrawalVisible;
    }

    public final boolean isSafeWithdrawalSelected() {
        return this.isSafeWithdrawalSelected;
    }

    public final TokenBalance getTokenBalance() {
        return this.tokenBalance;
    }

    public final StakingTransactionStep getCurrentStep() {
        return this.currentStep;
    }

    public final FeeView.ChooseFeeType getFeeType() {
        return this.feeType;
    }

    public final TokenBalance getFeeTokenBalance() {
        return this.feeTokenBalance;
    }

    private final String getSafeWithdrawalReceiveTimeText() {
        return (String) this.safeWithdrawalReceiveTimeText$delegate.getValue();
    }

    public final boolean shouldShowApprovalInfoButton() {
        return this.currentStep instanceof StakingTransactionStep.ApprovalNeeded;
    }

    public final String getStakingContractUrl() {
        String formatScanAddressUrl;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        return (stakingDetailsItem == null || (formatScanAddressUrl = AppConfiguration$Crypto.INSTANCE.formatScanAddressUrl(stakingDetailsItem.getNetworkType(), stakingDetailsItem.getContract())) == null) ? "" : formatScanAddressUrl;
    }

    public final float getCompoundThresholdProgress() {
        Float valueOf;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            valueOf = null;
        } else {
            BigDecimal add = stakingDetailsItem.getImpact().add(this.currentAmount);
            Intrinsics.checkNotNullExpressionValue(add, "this.add(other)");
            valueOf = Float.valueOf(((BigDecimal) ComparisonsKt.minOf(add.divide(stakingDetailsItem.getCompoundAccrualThreshold()), new BigDecimal(1))).floatValue());
        }
        return NumberExtKt.orZero(valueOf);
    }

    public final String getWithdrawalFeeText() {
        double immediateWithdrawalFeePercentage;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        String str = null;
        if (stakingDetailsItem != null) {
            if (isSafeWithdrawalSelected()) {
                immediateWithdrawalFeePercentage = stakingDetailsItem.getSafeWithdrawalFeePercentage();
            } else {
                immediateWithdrawalFeePercentage = stakingDetailsItem.getImmediateWithdrawalFeePercentage();
            }
            ResourceManager resourceManager = this.resourceManager;
            int i = C3158R.string.staking_withdraw_fee_value;
            TokenBalance feeTokenBalance = getFeeTokenBalance();
            BigDecimal multiply = this.currentAmount.multiply(new BigDecimal(String.valueOf(immediateWithdrawalFeePercentage / 100)));
            Intrinsics.checkNotNullExpressionValue(multiply, "this.multiply(other)");
            str = resourceManager.getString(i, BalanceFormatter.formatPercents$default(BalanceFormatter.INSTANCE, Double.valueOf(immediateWithdrawalFeePercentage), 0, 2, null), TokenBalanceExtKt.getTotalBalanceShortText(TokenBalance.copy$default(feeTokenBalance, null, multiply.doubleValue(), BitmapDescriptorFactory.HUE_RED, null, null, null, 61, null), this.resourceManager));
        }
        return str == null ? "" : str;
    }

    public final String getWithdrawalTimeText() {
        return this.isSafeWithdrawalSelected ? getSafeWithdrawalReceiveTimeText() : this.resourceManager.getString(C3158R.string.staking_withdraw_time_immediate);
    }

    public final String getWithdrawalHelpAlertText() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3158R.string.staking_withdraw_help_alert;
        Object[] objArr = new Object[3];
        objArr[0] = getWithdrawalTimeText();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        objArr[1] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem == null ? null : Double.valueOf(stakingDetailsItem.getSafeWithdrawalFeePercentage()))), 0, 2, null);
        StakingDetailsItem stakingDetailsItem2 = this.stakingDetails;
        objArr[2] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem2 == null ? null : Double.valueOf(stakingDetailsItem2.getImmediateWithdrawalFeePercentage()))), 0, 2, null);
        return resourceManager.getString(i, objArr);
    }

    public final String getSafeWithdrawalHelpAlertText() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3158R.string.staking_withdraw_safe_withdrawal_help_alert_description;
        Object[] objArr = new Object[2];
        objArr[0] = getWithdrawalTimeText();
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        objArr[1] = BalanceFormatter.formatPercents$default(balanceFormatter, Double.valueOf(NumberExtKt.orZero(stakingDetailsItem == null ? null : Double.valueOf(stakingDetailsItem.getSafeWithdrawalFeePercentage()))), 0, 2, null);
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
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.staking_action_loading_wait));
        } else if (Intrinsics.areEqual(stakingTransactionStep, StakingTransactionStep.RetryLoading.INSTANCE)) {
            loadInitialData();
        }
    }

    public final String getForcedAmountText() {
        String str = this.forcedAmountText;
        if (str == null) {
            return null;
        }
        this.forcedAmountText = null;
        return str;
    }

    public final void setMaxAmount() {
        String it = new BigDecimal(String.valueOf(this.tokenBalance.getTotal())).toPlainString();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        onAmountChanged(it);
        Unit unit = Unit.INSTANCE;
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
            Timber.m4e(e);
        }
        if (this.currentStep instanceof StakingTransactionStep.Execute) {
            this.currentStep = StakingTransactionStep.Prepare.INSTANCE;
            this.feeType = null;
        }
        ((StakingTransactionView) getViewState()).updateAmountDependedViews();
    }

    public final DialogModel getApproveTokenDescriptionModel() {
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_swap_process_what_is_approve), this.resourceManager.getString(C3158R.string.wallet_swap_process_what_is_approve_dialog_description), null, this.resourceManager.getString(C3158R.string.common_ok), 4, null);
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
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        if (z) {
            interval = Observable.just(Boolean.TRUE);
        } else {
            interval = Observable.interval(15L, TimeUnit.SECONDS);
        }
        final StakingTransactionPresenter$checkTokensApproval$1 stakingTransactionPresenter$checkTokensApproval$1 = new StakingTransactionPresenter$checkTokensApproval$1(this, stakingDetailsItem);
        Observable observeOn = interval.flatMap(new Function() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1746checkTokensApproval$lambda9;
                m1746checkTokensApproval$lambda9 = StakingTransactionPresenter.m1746checkTokensApproval$lambda9(Function1.this, obj);
                return m1746checkTokensApproval$lambda9;
            }
        }).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun checkTokensA…y { autoDispose() }\n    }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Disposable disposable;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
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
                    this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$checkTokensApproval$$inlined$subscribeWithErrorHandle$default$2
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
        Unit unit = Unit.INSTANCE;
        this.tokensApprovalStatusUpdateDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkTokensApproval$lambda-9  reason: not valid java name */
    public static final ObservableSource m1746checkTokensApproval$lambda9(Function1 tmp0, Object obj) {
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
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = this.stakingInteractor.sendApprovalPrepare(stakingDetailsItem.getId(), stakingApprovalTokenType).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                DialogModel feeDialogModel;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Pair pair = (Pair) ((Result.Success) result).getData();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
                    if (stakingTransactionAction == null) {
                        stakingTransactionAction = null;
                    } else {
                        StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                        StakingTransactionStep.ApprovalNeeded approvalNeeded = stakingApprovalTokenType == StakingApprovalTokenType.STAKING ? new StakingTransactionStep.ApprovalNeeded(stakingDetailsItem.getTokenTicker()) : new StakingTransactionStep.ApprovalNeeded(stakingDetailsItem.getFeeTokenTicker());
                        feeDialogModel = StakingTransactionPresenter.this.getFeeDialogModel();
                        stakingTransactionPresenter2.onActionSuccess(approvalNeeded, StakingTransactionActionToFeeUiMappingKt.mapToUi(stakingTransactionAction, feeDialogModel), (String) pair.getFirst());
                        Unit unit = Unit.INSTANCE;
                    }
                    stakingTransactionPresenter.stakingTransactionAction = stakingTransactionAction;
                } else if (result instanceof Result.Error) {
                    StakingTransactionPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareTokenApproval$$inlined$subscribeWithErrorHandle$default$2
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

    private final void confirmTokenApprovalExecution(String str) {
        ((StakingTransactionView) getViewState()).showConfirmDialog(getApproveConfirmationDialogModel(str), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionPresenter.this.executeTokenApproval();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void executeTokenApproval() {
        StakingInteractor stakingInteractor = this.stakingInteractor;
        String str = this.wrappedAction;
        StakingTransactionAction stakingTransactionAction = this.stakingTransactionAction;
        StakingTransactionArgs transaction = stakingTransactionAction == null ? null : stakingTransactionAction.getTransaction();
        if (transaction == null) {
            return;
        }
        Observable<Result<StakingOperation>> observeOn = stakingInteractor.sendApprovalExecute(str, transaction).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    StakingTransactionPresenter.onActionSuccess$default(StakingTransactionPresenter.this, StakingTransactionStep.ApprovalProcessing.INSTANCE, null, null, 6, null);
                    StakingTransactionPresenter.checkTokensApproval$default(StakingTransactionPresenter.this, false, 1, null);
                } else if (result instanceof Result.Error) {
                    StakingTransactionPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$executeTokenApproval$$inlined$subscribeWithErrorHandle$default$2
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

    private final void validatePrepareAmount() {
        if (NumberExtKt.isZero(this.currentAmount)) {
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(this.screenType == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3158R.string.staking_profit_no_tokens_to_claim : C3158R.string.wallet_amount_validation_zero_amount_error));
        } else if (new BigDecimal(String.valueOf(this.tokenBalance.getTotal())).compareTo(this.currentAmount) >= 0) {
            prepareAction();
        } else if (this.screenType == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            runNoEnoughMoneyFlow();
        } else {
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(C3158R.string.staking_not_enough_money));
        }
    }

    private final void prepareAction() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = getPrepareActionObservableByScreenType(stakingDetailsItem.getId()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getPrepareActionObservab…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                ResourceManager resourceManager4;
                ResourceManager resourceManager5;
                int i;
                DialogModel feeDialogModel;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Pair pair = (Pair) ((Result.Success) result).getData();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) pair.getSecond();
                    if (stakingTransactionAction == null) {
                        stakingTransactionAction = null;
                    } else {
                        StakingTransactionPresenter stakingTransactionPresenter2 = StakingTransactionPresenter.this;
                        i = stakingTransactionPresenter2.screenType;
                        StakingTransactionStep.Execute execute = new StakingTransactionStep.Execute(i);
                        feeDialogModel = StakingTransactionPresenter.this.getFeeDialogModel();
                        stakingTransactionPresenter2.onActionSuccess(execute, StakingTransactionActionToFeeUiMappingKt.mapToUi(stakingTransactionAction, feeDialogModel), (String) pair.getFirst());
                        Unit unit = Unit.INSTANCE;
                    }
                    stakingTransactionPresenter.stakingTransactionAction = stakingTransactionAction;
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY) {
                        StakingTransactionPresenter.this.runNoEnoughMoneyFlow();
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_FINISHED) {
                        resourceManager5 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showToast(resourceManager5.getString(C3158R.string.staking_replenishment_already_finished));
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_CLAIM_OVERLAP) {
                        resourceManager3 = StakingTransactionPresenter.this.resourceManager;
                        String string = resourceManager3.getString(C3158R.string.staking_profit_error_title);
                        resourceManager4 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showActionError(string, resourceManager4.getString(C3158R.string.staking_profit_overlap_error_description));
                    } else if (status == FirebaseFunctionsErrorHandler.StakingErrorStatus.ERR_STAKING_WITHDRAWAL_OVER_LIMIT) {
                        resourceManager = StakingTransactionPresenter.this.resourceManager;
                        String string2 = resourceManager.getString(C3158R.string.staking_withdraw_error_title);
                        resourceManager2 = StakingTransactionPresenter.this.resourceManager;
                        ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showActionError(string2, resourceManager2.getString(C3158R.string.staking_withdraw_over_limit_error_description));
                    } else {
                        StakingTransactionPresenter.this.showCommonErrorToast(error.getError());
                    }
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$prepareAction$$inlined$subscribeWithErrorHandle$default$2
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

    private final Observable<Result<Pair<String, StakingTransactionAction>>> getPrepareActionObservableByScreenType(long j) {
        int i = this.screenType;
        if (i == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            return this.stakingInteractor.sendDepositPrepare(j, this.currentAmount);
        }
        return i == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? this.stakingInteractor.sendClaimPrepare(j) : this.stakingInteractor.sendWithdrawPrepare(j, this.currentAmount, this.isSafeWithdrawalSelected);
    }

    private final void confirmExecution() {
        ((StakingTransactionView) getViewState()).showConfirmDialog(getSendConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda2
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionPresenter.this.executeAction();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void executeAction() {
        StakingTransactionAction stakingTransactionAction = this.stakingTransactionAction;
        StakingTransactionArgs transaction = stakingTransactionAction == null ? null : stakingTransactionAction.getTransaction();
        if (transaction == null) {
            return;
        }
        Observable<Result<StakingOperation>> observeOn = getExecuteActionObservableByScreenType(transaction).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getExecuteActionObservab…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                RxEventBus rxEventBus;
                String successTitle;
                String successMessage;
                StakingValues value;
                BigDecimal asToken;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Double d = null;
                    StakingTransactionPresenter.onActionSuccess$default(StakingTransactionPresenter.this, StakingTransactionStep.Prepare.INSTANCE, null, null, 6, null);
                    rxEventBus = StakingTransactionPresenter.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.StakingProgrammesRefresh.INSTANCE);
                    StakingTransactionView stakingTransactionView = (StakingTransactionView) StakingTransactionPresenter.this.getViewState();
                    successTitle = StakingTransactionPresenter.this.getSuccessTitle();
                    StakingTransactionPresenter stakingTransactionPresenter = StakingTransactionPresenter.this;
                    StakingOperationCost amount = ((StakingOperation) ((Result.Success) result).getData()).getAmount();
                    if (amount != null && (value = amount.getValue()) != null && (asToken = value.getAsToken()) != null) {
                        d = Double.valueOf(asToken.doubleValue());
                    }
                    successMessage = stakingTransactionPresenter.getSuccessMessage(NumberExtKt.orZero(d));
                    stakingTransactionView.showActionSuccess(successTitle, successMessage);
                } else if (result instanceof Result.Error) {
                    StakingTransactionPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$executeAction$$inlined$subscribeWithErrorHandle$default$2
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
    public final void showCommonErrorToast(ErrorModel errorModel) {
        String message;
        StakingTransactionView stakingTransactionView = (StakingTransactionView) getViewState();
        if (errorModel.isNoConnectionStatus()) {
            message = this.resourceManager.getString(C3158R.string.common_error_no_internet);
        } else {
            message = errorModel.getMessage(this.resourceManager);
            if (message.length() == 0) {
                message = this.resourceManager.getString(C3158R.string.common_error_unexpected);
            }
        }
        stakingTransactionView.showToast(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runNoEnoughMoneyFlow() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        NetworkType networkType = stakingDetailsItem == null ? null : stakingDetailsItem.getNetworkType();
        if (networkType == null) {
            return;
        }
        ((StakingTransactionView) getViewState()).showNoEnoughMoneyErrorDialog(new TokenBuyCoordinatorArgs(this.tokenCode, SwapHelper.INSTANCE.resolveSwapProtocolByNetwork(networkType), networkType));
    }

    private final void updateAvailableBalance(StakingDetailsItem stakingDetailsItem) {
        int i = this.screenType;
        if (i == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            loadBalance();
        } else if (i == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            this.tokenBalance = TokenBalance.copy$default(this.tokenBalance, null, stakingDetailsItem.getAvailableForClaim(), BitmapDescriptorFactory.HUE_RED, null, null, null, 61, null);
            setMaxAmount();
        } else if (i == ManageLinksActivity.STAKING_WITHDRAW_SCREEN_TYPE) {
            this.tokenBalance = TokenBalance.copy$default(this.tokenBalance, null, stakingDetailsItem.getDebt().doubleValue(), BitmapDescriptorFactory.HUE_RED, null, null, null, 61, null);
        }
    }

    private final void loadBalance() {
        WalletInteractor walletInteractor = this.walletInteractor;
        TokenCode tokenCode = this.tokenCode;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        NetworkType networkType = stakingDetailsItem == null ? null : stakingDetailsItem.getNetworkType();
        if (networkType == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(walletInteractor, tokenCode, false, networkType, 2, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    StakingTransactionPresenter.this.tokenBalance = (TokenBalance) success.getData();
                    ((StakingTransactionView) StakingTransactionPresenter.this.getViewState()).showBalance((TokenBalance) success.getData());
                } else if (result instanceof Result.Error) {
                    StakingTransactionPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2
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
    public final String getSafeWithdrawalDurationText() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        long orZero = NumberExtKt.orZero(stakingDetailsItem == null ? null : Long.valueOf(stakingDetailsItem.getSafeWithdrawalDuration()));
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
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_swap_process_confirm_approve_alert_title), this.resourceManager.getString(C3158R.string.wallet_swap_process_confirm_approve_alert_description, str), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_swap_process_confirm_approve_alert_action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3158R.string.common_cancel), 6, null);
    }

    private final DialogModel getSendConfirmationDialogModel() {
        int i;
        String confirmTitle = getConfirmTitle();
        String confirmMessage = getConfirmMessage();
        String string = this.resourceManager.getString(C3158R.string.common_cancel);
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3158R.string.wallet_operation_deposit;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3158R.string.staking_profit_claim : C3158R.string.staking_details_withdraw;
        }
        return new DialogModel(confirmTitle, confirmMessage, string, resourceManager.getString(i));
    }

    private final String getConfirmTitle() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3158R.string.staking_replenishment_confirm_title;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3158R.string.staking_profit_confirm_title : C3158R.string.staking_withdraw_confirm_title;
        }
        return resourceManager.getString(i);
    }

    private final String getConfirmMessage() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3158R.string.staking_replenishment_confirm_description;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3158R.string.staking_profit_confirm_description : C3158R.string.staking_withdraw_confirm_description;
        }
        return resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(this.currentAmount.doubleValue()), this.tokenInfo.getDecimals()), this.resourceManager.getString(this.tokenInfo.getShortName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessTitle() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3158R.string.staking_replenishment_success_title;
        } else if (i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            i = C3158R.string.staking_profit_success_title;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3158R.string.staking_withdraw_safe_success_title;
        } else {
            i = C3158R.string.staking_withdraw_immediate_success_title;
        }
        return resourceManager.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessMessage(double d) {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3158R.string.staking_replenishment_success_description;
        } else if (i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            i = C3158R.string.staking_profit_success_description;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3158R.string.staking_withdraw_safe_success_description;
        } else {
            i = C3158R.string.staking_withdraw_immediate_success_description;
        }
        return resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(d), this.tokenInfo.getDecimals()), this.resourceManager.getString(this.tokenInfo.getShortName()));
    }

    /* compiled from: StakingTransactionPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.staking.transaction.StakingTransactionPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
