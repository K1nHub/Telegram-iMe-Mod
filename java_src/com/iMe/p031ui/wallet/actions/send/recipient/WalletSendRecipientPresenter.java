package com.iMe.p031ui.wallet.actions.send.recipient;

import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
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
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import timber.log.Timber;
/* compiled from: WalletSendRecipientPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter */
/* loaded from: classes4.dex */
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
        Observable<Result<String>> observeOn = CryptoHelper.extractAddress(str, this.currentNetworkType.getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddress(\n        …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1426invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1426invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    if (!(((CharSequence) success.getData()).length() > 0)) {
                        resourceManager = WalletSendRecipientPresenter.this.resourceManager;
                        ((WalletSendRecipientView) WalletSendRecipientPresenter.this.getViewState()).showToast(resourceManager.getString(C3558R.string.wallet_recipient_validation_address_error));
                        return;
                    }
                    ((WalletSendRecipientView) WalletSendRecipientPresenter.this.getViewState()).onRecipientSelected("", (String) success.getData(), false);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n….invoke(error)\n        })");
    }
}
