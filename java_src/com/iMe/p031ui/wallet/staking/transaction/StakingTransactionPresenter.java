package com.iMe.p031ui.wallet.staking.transaction;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingTransactionStep;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.storage.common.AppConfiguration$Crypto;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.staking.StakingApprovalTokenType;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.model.staking.StakingTransactionArgs;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.helper.wallet.SwapHelper;
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
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ManageLinksActivity;
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
        BigDecimal ZERO;
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
        String tokenTicker = stakingDetailsItem != null ? stakingDetailsItem.getTokenTicker() : null;
        TokenCode map = companion.map(tokenTicker == null ? "" : tokenTicker);
        this.tokenCode = map;
        TokenInfo.Companion companion2 = TokenInfo.Companion;
        TokenInfo map2 = companion2.map(map);
        this.tokenInfo = map2;
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
        TokenBalance.Companion companion3 = TokenBalance.Companion;
        this.tokenBalance = companion3.createEmptyBalanceFor(map2);
        this.currentStep = StakingTransactionStep.Loading.INSTANCE;
        String feeTokenTicker = stakingDetailsItem != null ? stakingDetailsItem.getFeeTokenTicker() : null;
        this.feeTokenBalance = companion3.createEmptyBalanceFor(companion2.map(feeTokenTicker == null ? "" : feeTokenTicker));
        lazy = LazyKt__LazyJVMKt.lazy(new StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2(this));
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
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        String str = null;
        if (stakingDetailsItem != null) {
            if (this.isSafeWithdrawalSelected) {
                immediateWithdrawalFeePercentage = stakingDetailsItem.getSafeWithdrawalFeePercentage();
            } else {
                immediateWithdrawalFeePercentage = stakingDetailsItem.getImmediateWithdrawalFeePercentage();
            }
            ResourceManager resourceManager = this.resourceManager;
            int i = C3295R.string.staking_withdraw_fee_value;
            TokenBalance tokenBalance = this.feeTokenBalance;
            BigDecimal multiply = this.currentAmount.multiply(new BigDecimal(String.valueOf(immediateWithdrawalFeePercentage / 100)));
            Intrinsics.checkNotNullExpressionValue(multiply, "this.multiply(other)");
            str = resourceManager.getString(i, BalanceFormatter.formatPercents$default(BalanceFormatter.INSTANCE, Double.valueOf(immediateWithdrawalFeePercentage), 0, 2, null), TokenBalanceExtKt.getTotalBalanceShortText(TokenBalance.copy$default(tokenBalance, null, multiply.doubleValue(), BitmapDescriptorFactory.HUE_RED, null, null, null, 61, null), this.resourceManager));
        }
        return str == null ? "" : str;
    }

    public final String getWithdrawalTimeText() {
        return this.isSafeWithdrawalSelected ? getSafeWithdrawalReceiveTimeText() : this.resourceManager.getString(C3295R.string.staking_withdraw_time_immediate);
    }

    public final String getWithdrawalHelpAlertText() {
        ResourceManager resourceManager = this.resourceManager;
        int i = C3295R.string.staking_withdraw_help_alert;
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
        int i = C3295R.string.staking_withdraw_safe_withdrawal_help_alert_description;
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
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.staking_action_loading_wait));
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
        String it = new BigDecimal(String.valueOf(this.tokenBalance.getTotal())).toPlainString();
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
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_swap_process_what_is_approve), this.resourceManager.getString(C3295R.string.wallet_swap_process_what_is_approve_dialog_description), null, this.resourceManager.getString(C3295R.string.common_ok), 4, null);
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

    private final void checkTokensApproval(boolean z) {
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
        Observable observeOn = interval.flatMap(new Function() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource checkTokensApproval$lambda$9;
                checkTokensApproval$lambda$9 = StakingTransactionPresenter.checkTokensApproval$lambda$9(Function1.this, obj);
                return checkTokensApproval$lambda$9;
            }
        }).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun checkTokensA…y { autoDispose() }\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2356x3cd58b65(z, this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2357x3cd58b66((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        this.tokensApprovalStatusUpdateDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource checkTokensApproval$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareTokenApproval(StakingApprovalTokenType stakingApprovalTokenType) {
        this.tokensApprovalStatusUpdateDisposable.dispose();
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = this.stakingInteractor.sendApprovalPrepare(stakingDetailsItem.getId(), stakingApprovalTokenType).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2366xfabfc97b(this, stakingApprovalTokenType, stakingDetailsItem)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2367xfabfc97c((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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
        Observable<Result<StakingOperation>> observeOn = stakingInteractor.sendApprovalExecute(str, transaction).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2360x63b00ecd(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2361x63b00ece((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void validatePrepareAmount() {
        if (NumberExtKt.isZero(this.currentAmount)) {
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(this.screenType == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3295R.string.staking_profit_no_tokens_to_claim : C3295R.string.wallet_amount_validation_zero_amount_error));
        } else if (new BigDecimal(String.valueOf(this.tokenBalance.getTotal())).compareTo(this.currentAmount) >= 0) {
            prepareAction();
        } else if (this.screenType == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            runNoEnoughMoneyFlow();
        } else {
            ((StakingTransactionView) getViewState()).showToast(this.resourceManager.getString(C3295R.string.staking_not_enough_money));
        }
    }

    private final void prepareAction() {
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null) {
            return;
        }
        Observable<Result<Pair<String, StakingTransactionAction>>> observeOn = getPrepareActionObservableByScreenType(stakingDetailsItem.getId()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getPrepareActionObservab…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2364x101cb61d(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2365x101cb61e((BaseView) getViewState())));
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
        Observable<Result<StakingOperation>> observeOn = getExecuteActionObservableByScreenType(transaction).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getExecuteActionObservab…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2358x8ae7e90b(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2359x8ae7e90c((BaseView) getViewState())));
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
    public final void runNoEnoughMoneyFlow() {
        NetworkType networkType;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null || (networkType = stakingDetailsItem.getNetworkType()) == null) {
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
        NetworkType networkType;
        WalletInteractor walletInteractor = this.walletInteractor;
        TokenCode tokenCode = this.tokenCode;
        StakingDetailsItem stakingDetailsItem = this.stakingDetails;
        if (stakingDetailsItem == null || (networkType = stakingDetailsItem.getNetworkType()) == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(walletInteractor, tokenCode, false, networkType, 2, null).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2362xfeb72cd6(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2363xfeb72cd7((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_swap_process_confirm_approve_alert_title), this.resourceManager.getString(C3295R.string.wallet_swap_process_confirm_approve_alert_description, str), this.resourceManager.getString(C3295R.string.common_cancel), this.resourceManager.getString(C3295R.string.wallet_swap_process_confirm_approve_alert_action));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3295R.string.common_cancel), 6, null);
    }

    private final DialogModel getSendConfirmationDialogModel() {
        int i;
        String confirmTitle = getConfirmTitle();
        String confirmMessage = getConfirmMessage();
        String string = this.resourceManager.getString(C3295R.string.common_cancel);
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3295R.string.wallet_operation_deposit;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3295R.string.staking_profit_claim : C3295R.string.staking_details_withdraw;
        }
        return new DialogModel(confirmTitle, confirmMessage, string, resourceManager.getString(i));
    }

    private final String getConfirmTitle() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3295R.string.staking_replenishment_confirm_title;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3295R.string.staking_profit_confirm_title : C3295R.string.staking_withdraw_confirm_title;
        }
        return resourceManager.getString(i);
    }

    private final String getConfirmMessage() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3295R.string.staking_replenishment_confirm_description;
        } else {
            i = i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE ? C3295R.string.staking_profit_confirm_description : C3295R.string.staking_withdraw_confirm_description;
        }
        return resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(this.currentAmount.doubleValue()), this.tokenInfo.getDecimals()), this.resourceManager.getString(this.tokenInfo.getShortName()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessTitle() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3295R.string.staking_replenishment_success_title;
        } else if (i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            i = C3295R.string.staking_profit_success_title;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3295R.string.staking_withdraw_safe_success_title;
        } else {
            i = C3295R.string.staking_withdraw_immediate_success_title;
        }
        return resourceManager.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getSuccessMessage(double d) {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        int i2 = this.screenType;
        if (i2 == ManageLinksActivity.STAKING_REPLENISH_SCREEN_TYPE) {
            i = C3295R.string.staking_replenishment_success_description;
        } else if (i2 == ManageLinksActivity.STAKING_PROFIT_SCREEN_TYPE) {
            i = C3295R.string.staking_profit_success_description;
        } else if (this.isSafeWithdrawalSelected) {
            i = C3295R.string.staking_withdraw_safe_success_description;
        } else {
            i = C3295R.string.staking_withdraw_immediate_success_description;
        }
        return resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(d), this.tokenInfo.getDecimals()), this.resourceManager.getString(this.tokenInfo.getShortName()));
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
