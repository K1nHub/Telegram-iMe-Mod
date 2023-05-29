package com.iMe.manager.crypto.recipient;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import org.telegram.messenger.C3295R;
/* compiled from: CryptoRecipientManager.kt */
/* loaded from: classes3.dex */
public final class CryptoRecipientManager {
    private final CryptoPermissionInteractor cryptoPermissionInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final CompositeDisposable subscriptions;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;
    private CryptoRecipientView viewState;

    /* compiled from: CryptoRecipientManager.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BlockchainType.values().length];
            try {
                iArr[BlockchainType.EVM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BlockchainType.TRON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BlockchainType.TON.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BlockchainType.BITCOIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public CryptoRecipientManager(ResourceManager resourceManager, TelegramApi telegramApi, TelegramGateway telegramGateway, TelegramControllersGateway telegramControllersGateway, SchedulersProvider schedulersProvider, CryptoPermissionInteractor cryptoPermissionInteractor) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(cryptoPermissionInteractor, "cryptoPermissionInteractor");
        this.resourceManager = resourceManager;
        this.telegramApi = telegramApi;
        this.telegramGateway = telegramGateway;
        this.telegramControllersGateway = telegramControllersGateway;
        this.schedulersProvider = schedulersProvider;
        this.cryptoPermissionInteractor = cryptoPermissionInteractor;
        this.subscriptions = new CompositeDisposable();
    }

    public void attachViewState(CryptoRecipientView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewState = view;
    }

    public void onDetachViewState() {
        this.viewState = null;
        this.subscriptions.clear();
    }

    public void requestAddressPermission(String recipient) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = -1L;
        Observable<R> flatMap = this.cryptoPermissionInteractor.requestAllAddressesPermission(recipient).flatMap(new C1578xd06610b9(new C1573xd1623ac9(recipient, ref$LongRef, this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) getViewState(), false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1574x2b67fdc6(this, ref$LongRef, recipient)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1575x2b67fdc7(getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    public void loadAddressInfoById(String recipient, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<AccountInfo>> observeOn = this.cryptoPermissionInteractor.getAddressInfo(recipient).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1571x4c48b562(this, recipient, blockchainType)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1572x4c48b563(getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, String> formatBotRequestParams(String str, String str2) {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m85to(TtmlNode.ATTR_ID, str), TuplesKt.m85to("query_id", str2), TuplesKt.m85to("bot", String.valueOf(AppConfiguration$Wallet.getWalletBotId())), TuplesKt.m85to("bot_name", AppConfiguration$Wallet.getWalletBotUsernameLowerCase()));
        return hashMapOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CryptoRecipientView getViewState() {
        CryptoRecipientView cryptoRecipientView = this.viewState;
        if (cryptoRecipientView != null) {
            return cryptoRecipientView;
        }
        throw new IllegalStateException("Please call attachViewState(view: CryptoRecipientView) first!".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogModel getRequestPermissionDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3295R.string.wallet_recipient_request_permission_dialog_title), this.resourceManager.getString(C3295R.string.wallet_recipient_request_permission_dialog_description), this.resourceManager.getString(C3295R.string.common_cancel), this.resourceManager.getString(C3295R.string.wallet_recipient_request_permission_dialog_action_btn_text));
    }

    private final void autoDispose(Disposable disposable) {
        this.subscriptions.add(disposable);
    }

    /* compiled from: CryptoRecipientManager.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
