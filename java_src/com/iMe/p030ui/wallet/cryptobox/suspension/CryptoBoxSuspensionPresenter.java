package com.iMe.p030ui.wallet.cryptobox.suspension;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.mapper.cryptobox.CryptoBoxTransactionActionUiMappingKt;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxTransactionAction;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: CryptoBoxSuspensionPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionPresenter */
/* loaded from: classes3.dex */
public final class CryptoBoxSuspensionPresenter extends BasePresenter<CryptoBoxSuspensionView> {
    private final CryptoBoxInteractor cryptoBoxInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final CryptoBoxTransactionAction transactionAction;

    public CryptoBoxSuspensionPresenter(CryptoBoxTransactionAction transactionAction, CryptoBoxInteractor cryptoBoxInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(transactionAction, "transactionAction");
        Intrinsics.checkNotNullParameter(cryptoBoxInteractor, "cryptoBoxInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.transactionAction = transactionAction;
        this.cryptoBoxInteractor = cryptoBoxInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
    }

    public final void onStopClick() {
        Observable<Result<String>> observeOn = this.cryptoBoxInteractor.sendSuspensionExecute(this.transactionAction.getTransaction()).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        final CryptoBoxSuspensionView cryptoBoxSuspensionView = (CryptoBoxSuspensionView) getViewState();
        Observable withLoadingUpdate = RxExtKt.withLoadingUpdate(observeOn, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CryptoBoxSuspensionView.this.renderButtonLoading(((Boolean) obj).booleanValue());
            }
        });
        final BaseView baseView = (BaseView) getViewState();
        Intrinsics.checkNotNullExpressionValue(withLoadingUpdate.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionPresenter$onStopClick$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1696invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1696invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    ((CryptoBoxSuspensionView) CryptoBoxSuspensionPresenter.this.getViewState()).showTransactionSuccess();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = CryptoBoxSuspensionPresenter.this.resourceManager;
                    ((CryptoBoxSuspensionView) CryptoBoxSuspensionPresenter.this.getViewState()).showTransactionError(error.getMessage(resourceManager));
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionPresenter$onStopClick$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((CryptoBoxSuspensionView) getViewState()).showFee(CryptoBoxTransactionActionUiMappingKt.mapToUi(this.transactionAction, this.resourceManager));
    }
}
