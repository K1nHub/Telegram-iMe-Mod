package com.smedialink.manager.crypto.pay;

import com.binance.android.binancepay.api.BinancePayFactory;
import com.binance.android.binancepay.api.BinancePayListener;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.interactor.firebase.DynamicLinksInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTransaction;
import com.smedialink.storage.domain.model.google.DynamicLinkData;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: BinancePayProcessManager.kt */
/* loaded from: classes3.dex */
public final class BinancePayProcessManager {
    private final BinanceInternalInteractor binanceInternalInteractor;
    private final DynamicLinksInteractor dynamicLinksInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final CompositeDisposable subscriptions;
    private BinancePayProcessView viewState;

    static {
        new Companion(null);
    }

    public BinancePayProcessManager(BinanceInternalInteractor binanceInternalInteractor, DynamicLinksInteractor dynamicLinksInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(dynamicLinksInteractor, "dynamicLinksInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.dynamicLinksInteractor = dynamicLinksInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        this.subscriptions = new CompositeDisposable();
    }

    public void attachViewState(BinancePayProcessView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewState = view;
    }

    public void onDetachViewState() {
        this.viewState = null;
        this.subscriptions.clear();
    }

    public void loadAndPay(final AndroidActivityHolder holder, String link) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(link, "link");
        Observable<R> flatMap = this.dynamicLinksInteractor.getLink(holder, link).flatMap(new Function() { // from class: com.smedialink.manager.crypto.pay.BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                BinanceInternalInteractor binanceInternalInteractor;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                DynamicLinkData dynamicLinkData = (DynamicLinkData) data;
                if (!(dynamicLinkData instanceof DynamicLinkData.BinancePayment)) {
                    Observable just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.BAD_RESPONSE, (Throwable) null, 2, (DefaultConstructorMarker) null), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                binanceInternalInteractor = BinancePayProcessManager.this.binanceInternalInteractor;
                return binanceInternalInteractor.getTransaction(((DynamicLinkData.BinancePayment) dynamicLinkData).getBinancePayId());
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "dynamicLinksInteractor\n …(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final BinancePayProcessView binancePayProcessView = this.viewState;
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.manager.crypto.pay.BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                BinancePayProcessView viewState;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    BinancePayProcessManager.this.pay(holder, (BinanceTransaction) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    viewState = BinancePayProcessManager.this.getViewState();
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = BinancePayProcessManager.this.resourceManager;
                    viewState.showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.manager.crypto.pay.BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$2
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
        autoDispose(subscribe);
    }

    public void pay(final AndroidActivityHolder holder, final BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        getViewState().showConfirmPaymentDialog(getConfirmPayDialogModel(transaction.getInitiatorUserId()), new Callbacks$Callback() { // from class: com.smedialink.manager.crypto.pay.BinancePayProcessManager$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                BinancePayProcessManager.m1267pay$lambda2(BinancePayProcessManager.this, holder, transaction);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: pay$lambda-2  reason: not valid java name */
    public static final void m1267pay$lambda2(BinancePayProcessManager this$0, AndroidActivityHolder holder, BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(transaction, "$transaction");
        this$0.payViaBinancePay(holder, transaction);
    }

    private final void payViaBinancePay(AndroidActivityHolder androidActivityHolder, final BinanceTransaction binanceTransaction) {
        BinancePayFactory.Companion.getBinancePay(androidActivityHolder.getValue()).pay(binanceTransaction.getOrderId(), "COLLECTION", new BinancePayListener() { // from class: com.smedialink.manager.crypto.pay.BinancePayProcessManager$payViaBinancePay$1
            @Override // com.binance.android.binancepay.api.BinancePayListener
            public void onCancel() {
            }

            @Override // com.binance.android.binancepay.api.BinancePayListener
            public void onSuccess() {
                BinancePayProcessView viewState;
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                viewState = BinancePayProcessManager.this.getViewState();
                resourceManager = BinancePayProcessManager.this.resourceManager;
                String string = resourceManager.getString(C3158R.string.wallet_binance_pay_request_paid_success_dialog_title);
                resourceManager2 = BinancePayProcessManager.this.resourceManager;
                String string2 = resourceManager2.getString(C3158R.string.wallet_binance_pay_request_paid_success_dialog_description, BalanceFormatter.formatBalance(Double.valueOf(binanceTransaction.getAmount()), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()), binanceTransaction.getAsset(), binanceTransaction.getInitiatorUserId());
                resourceManager3 = BinancePayProcessManager.this.resourceManager;
                viewState.showSuccessPaymentProcessedDialog(string, string2, resourceManager3.getString(C3158R.string.common_ok));
            }
        });
    }

    private final DialogModel getConfirmPayDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_binance_pay_transaction_direction_in_title), this.resourceManager.getString(C3158R.string.wallet_binance_pay_confirm_pay_dialog_description, str), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_binance_pay_action_pay));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BinancePayProcessView getViewState() {
        BinancePayProcessView binancePayProcessView = this.viewState;
        if (binancePayProcessView != null) {
            return binancePayProcessView;
        }
        throw new IllegalStateException("Please call attachViewState(view: BinancePayProcessView) first!".toString());
    }

    private final void autoDispose(Disposable disposable) {
        this.subscriptions.add(disposable);
    }

    /* compiled from: BinancePayProcessManager.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
