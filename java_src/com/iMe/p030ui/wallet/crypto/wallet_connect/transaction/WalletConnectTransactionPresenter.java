package com.iMe.p030ui.wallet.crypto.wallet_connect.transaction;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.crypto.Convert;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
import timber.log.Timber;
/* compiled from: WalletConnectTransactionPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionPresenter extends BasePresenter<WalletConnectTransactionView> {
    private final Lazy amount$delegate;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletConnectTransactionScreenType screenType;
    private GasPriceItem selectedFee;
    private final Lazy token$delegate;
    private final WalletConnectInteractor walletConnectInteractor;
    private final WalletConnectManager walletConnectManager;

    public WalletConnectTransactionPresenter(WalletConnectTransactionScreenType screenType, ResourceManager resourceManager, SchedulersProvider schedulersProvider, WalletConnectInteractor walletConnectInteractor, WalletConnectManager walletConnectManager) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletConnectInteractor, "walletConnectInteractor");
        Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
        this.screenType = screenType;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.walletConnectInteractor = walletConnectInteractor;
        this.walletConnectManager = walletConnectManager;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TokenDetailed>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$token$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TokenDetailed invoke() {
                WalletConnectTransactionScreenType walletConnectTransactionScreenType;
                walletConnectTransactionScreenType = WalletConnectTransactionPresenter.this.screenType;
                return walletConnectTransactionScreenType.getTransaction().getFeeToken();
            }
        });
        this.token$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<BigDecimal>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$amount$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BigDecimal invoke() {
                WalletConnectTransactionScreenType walletConnectTransactionScreenType;
                walletConnectTransactionScreenType = WalletConnectTransactionPresenter.this.screenType;
                return Convert.fromWei(walletConnectTransactionScreenType.getTransaction().getValue(), Convert.Unit.ETHER);
            }
        });
        this.amount$delegate = lazy2;
        this.selectedFee = new GasPriceItem(TransactionSpeedLevel.MEDIUM, getToken(), screenType.getTransaction().getTransactionParams().getMedium());
    }

    private final TokenDetailed getToken() {
        return (TokenDetailed) this.token$delegate.getValue();
    }

    private final BigDecimal getAmount() {
        Object value = this.amount$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-amount>(...)");
        return (BigDecimal) value;
    }

    public final DialogModel getSendConfirmationDialogModel() {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Send) {
            return new DialogModel(this.resourceManager.getString(C3634R.string.wallet_amount_confirm_alert_title), getConfirmMessage(), this.resourceManager.getString(C3634R.string.common_cancel), this.resourceManager.getString(C3634R.string.wallet_amount_confirm_alert_ok_btn));
        }
        if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Sign) {
            return new DialogModel(this.resourceManager.getString(C3634R.string.wallet_connect_message_sign_confirm_title), getConfirmMessage(), this.resourceManager.getString(C3634R.string.common_cancel), this.resourceManager.getString(C3634R.string.wallet_connect_transaction_button_sign));
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void processTransaction() {
        WalletConnectProcessedTransaction transaction = this.screenType.getTransaction();
        processTransaction(new WalletConnectTransactionArgs(transaction.getTo(), new BigInteger(transaction.getValue()), transaction.getData(), NumberExtKt.orZero(NetworksHelper.getNetworkById(getToken().getNetworkId()).getChainId()), transaction.getTransactionParams().getNonce(), this.selectedFee.getInfo().getPrice(), this.selectedFee.getInfo().getLimit()));
    }

    public final void rejectTransaction() {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        this.walletConnectManager.rejectRequest(walletConnectTransactionScreenType.getSessionItem().getSessionKey(), walletConnectTransactionScreenType.getRequestId());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletConnectProcessedTransaction transaction = this.screenType.getTransaction();
        ((WalletConnectTransactionView) getViewState()).setupScreenWithData(getTransactionAmountText(), NetworksHelper.getNetworkById(getToken().getNetworkId()).getShortName(), StringExtKt.shortened$default(transaction.getFrom(), 0, 1, null), StringExtKt.shortened$default(transaction.getTo(), 0, 1, null), this.screenType.getSessionItem().getPeerUrl());
        if (this.screenType instanceof WalletConnectTransactionScreenType.Send) {
            ((WalletConnectTransactionView) getViewState()).showFee(getChooseFeeType());
        }
    }

    private final void processTransaction(WalletConnectTransactionArgs walletConnectTransactionArgs) {
        Observable<Result<String>> signWalletConnectCryptoTransaction;
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Send) {
            signWalletConnectCryptoTransaction = this.walletConnectInteractor.sendWalletConnectCryptoTransaction(walletConnectTransactionArgs);
        } else if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Sign) {
            signWalletConnectCryptoTransaction = this.walletConnectInteractor.signWalletConnectCryptoTransaction(walletConnectTransactionArgs);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        subscribeToTransactionProcessingWithResultsHandle(signWalletConnectCryptoTransaction);
    }

    private final void subscribeToTransactionProcessingWithResultsHandle(Observable<Result<String>> observable) {
        Observable<Result<String>> observeOn = observable.observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "processingObservable\n   …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, true);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$subscribeToTransactionProcessingWithResultsHandle$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1671invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1671invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    WalletConnectTransactionPresenter.this.onTransactionProcessingSuccess((String) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletConnectTransactionPresenter.this.resourceManager;
                    ((WalletConnectTransactionView) WalletConnectTransactionPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter$subscribeToTransactionProcessingWithResultsHandle$$inlined$subscribeWithErrorHandle$default$2
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
    public final void onTransactionProcessingSuccess(String str) {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        this.walletConnectManager.approveRequest(walletConnectTransactionScreenType.getSessionItem().getSessionKey(), walletConnectTransactionScreenType.getRequestId(), str);
        ((WalletConnectTransactionView) getViewState()).onTransactionSuccess();
    }

    private final FeeType getChooseFeeType() {
        return new FeeType.Default(getFeeDialogModel(), this.screenType.getTransaction().getTransactionParams(), getToken(), this.selectedFee, new WalletConnectTransactionPresenter$getChooseFeeType$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectFee(GasPriceItem gasPriceItem) {
        this.selectedFee = gasPriceItem;
        ((WalletConnectTransactionView) getViewState()).showFee(getChooseFeeType());
    }

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3634R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3634R.string.common_cancel), 6, null);
    }

    private final String getConfirmMessage() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Send) {
            i = C3634R.string.wallet_amount_send_confirm_alert_description;
        } else if (!(walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Sign)) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3634R.string.wallet_connect_transaction_confirm_sign_description;
        }
        return resourceManager.getString(i, BalanceFormatter.format(Double.valueOf(getAmount().doubleValue()), Integer.valueOf(getToken().getDecimals())), getToken().getTicker());
    }

    private final String getTransactionAmountText() {
        return getAmount().toString() + ' ' + getToken().getTicker();
    }
}
