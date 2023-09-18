package com.iMe.manager.crypto.pay;

import com.binance.android.binancepay.api.BinancePayFactory;
import com.binance.android.binancepay.api.BinancePayListener;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.firebase.DynamicLinksInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.model.google.DynamicLinkData;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import timber.log.Timber;
/* compiled from: BinancePayProcessManager.kt */
/* loaded from: classes4.dex */
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
        Observable<Result<DynamicLinkData>> link2 = this.dynamicLinksInteractor.getLink(holder, link);
        final Function1<Result<? extends DynamicLinkData>, ObservableSource<? extends Result<? extends BinanceTransaction>>> function1 = new Function1<Result<? extends DynamicLinkData>, ObservableSource<? extends Result<? extends BinanceTransaction>>>() { // from class: com.iMe.manager.crypto.pay.BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends BinanceTransaction>> invoke(Result<? extends DynamicLinkData> result) {
                BinanceInternalInteractor binanceInternalInteractor;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                DynamicLinkData data = result.getData();
                Intrinsics.checkNotNull(data);
                DynamicLinkData dynamicLinkData = data;
                if (dynamicLinkData instanceof DynamicLinkData.BinancePayment) {
                    binanceInternalInteractor = BinancePayProcessManager.this.binanceInternalInteractor;
                    return binanceInternalInteractor.getTransaction(((DynamicLinkData.BinancePayment) dynamicLinkData).getBinancePayId());
                }
                Observable just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel(ApiErrorHandler.ErrorStatus.BAD_RESPONSE, (Throwable) null, 2, (DefaultConstructorMarker) null), null, 2, null));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        };
        Observable<R> flatMap = link2.flatMap(new Function(function1) { // from class: com.iMe.manager.crypto.pay.BinancePayProcessManager$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function1, "function");
                this.function = function1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "dynamicLinksInteractor\n …(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final BinancePayProcessView binancePayProcessView = this.viewState;
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends BinanceTransaction>, Unit>() { // from class: com.iMe.manager.crypto.pay.BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends BinanceTransaction> result) {
                m1295invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1295invoke(Result<? extends BinanceTransaction> it) {
                BinancePayProcessView viewState;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends BinanceTransaction> result = it;
                if (result instanceof Result.Success) {
                    BinancePayProcessManager.this.pay(holder, (BinanceTransaction) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    viewState = BinancePayProcessManager.this.getViewState();
                    resourceManager = BinancePayProcessManager.this.resourceManager;
                    viewState.showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.manager.crypto.pay.BinancePayProcessManager$loadAndPay$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        com.iMe.storage.data.utils.extentions.RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    public void pay(final AndroidActivityHolder holder, final BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        getViewState().showConfirmPaymentDialog(getConfirmPayDialogModel(transaction.getInitiatorUserId()), new Callbacks$Callback() { // from class: com.iMe.manager.crypto.pay.BinancePayProcessManager$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                BinancePayProcessManager.pay$lambda$2(BinancePayProcessManager.this, holder, transaction);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void pay$lambda$2(BinancePayProcessManager this$0, AndroidActivityHolder holder, BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(transaction, "$transaction");
        this$0.payViaBinancePay(holder, transaction);
    }

    private final void payViaBinancePay(AndroidActivityHolder androidActivityHolder, final BinanceTransaction binanceTransaction) {
        BinancePayFactory.Companion.getBinancePay(androidActivityHolder.getValue()).pay(binanceTransaction.getOrderId(), "COLLECTION", new BinancePayListener() { // from class: com.iMe.manager.crypto.pay.BinancePayProcessManager$payViaBinancePay$1
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
                String string = resourceManager.getString(C3473R.string.wallet_binance_pay_request_paid_success_dialog_title);
                resourceManager2 = BinancePayProcessManager.this.resourceManager;
                String string2 = resourceManager2.getString(C3473R.string.wallet_binance_pay_request_paid_success_dialog_description, BalanceFormatter.format(Double.valueOf(binanceTransaction.getAmount()), Integer.valueOf(TokenDetailed.Companion.getBNB().getDecimals())), binanceTransaction.getAsset(), binanceTransaction.getInitiatorUserId());
                resourceManager3 = BinancePayProcessManager.this.resourceManager;
                viewState.showSuccessPaymentProcessedDialog(string, string2, resourceManager3.getString(C3473R.string.common_ok));
            }
        });
    }

    private final DialogModel getConfirmPayDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3473R.string.wallet_binance_pay_transaction_direction_in_title), this.resourceManager.getString(C3473R.string.wallet_binance_pay_confirm_pay_dialog_description, str), this.resourceManager.getString(C3473R.string.common_cancel), this.resourceManager.getString(C3473R.string.wallet_binance_pay_action_pay));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BinancePayProcessView getViewState() {
        BinancePayProcessView binancePayProcessView = this.viewState;
        if (binancePayProcessView != null) {
            return binancePayProcessView;
        }
        throw new IllegalStateException("Please call attachViewState(view: BinancePayProcessView) first!".toString());
    }

    /* compiled from: BinancePayProcessManager.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
