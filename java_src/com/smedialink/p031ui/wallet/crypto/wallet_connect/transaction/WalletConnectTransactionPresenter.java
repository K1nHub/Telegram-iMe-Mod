package com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.send.fee.GasPriceItem;
import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.FeeView;
import com.smedialink.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectTransactionArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.smedialink.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3286R;
/* compiled from: WalletConnectTransactionPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionPresenter extends BasePresenter<WalletConnectTransactionView> {
    private final Lazy amount$delegate;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletConnectTransactionScreenType screenType;
    private GasPriceItem selectedFee;
    private final Lazy tokenInfo$delegate;
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
        lazy = LazyKt__LazyJVMKt.lazy(new WalletConnectTransactionPresenter$tokenInfo$2(this));
        this.tokenInfo$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new WalletConnectTransactionPresenter$amount$2(this));
        this.amount$delegate = lazy2;
        this.selectedFee = new GasPriceItem(TransactionSpeedLevel.MEDIUM, getTokenInfo(), screenType.getTransaction().getTransactionParams().getMedium());
    }

    private final TokenInfo getTokenInfo() {
        return (TokenInfo) this.tokenInfo$delegate.getValue();
    }

    private final BigDecimal getAmount() {
        Object value = this.amount$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-amount>(...)");
        return (BigDecimal) value;
    }

    public final DialogModel getSendConfirmationDialogModel() {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Send) {
            return new DialogModel(this.resourceManager.getString(C3286R.string.wallet_amount_confirm_alert_title), getConfirmMessage(), this.resourceManager.getString(C3286R.string.common_cancel), this.resourceManager.getString(C3286R.string.wallet_amount_confirm_alert_ok_btn));
        }
        if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Sign) {
            return new DialogModel(this.resourceManager.getString(C3286R.string.wallet_connect_message_sign_confirm_title), getConfirmMessage(), this.resourceManager.getString(C3286R.string.common_cancel), this.resourceManager.getString(C3286R.string.wallet_connect_transaction_button_sign));
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void processTransaction() {
        WalletConnectProcessedTransaction transaction = this.screenType.getTransaction();
        processTransaction(new WalletConnectTransactionArgs(transaction.getTo(), new BigInteger(transaction.getValue()), transaction.getData(), NetworkType.Companion.map(transaction.getNetworkType()).getChainId(), transaction.getTransactionParams().getNonce(), this.selectedFee.getInfo().getPrice(), this.selectedFee.getInfo().getLimit()));
    }

    public final void rejectTransaction() {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        this.walletConnectManager.rejectRequest(walletConnectTransactionScreenType.getSessionItem().getSessionKey(), walletConnectTransactionScreenType.getRequestId());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        WalletConnectProcessedTransaction transaction = this.screenType.getTransaction();
        ((WalletConnectTransactionView) getViewState()).setupScreenWithData(getTransactionAmountText(), this.resourceManager.getString(NetworkType.Companion.map(transaction.getNetworkType()).getShortName()), StringExtKt.shortened$default(transaction.getFrom(), 0, 1, null), StringExtKt.shortened$default(transaction.getTo(), 0, 1, null), this.screenType.getSessionItem().getPeerUrl());
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
        Observable<Result<String>> observeOn = observable.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "processingObservable\n   …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, true).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2131xc1738946(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2132xc1738947((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTransactionProcessingSuccess(String str) {
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        this.walletConnectManager.approveRequest(walletConnectTransactionScreenType.getSessionItem().getSessionKey(), walletConnectTransactionScreenType.getRequestId(), str);
        ((WalletConnectTransactionView) getViewState()).onTransactionSuccess();
    }

    private final FeeView.ChooseFeeType getChooseFeeType() {
        return new FeeView.ChooseFeeType.Default(getFeeDialogModel(), this.screenType.getTransaction().getTransactionParams(), TokenInfo.Companion.map(this.screenType.getTransaction().getFeeTokenCode()), this.selectedFee, new WalletConnectTransactionPresenter$getChooseFeeType$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void selectFee(GasPriceItem gasPriceItem) {
        this.selectedFee = gasPriceItem;
        ((WalletConnectTransactionView) getViewState()).showFee(getChooseFeeType());
    }

    private final DialogModel getFeeDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3286R.string.wallet_amount_send_fee_dialog_title), null, null, this.resourceManager.getString(C3286R.string.common_cancel), 6, null);
    }

    private final String getConfirmMessage() {
        int i;
        ResourceManager resourceManager = this.resourceManager;
        WalletConnectTransactionScreenType walletConnectTransactionScreenType = this.screenType;
        if (walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Send) {
            i = C3286R.string.wallet_amount_send_confirm_alert_description;
        } else if (!(walletConnectTransactionScreenType instanceof WalletConnectTransactionScreenType.Sign)) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3286R.string.wallet_connect_transaction_confirm_sign_description;
        }
        return resourceManager.getString(i, BalanceFormatter.formatBalance(Double.valueOf(getAmount().doubleValue()), getTokenInfo().getDecimals()), this.resourceManager.getString(getTokenInfo().getShortName()));
    }

    private final String getTransactionAmountText() {
        return getAmount().toString() + ' ' + this.screenType.getTransaction().getFeeTokenCode();
    }
}
