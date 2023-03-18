package com.smedialink.manager.crypto.pay;

import com.binance.android.binancepay.api.BinancePayFactory;
import com.binance.android.binancepay.api.BinancePayListener;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
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
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.smedialink.utils.formatter.BalanceFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3286R;
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

    public void loadAndPay(AndroidActivityHolder holder, String link) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(link, "link");
        Observable<Result<DynamicLinkData>> link2 = this.dynamicLinksInteractor.getLink(holder, link);
        final BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1 binancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1 = new BinancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1(this);
        Observable<R> flatMap = link2.flatMap(new Function(binancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1) { // from class: com.smedialink.manager.crypto.pay.BinancePayProcessManager$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(binancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1, "function");
                this.function = binancePayProcessManager$loadAndPay$$inlined$flatMapSuccess$1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "dynamicLinksInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) getViewState(), false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1456x2414b84e(this, holder)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1457x2414b84f(this.viewState)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    public void pay(final AndroidActivityHolder holder, final BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        getViewState().showConfirmPaymentDialog(getConfirmPayDialogModel(transaction.getInitiatorUserId()), new Callbacks$Callback() { // from class: com.smedialink.manager.crypto.pay.BinancePayProcessManager$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback
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
                String string = resourceManager.getString(C3286R.string.wallet_binance_pay_request_paid_success_dialog_title);
                resourceManager2 = BinancePayProcessManager.this.resourceManager;
                String string2 = resourceManager2.getString(C3286R.string.wallet_binance_pay_request_paid_success_dialog_description, BalanceFormatter.formatBalance(Double.valueOf(binanceTransaction.getAmount()), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()), binanceTransaction.getAsset(), binanceTransaction.getInitiatorUserId());
                resourceManager3 = BinancePayProcessManager.this.resourceManager;
                viewState.showSuccessPaymentProcessedDialog(string, string2, resourceManager3.getString(C3286R.string.common_ok));
            }
        });
    }

    private final DialogModel getConfirmPayDialogModel(String str) {
        return new DialogModel(this.resourceManager.getString(C3286R.string.wallet_binance_pay_transaction_direction_in_title), this.resourceManager.getString(C3286R.string.wallet_binance_pay_confirm_pay_dialog_description, str), this.resourceManager.getString(C3286R.string.common_cancel), this.resourceManager.getString(C3286R.string.wallet_binance_pay_action_pay));
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
