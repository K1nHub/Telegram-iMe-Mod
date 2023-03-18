package com.smedialink.p031ui.wallet.actions.send.recipient;

import com.smedialink.manager.crypto.recipient.CryptoRecipientManager;
import com.smedialink.manager.crypto.recipient.CryptoRecipientView;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.smedialink.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
/* compiled from: WalletSendRecipientPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter */
/* loaded from: classes3.dex */
public final class WalletSendRecipientPresenter extends BasePresenter<WalletSendRecipientView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoRecipientManager cryptoRecipientManager;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final NetworkType networkType;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;

    public void loadAddressInfoById(String recipient, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.cryptoRecipientManager.loadAddressInfoById(recipient, blockchainType);
    }

    public WalletSendRecipientPresenter(NetworkType networkType, ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoRecipientManager cryptoRecipientManager, CryptoWalletInteractor cryptoWalletInteractor, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoRecipientManager, "cryptoRecipientManager");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.networkType = networkType;
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoRecipientManager = cryptoRecipientManager;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.schedulersProvider = schedulersProvider;
    }

    public final NetworkType getCurrentNetworkType() {
        NetworkType networkType = this.networkType;
        return networkType == null ? this.cryptoPreferenceHelper.getNetworkType() : networkType;
    }

    public final void validateRecipient(String recipient, boolean z) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        trim = StringsKt__StringsKt.trim(recipient);
        validateRecipientAddress(trim.toString(), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        CryptoRecipientManager cryptoRecipientManager = this.cryptoRecipientManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        cryptoRecipientManager.attachViewState((CryptoRecipientView) viewState);
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.cryptoRecipientManager.onDetachViewState();
        super.onDestroy();
    }

    private final void validateRecipientAddress(String str, boolean z) {
        if (z) {
            loadAddressInfoById(str, getCurrentNetworkType().getBlockchainType());
            return;
        }
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(str, getCurrentNetworkType().getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2002xbc0d2688(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2003xbc0d2689(null))), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }
}
