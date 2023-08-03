package com.iMe.manager.crypto.recipient;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.mapper.crypto.AddressUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.AddressAccessState;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.C3419R;
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
        Observable<R> flatMap = this.cryptoPermissionInteractor.requestAllAddressesPermission(recipient).flatMap(new C1589xd06610b9(new Function1<Result<? extends String>, ObservableSource<? extends Result<? extends TLRPC$messages_BotResults>>>() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
            /* JADX WARN: Removed duplicated region for block: B:13:0x006f  */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final io.reactivex.ObservableSource<? extends com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults>> invoke(com.iMe.storage.domain.model.Result<? extends java.lang.String> r10) {
                /*
                    r9 = this;
                    java.lang.String r0 = "result"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                    boolean r0 = r10 instanceof com.iMe.storage.domain.model.Result.Success
                    r1 = 2
                    r2 = 0
                    if (r0 == 0) goto L96
                    java.lang.String r0 = r1
                    java.lang.Long r0 = kotlin.text.StringsKt.toLongOrNull(r0)
                    kotlin.jvm.internal.Ref$LongRef r3 = r2
                    r4 = -1
                    if (r0 == 0) goto L2c
                    com.iMe.manager.crypto.recipient.CryptoRecipientManager r6 = r3
                    com.iMe.gateway.TelegramControllersGateway r6 = com.iMe.manager.crypto.recipient.CryptoRecipientManager.access$getTelegramControllersGateway$p(r6)
                    r7 = 0
                    r8 = 1
                    org.telegram.messenger.MessagesController r6 = com.iMe.gateway.TelegramControllersGateway.CC.getMessagesController$default(r6, r7, r8, r2)
                    org.telegram.tgnet.TLRPC$User r0 = r6.getUser(r0)
                    if (r0 == 0) goto L2c
                    long r6 = r0.f1675id
                    goto L2d
                L2c:
                    r6 = r4
                L2d:
                    r3.element = r6
                    kotlin.jvm.internal.Ref$LongRef r0 = r2
                    long r6 = r0.element
                    int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
                    if (r0 == 0) goto L6f
                    com.iMe.manager.crypto.recipient.CryptoRecipientManager r0 = r3
                    com.iMe.manager.TelegramApi r1 = com.iMe.manager.crypto.recipient.CryptoRecipientManager.access$getTelegramApi$p(r0)
                    java.lang.Object r10 = r10.getData()
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r10)
                    r2 = r10
                    java.lang.String r2 = (java.lang.String) r2
                    kotlin.jvm.internal.Ref$LongRef r10 = r2
                    long r3 = r10.element
                    long r5 = com.iMe.storage.common.AppConfiguration$Wallet.getWalletBotId()
                    io.reactivex.Observable r10 = r1.getInlineBot(r2, r3, r5)
                    com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1 r0 = new kotlin.jvm.functions.Function1<org.telegram.tgnet.TLRPC$messages_BotResults, com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults>>() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1
                        static {
                            /*
                                com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1 r0 = new com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1
                                r0.<init>()
                                
                                // error: 0x0005: SPUT  
  (r0 I:com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1)
 com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1.INSTANCE com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$1
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1587x5109593.<clinit>():void");
                        }

                        {
                            /*
                                r1 = this;
                                r0 = 1
                                r1.<init>(r0)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1587x5109593.<init>():void");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults> invoke(org.telegram.tgnet.TLRPC$messages_BotResults r2) {
                            /*
                                r1 = this;
                                com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                                com.iMe.storage.domain.model.Result r2 = r0.success(r2)
                                return r2
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1587x5109593.invoke(java.lang.Object):com.iMe.storage.domain.model.Result");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults> invoke(org.telegram.tgnet.TLRPC$messages_BotResults r1) {
                            /*
                                r0 = this;
                                com.iMe.storage.domain.model.Result r1 = r0.invoke(r1)
                                return r1
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1587x5109593.invoke(java.lang.Object):java.lang.Object");
                        }
                    }
                    com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0
                    r1.<init>(r0)
                    io.reactivex.Observable r10 = r10.map(r1)
                    com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2 r0 = new kotlin.jvm.functions.Function1<java.lang.Throwable, com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults>>() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2
                        static {
                            /*
                                com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2 r0 = new com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2
                                r0.<init>()
                                
                                // error: 0x0005: SPUT  
  (r0 I:com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2)
 com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2.INSTANCE com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$lambda$0$$inlined$wrapAsResult$2
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1588x5109594.<clinit>():void");
                        }

                        {
                            /*
                                r1 = this;
                                r0 = 1
                                r1.<init>(r0)
                                return
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1588x5109594.<init>():void");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final com.iMe.storage.domain.model.Result<org.telegram.tgnet.TLRPC$messages_BotResults> invoke(java.lang.Throwable r4) {
                            /*
                                r3 = this;
                                java.lang.String r0 = "it"
                                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                                com.iMe.storage.data.network.model.error.ErrorModel r0 = new com.iMe.storage.data.network.model.error.ErrorModel
                                com.iMe.storage.data.network.handlers.impl.ApiErrorHandler$ErrorStatus r1 = com.iMe.storage.data.network.handlers.impl.ApiErrorHandler.ErrorStatus.BAD_RESPONSE
                                r0.<init>(r1, r4)
                                com.iMe.storage.domain.model.Result$Companion r4 = com.iMe.storage.domain.model.Result.Companion
                                r1 = 0
                                r2 = 2
                                com.iMe.storage.domain.model.Result r4 = com.iMe.storage.domain.model.Result.Companion.error$default(r4, r0, r1, r2, r1)
                                return r4
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1588x5109594.invoke(java.lang.Throwable):com.iMe.storage.domain.model.Result");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ com.iMe.storage.domain.model.Result<? extends org.telegram.tgnet.TLRPC$messages_BotResults> invoke(java.lang.Throwable r1) {
                            /*
                                r0 = this;
                                java.lang.Throwable r1 = (java.lang.Throwable) r1
                                com.iMe.storage.domain.model.Result r1 = r0.invoke(r1)
                                return r1
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1588x5109594.invoke(java.lang.Object):java.lang.Object");
                        }
                    }
                    com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0 r1 = new com.iMe.manager.crypto.recipient.CryptoRecipientManager$inlined$sam$i$io_reactivex_functions_Function$0
                    r1.<init>(r0)
                    io.reactivex.Observable r10 = r10.onErrorReturn(r1)
                    java.lang.String r0 = "map { it.toSuccess() }\n …RESPONSE, it).toError() }"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                    goto Lb4
                L6f:
                    com.iMe.storage.data.network.model.error.ErrorModel r10 = new com.iMe.storage.data.network.model.error.ErrorModel
                    com.iMe.manager.crypto.recipient.CryptoRecipientManager r0 = r3
                    com.iMe.storage.domain.utils.system.ResourceManager r0 = com.iMe.manager.crypto.recipient.CryptoRecipientManager.access$getResourceManager$p(r0)
                    int r3 = org.telegram.messenger.C3419R.string.wallet_recipient_validation_chat_with_user_first_error
                    java.lang.String r4 = r0.getString(r3)
                    com.iMe.storage.data.network.handlers.impl.ApiErrorHandler$ErrorStatus r5 = com.iMe.storage.data.network.handlers.impl.ApiErrorHandler.ErrorStatus.BAD_RESPONSE
                    r6 = 0
                    r7 = 4
                    r8 = 0
                    r3 = r10
                    r3.<init>(r4, r5, r6, r7, r8)
                    com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                    com.iMe.storage.domain.model.Result r10 = com.iMe.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                    io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                    java.lang.String r0 = "just(this)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r0)
                    goto Lb4
                L96:
                    boolean r0 = r10 instanceof com.iMe.storage.domain.model.Result.Error
                    if (r0 == 0) goto Lb0
                    com.iMe.storage.domain.model.Result$Companion r0 = com.iMe.storage.domain.model.Result.Companion
                    com.iMe.storage.domain.model.Result$Error r10 = (com.iMe.storage.domain.model.Result.Error) r10
                    com.iMe.storage.data.network.model.error.ErrorModel r10 = r10.getError()
                    com.iMe.storage.domain.model.Result r10 = com.iMe.storage.domain.model.Result.Companion.error$default(r0, r10, r2, r1, r2)
                    java.lang.String r0 = "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"
                    kotlin.jvm.internal.Intrinsics.checkNotNull(r10, r0)
                    io.reactivex.Observable r10 = io.reactivex.Observable.just(r10)
                    goto Lb4
                Lb0:
                    io.reactivex.Observable r10 = io.reactivex.Observable.empty()
                Lb4:
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.crypto.recipient.C1584xd1623ac9.invoke(com.iMe.storage.domain.model.Result):io.reactivex.ObservableSource");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final CryptoRecipientView viewState = getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TLRPC$messages_BotResults>, Unit>() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TLRPC$messages_BotResults> result) {
                m1300invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1300invoke(Result<? extends TLRPC$messages_BotResults> it) {
                CryptoRecipientView viewState2;
                ResourceManager resourceManager;
                TelegramGateway telegramGateway;
                HashMap formatBotRequestParams;
                CryptoRecipientView viewState3;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TLRPC$messages_BotResults> result = it;
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
                    String str = tLRPC$BotInlineResult.f1516id;
                    Intrinsics.checkNotNullExpressionValue(str, "inlineBot.id");
                    formatBotRequestParams = cryptoRecipientManager.formatBotRequestParams(str, String.valueOf(((TLRPC$messages_BotResults) success.getData()).query_id));
                    SendMessagesHelper.prepareSendingBotContextResult(null, accountInstance, tLRPC$BotInlineResult, formatBotRequestParams, ref$LongRef.element, null, null, null, true, 0, null);
                    viewState3 = CryptoRecipientManager.this.getViewState();
                    resourceManager2 = CryptoRecipientManager.this.resourceManager;
                    String string = resourceManager2.getString(C3419R.string.wallet_recipient_request_permission_success_dialog_title);
                    resourceManager3 = CryptoRecipientManager.this.resourceManager;
                    String string2 = resourceManager3.getString(C3419R.string.wallet_recipient_request_permission_success_dialog_description, recipient);
                    final CryptoRecipientManager cryptoRecipientManager2 = CryptoRecipientManager.this;
                    final Ref$LongRef ref$LongRef2 = ref$LongRef;
                    viewState3.showRequestPermissionSuccessDialog(string, string2, new Callbacks$Callback() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$2$1
                        @Override // com.iMe.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            CryptoRecipientView viewState4;
                            viewState4 = CryptoRecipientManager.this.getViewState();
                            viewState4.openChatScreen(ref$LongRef2.element);
                        }
                    });
                } else if (result instanceof Result.Error) {
                    viewState2 = CryptoRecipientManager.this.getViewState();
                    resourceManager = CryptoRecipientManager.this.resourceManager;
                    viewState2.showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$requestAddressPermission$$inlined$subscribeWithErrorHandle$default$2
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
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        autoDispose(subscribe);
    }

    public void loadAddressInfoById(final String recipient, final BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<AccountInfo>> observeOn = this.cryptoPermissionInteractor.getAddressInfo(recipient).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final CryptoRecipientView viewState = getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends AccountInfo>, Unit>() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountInfo> result) {
                m1299invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1299invoke(Result<? extends AccountInfo> it) {
                CryptoRecipientView viewState2;
                ResourceManager resourceManager;
                CryptoRecipientView viewState3;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                ResourceManager resourceManager4;
                Object obj;
                AddressAccessState addressAccessState;
                CryptoRecipientView viewState4;
                ResourceManager resourceManager5;
                ResourceManager resourceManager6;
                ResourceManager resourceManager7;
                CryptoRecipientView viewState5;
                DialogModel requestPermissionDialogModel;
                CryptoRecipientView viewState6;
                boolean z;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends AccountInfo> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    Iterator<T> it2 = ((AccountInfo) success.getData()).getWallets().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (((AccountInfo.Address) obj).getBlockchainType() == blockchainType) {
                            z = true;
                            continue;
                        } else {
                            z = false;
                            continue;
                        }
                        if (z) {
                            break;
                        }
                    }
                    AccountInfo.Address address = (AccountInfo.Address) obj;
                    if (address == null || (addressAccessState = AddressUiMappingKt.mapToUI(address, ((AccountInfo) success.getData()).getHasAccess())) == null) {
                        addressAccessState = AddressAccessState.NotAvailable.INSTANCE;
                    }
                    if (addressAccessState instanceof AddressAccessState.Granted) {
                        viewState6 = CryptoRecipientManager.this.getViewState();
                        viewState6.onRecipientSelected(recipient, ((AddressAccessState.Granted) addressAccessState).getAddress(), true);
                    } else if (addressAccessState instanceof AddressAccessState.Denied) {
                        viewState5 = CryptoRecipientManager.this.getViewState();
                        String str = recipient;
                        requestPermissionDialogModel = CryptoRecipientManager.this.getRequestPermissionDialogModel();
                        final CryptoRecipientManager cryptoRecipientManager = CryptoRecipientManager.this;
                        final String str2 = recipient;
                        viewState5.showRequestPermissionDialog(str, requestPermissionDialogModel, new Callbacks$Callback() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$1$1
                            @Override // com.iMe.fork.utils.Callbacks$Callback
                            public final void invoke() {
                                CryptoRecipientManager.this.requestAddressPermission(str2);
                            }
                        });
                    } else if (addressAccessState instanceof AddressAccessState.NotAvailable) {
                        viewState4 = CryptoRecipientManager.this.getViewState();
                        resourceManager5 = CryptoRecipientManager.this.resourceManager;
                        String string = resourceManager5.getString(C3419R.string.wallet_amount_error_invalid_user_title);
                        resourceManager6 = CryptoRecipientManager.this.resourceManager;
                        String string2 = resourceManager6.getString(C3419R.string.wallet_recipient_error_dialog_no_eth_address_description);
                        resourceManager7 = CryptoRecipientManager.this.resourceManager;
                        viewState4.showErrorDialog(string, string2, resourceManager7.getString(C3419R.string.wallet_amount_error_invalid_user_btn_txt));
                    }
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                        viewState3 = CryptoRecipientManager.this.getViewState();
                        resourceManager2 = CryptoRecipientManager.this.resourceManager;
                        String string3 = resourceManager2.getString(C3419R.string.wallet_amount_error_invalid_user_title);
                        resourceManager3 = CryptoRecipientManager.this.resourceManager;
                        String string4 = resourceManager3.getString(C3419R.string.wallet_amount_error_user_wallet_not_activated_description);
                        resourceManager4 = CryptoRecipientManager.this.resourceManager;
                        viewState3.showErrorDialog(string3, string4, resourceManager4.getString(C3419R.string.wallet_amount_error_invalid_user_btn_txt));
                        return;
                    }
                    viewState2 = CryptoRecipientManager.this.getViewState();
                    resourceManager = CryptoRecipientManager.this.resourceManager;
                    viewState2.showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$2
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
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        autoDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashMap<String, String> formatBotRequestParams(String str, String str2) {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m103to(TtmlNode.ATTR_ID, str), TuplesKt.m103to("query_id", str2), TuplesKt.m103to("bot", String.valueOf(AppConfiguration$Wallet.getWalletBotId())), TuplesKt.m103to("bot_name", AppConfiguration$Wallet.getWalletBotUsernameLowerCase()));
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
        return new DialogModel(this.resourceManager.getString(C3419R.string.wallet_recipient_request_permission_dialog_title), this.resourceManager.getString(C3419R.string.wallet_recipient_request_permission_dialog_description), this.resourceManager.getString(C3419R.string.common_cancel), this.resourceManager.getString(C3419R.string.wallet_recipient_request_permission_dialog_action_btn_text));
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
