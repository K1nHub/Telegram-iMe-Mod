package com.smedialink.p031ui.wallet.crypto.address_mismatch;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: AddressMismatchPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter */
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
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3158R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn));
    }

    public static /* synthetic */ void deleteActiveEthWallet$default(AddressMismatchPresenter addressMismatchPresenter, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        addressMismatchPresenter.deleteActiveEthWallet(j);
    }

    public final void deleteActiveEthWallet(final long j) {
        Disposable subscribe = this.cryptoWalletInteractor.deleteWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType(), false).observeOn(this.schedulersProvider.mo707ui()).subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AddressMismatchPresenter.m1567deleteActiveEthWallet$lambda0(AddressMismatchPresenter.this, j, (Result) obj);
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AddressMismatchPresenter.m1568deleteActiveEthWallet$lambda1(AddressMismatchPresenter.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "cryptoWalletInteractor\n …pty())\n                })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteActiveEthWallet$lambda-0  reason: not valid java name */
    public static final void m1567deleteActiveEthWallet$lambda0(AddressMismatchPresenter this$0, long j, Result result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (result instanceof Result.Success) {
            ((AddressMismatchView) this$0.getViewState()).closeScreen(j);
        } else if (result instanceof Result.Error) {
            ((AddressMismatchView) this$0.getViewState()).showToast(((Result.Error) result).getError().getMessage(this$0.resourceManager));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteActiveEthWallet$lambda-1  reason: not valid java name */
    public static final void m1568deleteActiveEthWallet$lambda1(AddressMismatchPresenter this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Timber.m6d(th);
        AddressMismatchView addressMismatchView = (AddressMismatchView) this$0.getViewState();
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        addressMismatchView.showToast(message);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        listenEvents();
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = (DomainRxEvents.CryptoEvent) it;
                if (cryptoEvent instanceof DomainRxEvents.SuccessSaveBackup) {
                    AddressMismatchPresenter.this.deleteActiveEthWallet(250L);
                } else if (cryptoEvent instanceof DomainRxEvents.SuccessResetWallet) {
                    ((AddressMismatchView) AddressMismatchPresenter.this.getViewState()).closeScreen(250L);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
        }), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }
}
