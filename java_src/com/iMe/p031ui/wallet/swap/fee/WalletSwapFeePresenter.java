package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.swap.SwapDeadline;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3290R;
/* compiled from: WalletSwapFeePresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter */
/* loaded from: classes4.dex */
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
        Observable<SwapSlippage> distinctUntilChanged = this.slipChangeEvent.debounce(250L, TimeUnit.MILLISECONDS).distinctUntilChanged();
        final WalletSwapFeePresenter$subscribeToChangeEvents$1 walletSwapFeePresenter$subscribeToChangeEvents$1 = new WalletSwapFeePresenter$subscribeToChangeEvents$1(this);
        Observable observeOn = distinctUntilChanged.flatMap(new Function() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToChangeEvents$lambda$0;
                subscribeToChangeEvents$lambda$0 = WalletSwapFeePresenter.subscribeToChangeEvents$lambda$0(Function1.this, obj);
                return subscribeToChangeEvents$lambda$0;
            }
        }).subscribeOn(this.schedulersProvider.mo699io()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun subscribeToC…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2366x4867fe3b(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2367x4867fe3c(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToChangeEvents$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] initFeesTitles() {
        TransactionSpeedLevel[] feesOptions = getFeesOptions();
        ArrayList arrayList = new ArrayList(feesOptions.length);
        for (TransactionSpeedLevel transactionSpeedLevel : feesOptions) {
            arrayList.add(this.resourceManager.getString(transactionSpeedLevel.getTitle()));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] initDeadlineTitles() {
        SwapDeadline[] deadlineOptions = getDeadlineOptions();
        ArrayList arrayList = new ArrayList(deadlineOptions.length);
        for (SwapDeadline swapDeadline : deadlineOptions) {
            arrayList.add(this.resourceManager.getString(C3290R.string.wallet_swap_transaction_options_deadline, String.valueOf(swapDeadline.getMinutes())));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] initSlipTitles() {
        SwapSlippage[] slipOptions = getSlipOptions();
        ArrayList arrayList = new ArrayList(slipOptions.length);
        for (SwapSlippage swapSlippage : slipOptions) {
            arrayList.add(this.resourceManager.getString(C3290R.string.wallet_swap_transaction_options_slip, StringExtKt.stripZeros$default(String.valueOf(swapSlippage.getPercent()), (char) 0, 1, null)));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* compiled from: WalletSwapFeePresenter.kt */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
