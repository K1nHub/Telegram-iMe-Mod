package com.iMe.p031ui.wallet.actions.send.recipient;

import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
/* compiled from: WalletSendRecipientPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter */
/* loaded from: classes3.dex */
public final class WalletSendRecipientPresenter extends BasePresenter<WalletSendRecipientView> {
    private final CryptoRecipientManager cryptoRecipientManager;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final Network currentNetworkType;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;

    public void loadAddressInfoById(String recipient, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.cryptoRecipientManager.loadAddressInfoById(recipient, blockchainType);
    }

    public WalletSendRecipientPresenter(String str, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, CryptoRecipientManager cryptoRecipientManager, CryptoWalletInteractor cryptoWalletInteractor, SchedulersProvider schedulersProvider) {
        Network networkById;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoRecipientManager, "cryptoRecipientManager");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.resourceManager = resourceManager;
        this.cryptoRecipientManager = cryptoRecipientManager;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.schedulersProvider = schedulersProvider;
        if (str == null || str.length() == 0) {
            networkById = cryptoPreferenceHelper.getNetwork();
        } else {
            networkById = NetworksHelper.getNetworkById(str);
        }
        this.currentNetworkType = networkById;
    }

    public final Network getCurrentNetworkType() {
        return this.currentNetworkType;
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

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.cryptoRecipientManager.onDetachViewState();
        super.onDestroy();
    }

    private final void validateRecipientAddress(String str, boolean z) {
        if (z) {
            loadAddressInfoById(str, this.currentNetworkType.getBlockchainType());
            return;
        }
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(str, this.currentNetworkType.getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2105xbc0d2688(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2106xbc0d2689(null))), "viewState: BaseView? = n…Error.invoke()\n        })");
    }
}
