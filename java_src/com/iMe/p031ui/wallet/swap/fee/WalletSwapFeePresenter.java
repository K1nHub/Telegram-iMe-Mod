package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.model.wallet.crypto.send.fee.GasPriceItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.wallet.swap.SwapDeadline;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapSlippage;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3473R;
import timber.log.Timber;
/* compiled from: WalletSwapFeePresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter */
/* loaded from: classes6.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TransactionSpeedLevel[]>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$feesOptions$2
            @Override // kotlin.jvm.functions.Function0
            public final TransactionSpeedLevel[] invoke() {
                return TransactionSpeedLevel.values();
            }
        });
        this.feesOptions$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<String[]>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$feesOptionsTitles$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String[] invoke() {
                String[] initFeesTitles;
                initFeesTitles = WalletSwapFeePresenter.this.initFeesTitles();
                return initFeesTitles;
            }
        });
        this.feesOptionsTitles$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<SwapDeadline[]>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$deadlineOptions$2
            @Override // kotlin.jvm.functions.Function0
            public final SwapDeadline[] invoke() {
                return SwapDeadline.values();
            }
        });
        this.deadlineOptions$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<String[]>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$deadlineOptionsTitles$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String[] invoke() {
                String[] initDeadlineTitles;
                initDeadlineTitles = WalletSwapFeePresenter.this.initDeadlineTitles();
                return initDeadlineTitles;
            }
        });
        this.deadlineOptionsTitles$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<SwapSlippage[]>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$slipOptions$2
            @Override // kotlin.jvm.functions.Function0
            public final SwapSlippage[] invoke() {
                return SwapSlippage.values();
            }
        });
        this.slipOptions$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<String[]>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$slipOptionsTitles$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String[] invoke() {
                String[] initSlipTitles;
                initSlipTitles = WalletSwapFeePresenter.this.initSlipTitles();
                return initSlipTitles;
            }
        });
        this.slipOptionsTitles$delegate = lazy6;
        this.metadata = args.getMetadata();
        this.selectedFee = args.getSelectedFee();
        this.selectedDeadline = args.getSelectedDeadline();
        this.selectedSlip = args.getSelectedSlippage();
        PublishSubject<SwapSlippage> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.slipChangeEvent = create;
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

    public final void selectFee(int i) {
        TransactionSpeedLevel transactionSpeedLevel = getFeesOptions()[i];
        this.selectedFee = new GasPriceItem(transactionSpeedLevel, this.metadata.getFeeToken(), this.metadata.getTransactionParams().getFeeByLevel(transactionSpeedLevel));
        ((WalletSwapFeeView) getViewState()).onFeeReselected();
    }

    public final void selectDeadline(int i) {
        this.selectedDeadline = getDeadlineOptions()[i];
    }

    public final void selectSlip(int i) {
        this.slipChangeEvent.onNext(getSlipOptions()[i]);
    }

    public final SwapFeeScreenArgs getFeeArgs() {
        return new SwapFeeScreenArgs(this.metadata, this.selectedDeadline, this.selectedSlip, this.selectedFee, this.args.getProtocol());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToChangeEvents();
    }

    private final void subscribeToChangeEvents() {
        Observable<SwapSlippage> distinctUntilChanged = this.slipChangeEvent.debounce(300L, TimeUnit.MILLISECONDS).distinctUntilChanged();
        final Function1<SwapSlippage, ObservableSource<? extends Result<? extends CryptoSwapMetadata>>> function1 = new Function1<SwapSlippage, ObservableSource<? extends Result<? extends CryptoSwapMetadata>>>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<CryptoSwapMetadata>> invoke(SwapSlippage slippage) {
                SwapInteractor swapInteractor;
                SwapFeeScreenArgs swapFeeScreenArgs;
                SwapFeeScreenArgs swapFeeScreenArgs2;
                SwapFeeScreenArgs swapFeeScreenArgs3;
                SwapFeeScreenArgs swapFeeScreenArgs4;
                Intrinsics.checkNotNullParameter(slippage, "slippage");
                WalletSwapFeePresenter.this.setSelectedSlip(slippage);
                swapInteractor = WalletSwapFeePresenter.this.swapInteractor;
                swapFeeScreenArgs = WalletSwapFeePresenter.this.args;
                SwapProtocol protocol = swapFeeScreenArgs.getProtocol();
                swapFeeScreenArgs2 = WalletSwapFeePresenter.this.args;
                Token indexedToken = TokenExtKt.toIndexedToken(swapFeeScreenArgs2.getMetadata().getInputToken());
                swapFeeScreenArgs3 = WalletSwapFeePresenter.this.args;
                Token indexedToken2 = TokenExtKt.toIndexedToken(swapFeeScreenArgs3.getMetadata().getOutputToken());
                swapFeeScreenArgs4 = WalletSwapFeePresenter.this.args;
                String bigDecimal = swapFeeScreenArgs4.getMetadata().getAmountIn().toString();
                Intrinsics.checkNotNullExpressionValue(bigDecimal, "args.metadata.amountIn.toString()");
                Observable<Result<CryptoSwapMetadata>> quoteToSwap = swapInteractor.getQuoteToSwap(protocol, indexedToken, indexedToken2, bigDecimal, TradeType.EXACT_INPUT, Float.valueOf(slippage.getPercent()));
                T viewState = WalletSwapFeePresenter.this.getViewState();
                Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                return RxExtKt.withLoadingDialog$default((Observable) quoteToSwap, (BaseView) viewState, false, 2, (Object) null);
            }
        };
        Observable observeOn = distinctUntilChanged.flatMap(new Function() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToChangeEvents$lambda$0;
                subscribeToChangeEvents$lambda$0 = WalletSwapFeePresenter.subscribeToChangeEvents$lambda$0(Function1.this, obj);
                return subscribeToChangeEvents$lambda$0;
            }
        }).subscribeOn(this.schedulersProvider.mo717io()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun subscribeToC…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CryptoSwapMetadata>, Unit>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CryptoSwapMetadata> result) {
                m1596invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1596invoke(Result<? extends CryptoSwapMetadata> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CryptoSwapMetadata> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    WalletSwapFeePresenter.this.setMetadata((CryptoSwapMetadata) success.getData());
                    WalletSwapFeePresenter walletSwapFeePresenter = WalletSwapFeePresenter.this;
                    walletSwapFeePresenter.setSelectedFee(new GasPriceItem(walletSwapFeePresenter.getSelectedFee().getSpeedLevel(), ((CryptoSwapMetadata) success.getData()).getFeeToken(), ((CryptoSwapMetadata) success.getData()).getTransactionParams().getFeeByLevel(WalletSwapFeePresenter.this.getSelectedFee().getSpeedLevel())));
                    ((WalletSwapFeeView) WalletSwapFeePresenter.this.getViewState()).onFeeReselected();
                } else if (result instanceof Result.Error) {
                    resourceManager = WalletSwapFeePresenter.this.resourceManager;
                    ((WalletSwapFeeView) WalletSwapFeePresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$2
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
            arrayList.add(this.resourceManager.getString(C3473R.string.wallet_swap_transaction_options_deadline, String.valueOf(swapDeadline.getMinutes())));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String[] initSlipTitles() {
        SwapSlippage[] slipOptions = getSlipOptions();
        ArrayList arrayList = new ArrayList(slipOptions.length);
        for (SwapSlippage swapSlippage : slipOptions) {
            arrayList.add(this.resourceManager.getString(C3473R.string.wallet_swap_transaction_options_slip, StringExtKt.stripZeros$default(String.valueOf(swapSlippage.getPercent()), (char) 0, 1, null)));
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
