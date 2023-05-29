package com.iMe.p031ui.wallet.crypto.address_mismatch;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3290R;
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
        return new DialogModel(this.resourceManager.getString(C3290R.string.wallet_enter_eth_password_delete_wallet_dialog_title), this.resourceManager.getString(C3290R.string.wallet_enter_eth_password_delete_wallet_dialog_description), this.resourceManager.getString(C3290R.string.common_cancel), this.resourceManager.getString(C3290R.string.wallet_enter_eth_password_delete_wallet_dialog_submit_btn));
    }

    public static /* synthetic */ void deleteActiveWallet$default(AddressMismatchPresenter addressMismatchPresenter, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        addressMismatchPresenter.deleteActiveWallet(j);
    }

    public final void deleteActiveWallet(long j) {
        Observable observeOn = CryptoWalletInteractor.deleteWallet$default(this.cryptoWalletInteractor, this.cryptoPreferenceHelper.getCurrentBlockchainType(), false, false, 4, null).observeOn(this.schedulersProvider.mo698ui());
        final AddressMismatchPresenter$deleteActiveWallet$1 addressMismatchPresenter$deleteActiveWallet$1 = new AddressMismatchPresenter$deleteActiveWallet$1(this, j);
        Consumer consumer = new Consumer() { // from class: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AddressMismatchPresenter.deleteActiveWallet$lambda$0(Function1.this, obj);
            }
        };
        final AddressMismatchPresenter$deleteActiveWallet$2 addressMismatchPresenter$deleteActiveWallet$2 = new AddressMismatchPresenter$deleteActiveWallet$2(this);
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
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2115x4b3c3661(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2116x4b3c3662(null))), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }
}
