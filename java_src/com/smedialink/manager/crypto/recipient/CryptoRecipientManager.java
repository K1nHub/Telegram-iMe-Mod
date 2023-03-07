package com.smedialink.manager.crypto.recipient;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.manager.TelegramApi;
import com.smedialink.manager.crypto.recipient.CryptoRecipientManager;
import com.smedialink.mapper.crypto.AddressUiMappingKt;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.send.AddressAccessState;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.common.AppConfiguration$Wallet;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.AccountInfo;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$messages_BotResults;
import timber.log.Timber;
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
            iArr[BlockchainType.EVM.ordinal()] = 1;
            iArr[BlockchainType.TON.ordinal()] = 2;
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

    public void requestAddressPermission(final String recipient) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = -1L;
        Observable<R> flatMap = this.cryptoPermissionInteractor.requestAllAddressesPermission(recipient).flatMap(new Function() { // from class: com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x006c  */
            @Override // io.reactivex.functions.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final io.reactivex.ObservableSource apply(com.smedialink.storage.domain.model.Result r10) {
                /*
                    r9 = this;
                    java.lang.String r0 = "result"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                    boolean r0 = r10 instanceof com.smedialink.storage.domain.model.Result.Success
                    r1 = 2
                    r2 = 0
                    if (r0 == 0) goto L93
                    java.lang.String r0 = r1
                    java.lang.Long r0 = kotlin.text.StringsKt.toLongOrNull(r0)
                    kotlin.jvm.internal.Ref$LongRef r3 = r2
                    r4 = -1
                    if (r0 == 0) goto L2d
                    com.smedialink.manager.crypto.recipient.CryptoRecipientManager r6 = r3
                    com.smedialink.gateway.TelegramControllersGateway r6 = com.smedialink.manager.crypto.recipient.CryptoRecipientManager.access$getTelegramControllersGateway$p(r6)
                    r7 = 0
                    r8 = 1
                    org.telegram.messenger.MessagesController r6 = com.smedialink.gateway.TelegramControllersGateway.DefaultImpls.getMessagesController$default(r6, r7, r8, r2)
                    org.telegram.tgnet.TLRPC$User r0 = r6.getUser(r0)
                    if (r0 != 0) goto L2a
                    goto L2d
                L2a:
                    long r6 = r0.f1633id
                    goto L2e
                L2d:
                    r6 = r4
                L2e:
                    r3.element = r6
                    kotlin.jvm.internal.Ref$LongRef r0 = r2
                    long r6 = r0.element
                    int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
                    if (r0 == 0) goto L6c
                    com.smedialink.manager.crypto.recipient.CryptoRecipientManager r0 = r3
                    com.smedialink.manager.TelegramApi r1 = com.smedialink.manager.crypto.recipient.CryptoRecipientManager.access$getTelegramApi$p(r0)
                    java.lang.Object r10 = r10.getData()
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
                    r2 = r10
                    java.lang.String r2 = (java.lang.String) r2
                    kotlin.jvm.internal.Ref$LongRef r10 = r2
                    long r3 = r10.element
                    long r5 = com.smedialink.storage.common.AppConfiguration$Wallet.getWalletBotId()
                    io.reactivex.Observable r10 = r1.getInlineBot(r2, r3, r5)
                    com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda-0$$inlined$wrapAsResult$1 r0 = new com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda-0$$inlined$wrapAsResult$1
                    r0.<init>()
                    io.reactivex.Observable r10 = r10.map(r0)
                    com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda-0$$inlined$wrapAsResult$2 r0 = new com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda-0$$inlined$wrapAsResult$2
                    r0.<init>()
                    io.reactivex.Observable r10 = r10.onErrorReturn(r0)
                    java.lang.String r0 = "map { it.toSuccess() }\n …RESPONSE, it).toError() }"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                    goto Lac
                L6c:
                    com.smedialink.storage.data.network.model.error.ErrorModel r10 = new com.smedialink.storage.data.network.model.error.ErrorModel
                    com.smedialink.manager.crypto.recipient.CryptoRecipientManager r0 = r3
                    com.smedialink.storage.domain.utils.system.ResourceManager r0 = com.smedialink.manager.crypto.recipient.CryptoRecipientManager.access$getResourceManager$p(r0)
                    int r3 = org.telegram.messenger.C3158R.string.wallet_recipient_validation_chat_with_user_first_error
                    java.lang.String r4 = r0.getString(r3)
                    com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler$ErrorStatus r5 = com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler.ErrorStatus.BAD_RESPONSE
                    r6 = 0
                    r7 = 4
                    r8 = 0
                    r3 = r10
                    r3.<init>(r4, r5, r6, r7, r8)
                    com.smedialink.storage.domain.model.Result$Companion r0 = com.smedialink.storage.domain.model.Result.Companion
                    com.smedialink.storage.domain.model.Result r10 = com.smedialink.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                    io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                    java.lang.String r0 = "just(this)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                    goto Lac
                L93:
                    boolean r0 = r10 instanceof com.smedialink.storage.domain.model.Result.Error
                    if (r0 == 0) goto La8
                    com.smedialink.storage.domain.model.Result$Companion r0 = com.smedialink.storage.domain.model.Result.Companion
                    com.smedialink.storage.domain.model.Result$Error r10 = (com.smedialink.storage.domain.model.Result.Error) r10
                    com.smedialink.storage.data.network.model.error.ErrorModel r10 = r10.getError()
                    com.smedialink.storage.domain.model.Result r10 = com.smedialink.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                    io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                    goto Lac
                La8:
                    io.reactivex.Observable r10 = io.reactivex.Observable.empty()
                Lac:
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: com.smedialink.manager.crypto.recipient.C1452xd1623ac9.apply(com.smedialink.storage.domain.model.Result):io.reactivex.ObservableSource");
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final CryptoRecipientView viewState = getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                CryptoRecipientView viewState2;
                ResourceManager resourceManager;
                TelegramGateway telegramGateway;
                HashMap formatBotRequestParams;
                CryptoRecipientView viewState3;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    ArrayList<TLRPC$BotInlineResult> arrayList = ((TLRPC$messages_BotResults) success.getData()).results;
                    Intrinsics.checkNotNullExpressionValue(arrayList, "result.data.results");
                    Object first = CollectionsKt.first((List<? extends Object>) arrayList);
                    Intrinsics.checkNotNullExpressionValue(first, "result.data.results.first()");
                    TLRPC$BotInlineResult tLRPC$BotInlineResult = (TLRPC$BotInlineResult) first;
                    telegramGateway = CryptoRecipientManager.this.telegramGateway;
                    AccountInstance accountInstance = AccountInstance.getInstance(telegramGateway.getSelectedAccountIndex());
                    CryptoRecipientManager cryptoRecipientManager = CryptoRecipientManager.this;
                    String str = tLRPC$BotInlineResult.f1492id;
                    Intrinsics.checkNotNullExpressionValue(str, "inlineBot.id");
                    formatBotRequestParams = cryptoRecipientManager.formatBotRequestParams(str, String.valueOf(((TLRPC$messages_BotResults) success.getData()).query_id));
                    SendMessagesHelper.prepareSendingBotContextResult(null, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, ref$LongRef.element, null, null, true, 0, null);
                    viewState3 = CryptoRecipientManager.this.getViewState();
                    resourceManager2 = CryptoRecipientManager.this.resourceManager;
                    String string = resourceManager2.getString(C3158R.string.wallet_recipient_request_permission_success_dialog_title);
                    resourceManager3 = CryptoRecipientManager.this.resourceManager;
                    String string2 = resourceManager3.getString(C3158R.string.wallet_recipient_request_permission_success_dialog_description, recipient);
                    final CryptoRecipientManager cryptoRecipientManager2 = CryptoRecipientManager.this;
                    final Ref$LongRef ref$LongRef2 = ref$LongRef;
                    viewState3.showRequestPermissionSuccessDialog(string, string2, new Callbacks$Callback() { // from class: com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$2$1
                        @Override // org.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            CryptoRecipientView viewState4;
                            viewState4 = CryptoRecipientManager.this.getViewState();
                            viewState4.openChatScreen(ref$LongRef2.element);
                        }
                    });
                } else if (result instanceof Result.Error) {
                    viewState2 = CryptoRecipientManager.this.getViewState();
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = CryptoRecipientManager.this.resourceManager;
                    viewState2.showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$2
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
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    public void loadAddressInfoById(final String recipient, final BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<AccountInfo>> observeOn = this.cryptoPermissionInteractor.getAddressInfo(recipient).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final CryptoRecipientView viewState = getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                CryptoRecipientView viewState2;
                ResourceManager resourceManager;
                CryptoRecipientView viewState3;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                ResourceManager resourceManager4;
                AccountInfo.Address ethAddress;
                CryptoRecipientView viewState4;
                ResourceManager resourceManager5;
                ResourceManager resourceManager6;
                ResourceManager resourceManager7;
                CryptoRecipientView viewState5;
                DialogModel requestPermissionDialogModel;
                CryptoRecipientView viewState6;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    AccountInfo accountInfo = (AccountInfo) ((Result.Success) result).getData();
                    int i = CryptoRecipientManager.WhenMappings.$EnumSwitchMapping$0[blockchainType.ordinal()];
                    if (i == 1) {
                        ethAddress = accountInfo.getEthAddress();
                    } else if (i != 2) {
                        throw new NoWhenBranchMatchedException();
                    } else {
                        ethAddress = accountInfo.getTonAddress();
                    }
                    AddressAccessState mapToUI = AddressUiMappingKt.mapToUI(ethAddress);
                    if (mapToUI instanceof AddressAccessState.Granted) {
                        viewState6 = CryptoRecipientManager.this.getViewState();
                        viewState6.onRecipientSelected(recipient, ((AddressAccessState.Granted) mapToUI).getAddress(), true);
                    } else if (mapToUI instanceof AddressAccessState.Denied) {
                        viewState5 = CryptoRecipientManager.this.getViewState();
                        String str = recipient;
                        requestPermissionDialogModel = CryptoRecipientManager.this.getRequestPermissionDialogModel();
                        final CryptoRecipientManager cryptoRecipientManager = CryptoRecipientManager.this;
                        final String str2 = recipient;
                        viewState5.showRequestPermissionDialog(str, requestPermissionDialogModel, new Callbacks$Callback() { // from class: com.smedialink.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$1$1
                            @Override // org.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                CryptoRecipientManager.this.requestAddressPermission(str2);
                            }
                        });
                    } else if (mapToUI instanceof AddressAccessState.NotAvailable) {
                        viewState4 = CryptoRecipientManager.this.getViewState();
                        resourceManager5 = CryptoRecipientManager.this.resourceManager;
                        String string = resourceManager5.getString(C3158R.string.wallet_amount_error_invalid_user_title);
                        resourceManager6 = CryptoRecipientManager.this.resourceManager;
                        String string2 = resourceManager6.getString(C3158R.string.wallet_recipient_error_dialog_no_eth_address_description);
                        resourceManager7 = CryptoRecipientManager.this.resourceManager;
                        viewState4.showRecipientEthWalletNotActivatedError(string, string2, resourceManager7.getString(C3158R.string.wallet_amount_error_invalid_user_btn_txt));
                    }
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                        viewState3 = CryptoRecipientManager.this.getViewState();
                        resourceManager2 = CryptoRecipientManager.this.resourceManager;
                        String string3 = resourceManager2.getString(C3158R.string.wallet_amount_error_invalid_user_title);
                        resourceManager3 = CryptoRecipientManager.this.resourceManager;
                        String string4 = resourceManager3.getString(C3158R.string.wallet_amount_error_user_wallet_not_activated_description);
                        resourceManager4 = CryptoRecipientManager.this.resourceManager;
                        viewState3.showRecipientWalletNotActivatedError(string3, string4, resourceManager4.getString(C3158R.string.wallet_amount_error_invalid_user_btn_txt));
                        return;
                    }
                    viewState2 = CryptoRecipientManager.this.getViewState();
                    ErrorModel error2 = error.getError();
                    resourceManager = CryptoRecipientManager.this.resourceManager;
                    viewState2.showToast(error2.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$2
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
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, String> formatBotRequestParams(String str, String str2) {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m100to(TtmlNode.ATTR_ID, str), TuplesKt.m100to("query_id", str2), TuplesKt.m100to("bot", String.valueOf(AppConfiguration$Wallet.getWalletBotId())), TuplesKt.m100to("bot_name", AppConfiguration$Wallet.getWalletBotUsernameLowerCase()));
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
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_recipient_request_permission_dialog_title), this.resourceManager.getString(C3158R.string.wallet_recipient_request_permission_dialog_description), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_recipient_request_permission_dialog_action_btn_text));
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
