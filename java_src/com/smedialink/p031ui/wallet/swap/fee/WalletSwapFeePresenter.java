package com.smedialink.p031ui.wallet.swap.fee;

import com.smedialink.model.wallet.crypto.send.fee.GasPriceItem;
import com.smedialink.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.smedialink.storage.domain.model.wallet.swap.SwapDeadline;
import com.smedialink.storage.domain.model.wallet.swap.SwapSlippage;
import com.smedialink.storage.domain.model.wallet.swap.TradeType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: WalletSwapFeePresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.swap.fee.WalletSwapFeePresenter */
/* loaded from: classes3.dex */
public final class WalletSwapFeePresenter extends BasePresenter<WalletSwapFeeView> {
    private final SwapFeeScreenArgs args;
    private final Lazy deadlineOptions$delegate;
    private final Lazy deadlineOptionsTitles$delegate;
    private final Lazy feesOptions$delegate;
    private final Lazy feesOptionsTitles$delegate;
    private CryptoSwapMetadata metadata;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private SwapDeadline selectedDeadline;
    private GasPriceItem selectedFee;
    private SwapSlippage selectedSlip;
    private final PublishSubject<SwapSlippage> slipChangeEvent;
    private final Lazy slipOptions$delegate;
    private final Lazy slipOptionsTitles$delegate;
    private final SwapInteractor swapInteractor;

    static {
        new Companion(null);
    }

    public WalletSwapFeePresenter(SwapFeeScreenArgs args, SwapInteractor swapInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(swapInteractor, "swapInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.args = args;
        this.swapInteractor = swapInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        this.metadata = args.getMetadata();
        this.selectedFee = args.getSelectedFee();
        this.selectedDeadline = args.getSelectedDeadline();
        this.selectedSlip = args.getSelectedSlippage();
        lazy = LazyKt__LazyJVMKt.lazy(WalletSwapFeePresenter$feesOptions$2.INSTANCE);
        this.feesOptions$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new WalletSwapFeePresenter$feesOptionsTitles$2(this));
        this.feesOptionsTitles$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(WalletSwapFeePresenter$deadlineOptions$2.INSTANCE);
        this.deadlineOptions$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new WalletSwapFeePresenter$deadlineOptionsTitles$2(this));
        this.deadlineOptionsTitles$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(WalletSwapFeePresenter$slipOptions$2.INSTANCE);
        this.slipOptions$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new WalletSwapFeePresenter$slipOptionsTitles$2(this));
        this.slipOptionsTitles$delegate = lazy6;
        PublishSubject<SwapSlippage> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.slipChangeEvent = create;
    }

    public final CryptoSwapMetadata getMetadata() {
        return this.metadata;
    }

    public final void setMetadata(CryptoSwapMetadata cryptoSwapMetadata) {
        Intrinsics.checkNotNullParameter(cryptoSwapMetadata, "<set-?>");
        this.metadata = cryptoSwapMetadata;
    }

    public final GasPriceItem getSelectedFee() {
        return this.selectedFee;
    }

    public final void setSelectedFee(GasPriceItem gasPriceItem) {
        Intrinsics.checkNotNullParameter(gasPriceItem, "<set-?>");
        this.selectedFee = gasPriceItem;
    }

    public final SwapDeadline getSelectedDeadline() {
        return this.selectedDeadline;
    }

    public final SwapSlippage getSelectedSlip() {
        return this.selectedSlip;
    }

    public final void setSelectedSlip(SwapSlippage swapSlippage) {
        Intrinsics.checkNotNullParameter(swapSlippage, "<set-?>");
        this.selectedSlip = swapSlippage;
    }

    public final TransactionSpeedLevel[] getFeesOptions() {
        return (TransactionSpeedLevel[]) this.feesOptions$delegate.getValue();
    }

    public final String[] getFeesOptionsTitles() {
        return (String[]) this.feesOptionsTitles$delegate.getValue();
    }

    public final SwapDeadline[] getDeadlineOptions() {
        return (SwapDeadline[]) this.deadlineOptions$delegate.getValue();
    }

    public final String[] getDeadlineOptionsTitles() {
        return (String[]) this.deadlineOptionsTitles$delegate.getValue();
    }

    public final SwapSlippage[] getSlipOptions() {
        return (SwapSlippage[]) this.slipOptions$delegate.getValue();
    }

    public final String[] getSlipOptionsTitles() {
        return (String[]) this.slipOptionsTitles$delegate.getValue();
    }

    public final void selectFee(int i) {
        TransactionSpeedLevel transactionSpeedLevel = getFeesOptions()[i];
        this.selectedFee = new GasPriceItem(transactionSpeedLevel, TokenInfo.Companion.map(this.metadata.getFeeTokenCode()), this.metadata.getTransactionParams().getFeeByLevel(transactionSpeedLevel));
        ((WalletSwapFeeView) getViewState()).onFeeReselected();
    }

    public final void selectDeadline(int i) {
        this.selectedDeadline = getDeadlineOptions()[i];
    }

    public final void selectSlip(int i) {
        this.slipChangeEvent.onNext(getSlipOptions()[i]);
    }

    public final SwapFeeScreenArgs getFeeArgs() {
        return new SwapFeeScreenArgs(this.metadata, this.selectedDeadline, this.selectedSlip, this.selectedFee, this.args.getNetworkType(), this.args.getOutputNetworkType(), this.args.getProtocol());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToChangeEvents();
    }

    private final void subscribeToChangeEvents() {
        Observable observeOn = this.slipChangeEvent.debounce(250L, TimeUnit.MILLISECONDS).distinctUntilChanged().flatMap(new Function() { // from class: com.smedialink.ui.wallet.swap.fee.WalletSwapFeePresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1754subscribeToChangeEvents$lambda0;
                m1754subscribeToChangeEvents$lambda0 = WalletSwapFeePresenter.m1754subscribeToChangeEvents$lambda0(WalletSwapFeePresenter.this, (SwapSlippage) obj);
                return m1754subscribeToChangeEvents$lambda0;
            }
        }).subscribeOn(this.schedulersProvider.mo708io()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "slipChangeEvent\n        …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletSwapFeePresenter.this.setMetadata((CryptoSwapMetadata) success.getData());
                    WalletSwapFeePresenter walletSwapFeePresenter = WalletSwapFeePresenter.this;
                    walletSwapFeePresenter.setSelectedFee(new GasPriceItem(walletSwapFeePresenter.getSelectedFee().getSpeedLevel(), TokenInfo.Companion.map(((CryptoSwapMetadata) success.getData()).getFeeTokenCode()), ((CryptoSwapMetadata) success.getData()).getTransactionParams().getFeeByLevel(WalletSwapFeePresenter.this.getSelectedFee().getSpeedLevel())));
                    ((WalletSwapFeeView) WalletSwapFeePresenter.this.getViewState()).onFeeReselected();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletSwapFeePresenter.this.resourceManager;
                    ((WalletSwapFeeView) WalletSwapFeePresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToChangeEvents$lambda-0  reason: not valid java name */
    public static final ObservableSource m1754subscribeToChangeEvents$lambda0(WalletSwapFeePresenter this$0, SwapSlippage slippage) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(slippage, "slippage");
        this$0.setSelectedSlip(slippage);
        SwapInteractor swapInteractor = this$0.swapInteractor;
        TokenCode inputTokenCode = this$0.args.getMetadata().getInputTokenCode();
        TokenCode outputTokenCode = this$0.args.getMetadata().getOutputTokenCode();
        String bigDecimal = this$0.args.getMetadata().getAmountIn().toString();
        Intrinsics.checkNotNullExpressionValue(bigDecimal, "args.metadata.amountIn.toString()");
        Observable<Result<CryptoSwapMetadata>> quoteToSwap = swapInteractor.getQuoteToSwap(inputTokenCode, outputTokenCode, bigDecimal, TradeType.EXACT_INPUT, slippage.getPercent(), this$0.args.getNetworkType(), this$0.args.getOutputNetworkType(), this$0.args.getProtocol());
        T viewState = this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        return RxExtKt.withLoadingDialog$default((Observable) quoteToSwap, (BaseView) viewState, false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] initFeesTitles() {
        TransactionSpeedLevel[] feesOptions = getFeesOptions();
        ArrayList arrayList = new ArrayList(feesOptions.length);
        for (TransactionSpeedLevel transactionSpeedLevel : feesOptions) {
            arrayList.add(this.resourceManager.getString(transactionSpeedLevel.getTitle()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] initDeadlineTitles() {
        SwapDeadline[] deadlineOptions = getDeadlineOptions();
        ArrayList arrayList = new ArrayList(deadlineOptions.length);
        for (SwapDeadline swapDeadline : deadlineOptions) {
            arrayList.add(this.resourceManager.getString(C3158R.string.wallet_swap_transaction_options_deadline, String.valueOf(swapDeadline.getMinutes())));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] initSlipTitles() {
        SwapSlippage[] slipOptions = getSlipOptions();
        ArrayList arrayList = new ArrayList(slipOptions.length);
        for (SwapSlippage swapSlippage : slipOptions) {
            arrayList.add(this.resourceManager.getString(C3158R.string.wallet_swap_transaction_options_slip, StringExtKt.stripZeros$default(String.valueOf(swapSlippage.getPercent()), (char) 0, 1, null)));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    /* compiled from: WalletSwapFeePresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.swap.fee.WalletSwapFeePresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
