package com.iMe.p030ui.wallet.actions.send.recipient;

import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.SendCryptoQRData;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.CryptoHelper;
import io.reactivex.Observable;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$TL_messageEntityTextUrl;
import timber.log.Timber;
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

    public final void validateRecipient(String recipient, boolean z) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        trim = StringsKt__StringsKt.trim(recipient);
        validateRecipientAddress(trim.toString(), z);
    }

    public final ArrayList<SendMessagesHelper.SendingMediaInfo> getSendingMediaInfo() {
        int indexOf$default;
        int indexOf$default2;
        ArrayList<TLRPC$MessageEntity> arrayListOf;
        ArrayList<SendMessagesHelper.SendingMediaInfo> arrayListOf2;
        ResourceManager resourceManager = this.resourceManager;
        int i = C3634R.string.wallet_recipient_error_send_message_invitation;
        int i2 = C3634R.string.wallet_backup_secret_words_pdf_title;
        ResourceManager resourceManager2 = this.resourceManager;
        int i3 = C3634R.string.neurobots_store_bot_action_download;
        String string = resourceManager.getString(i, resourceManager.getString(i2), resourceManager2.getString(i3));
        TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl = new TLRPC$TL_messageEntityTextUrl();
        String string2 = this.resourceManager.getString(i3);
        tLRPC$TL_messageEntityTextUrl.url = "https://imem.app/download";
        tLRPC$TL_messageEntityTextUrl.length = string2.length();
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, string2, 0, false, 6, (Object) null);
        tLRPC$TL_messageEntityTextUrl.offset = indexOf$default;
        Unit unit = Unit.INSTANCE;
        TLRPC$TL_messageEntityTextUrl tLRPC$TL_messageEntityTextUrl2 = new TLRPC$TL_messageEntityTextUrl();
        String string3 = this.resourceManager.getString(i2);
        tLRPC$TL_messageEntityTextUrl2.url = "https://imem.app";
        tLRPC$TL_messageEntityTextUrl2.length = string3.length();
        indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) string, string3, 0, false, 6, (Object) null);
        tLRPC$TL_messageEntityTextUrl2.offset = indexOf$default2;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(tLRPC$TL_messageEntityTextUrl, tLRPC$TL_messageEntityTextUrl2);
        SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
        sendingMediaInfo.hasMediaSpoilers = false;
        sendingMediaInfo.canDeleteAfter = false;
        sendingMediaInfo.caption = string;
        sendingMediaInfo.entities = arrayListOf;
        sendingMediaInfo.forceImage = false;
        sendingMediaInfo.isVideo = false;
        sendingMediaInfo.ttl = 0;
        sendingMediaInfo.updateStickersOrder = false;
        sendingMediaInfo.uri = this.resourceManager.getUriDrawable(C3634R.C3636drawable.fork_banner_ime);
        arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf(sendingMediaInfo);
        return arrayListOf2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        CryptoRecipientManager cryptoRecipientManager = this.cryptoRecipientManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        cryptoRecipientManager.attachViewState((CryptoRecipientView) viewState);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.cryptoRecipientManager.onDetachViewState();
        super.onDestroy();
    }

    private final void validateRecipientAddress(String str, boolean z) {
        if (z) {
            loadAddressInfoById(str, this.currentNetworkType.getBlockchainType());
            return;
        }
        Observable<Result<SendCryptoQRData>> observeOn = CryptoHelper.extractAddressAndAmount(str, this.currentNetworkType.getBlockchainType(), this.cryptoWalletInteractor).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "extractAddressAndAmount(…(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends SendCryptoQRData>, Unit>() { // from class: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SendCryptoQRData> result) {
                m1618invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1618invoke(Result<? extends SendCryptoQRData> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends SendCryptoQRData> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    if (!(((SendCryptoQRData) success.getData()).getAddress().length() > 0)) {
                        resourceManager = WalletSendRecipientPresenter.this.resourceManager;
                        ((WalletSendRecipientView) WalletSendRecipientPresenter.this.getViewState()).showToast(resourceManager.getString(C3634R.string.wallet_recipient_validation_address_error));
                        return;
                    }
                    ((WalletSendRecipientView) WalletSendRecipientPresenter.this.getViewState()).onRecipientSelected("", ((SendCryptoQRData) success.getData()).getAddress(), false);
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }
}
