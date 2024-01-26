package com.iMe.p030ui.wallet.crypto.address_mismatch;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
import timber.log.Timber;
/* compiled from: AddressMismatchPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter */
/* loaded from: classes3.dex */
public final class AddressMismatchPresenter extends BasePresenter<AddressMismatchView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;

    public AddressMismatchPresenter(ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, SchedulersProvider schedulersProvider, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.schedulersProvider = schedulersProvider;
        this.rxEventBus = rxEventBus;
    }

    public final DialogModel getDeleteWalletDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3632R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3632R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3632R.string.common_cancel), this.resourceManager.getString(C3632R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn));
    }

    public static /* synthetic */ void deleteActiveWallet$default(AddressMismatchPresenter addressMismatchPresenter, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        addressMismatchPresenter.deleteActiveWallet(j);
    }

    public final void deleteActiveWallet(final long j) {
        Observable observeOn = CryptoWalletInteractor.deleteWallet$default(this.cryptoWalletInteractor, this.cryptoPreferenceHelper.getCurrentBlockchainType(), false, false, 4, null).observeOn(this.schedulersProvider.mo1013ui());
        final Function1<Result<? extends Boolean>, Unit> function1 = new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$deleteActiveWallet$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                invoke2((Result<Boolean>) result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<Boolean> result) {
                ResourceManager resourceManager;
                if (result instanceof Result.Success) {
                    ((AddressMismatchView) AddressMismatchPresenter.this.getViewState()).closeScreen(j);
                } else if (result instanceof Result.Error) {
                    Intrinsics.checkNotNullExpressionValue(result, "result");
                    resourceManager = AddressMismatchPresenter.this.resourceManager;
                    ((AddressMismatchView) AddressMismatchPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        };
        Consumer consumer = new Consumer() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AddressMismatchPresenter.deleteActiveWallet$lambda$0(Function1.this, obj);
            }
        };
        final Function1<Throwable, Unit> function12 = new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$deleteActiveWallet$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m8d(th);
                AddressMismatchView addressMismatchView = (AddressMismatchView) AddressMismatchPresenter.this.getViewState();
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                addressMismatchView.showToast(message);
            }
        };
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AddressMismatchPresenter.deleteActiveWallet$lambda$1(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "fun deleteActiveWallet(d…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteActiveWallet$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteActiveWallet$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        listenEvents();
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.CryptoEvent, Unit>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
                m1625invoke(cryptoEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1625invoke(DomainRxEvents.CryptoEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessSaveBackup.INSTANCE)) {
                    AddressMismatchPresenter.this.deleteActiveWallet(250L);
                } else if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE)) {
                    ((AddressMismatchView) AddressMismatchPresenter.this.getViewState()).closeScreen(250L);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }
}
