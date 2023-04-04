package com.iMe.manager;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$TL_channels_exportMessageLink;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_contacts_unblock;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_exportedMessageLink;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_acceptUrlAuth;
import org.telegram.tgnet.TLRPC$TL_messages_getInlineBotResults;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
import org.telegram.tgnet.TLRPC$TL_urlAuthResultAccepted;
import org.telegram.tgnet.TLRPC$TL_urlAuthResultDefault;
import org.telegram.tgnet.TLRPC$TL_users_getUsers;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$Vector;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: TelegramApiManager.kt */
/* loaded from: classes3.dex */
public final class TelegramApiManager implements TelegramApi {
    private final SchedulersProvider schedulersProvider;
    private final TelegramGateway telegramGateway;

    static {
        new Companion(null);
    }

    public TelegramApiManager(SchedulersProvider schedulersProvider, TelegramGateway telegramGateway) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.schedulersProvider = schedulersProvider;
        this.telegramGateway = telegramGateway;
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$Chat> getChatInfoByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        final String correctApiUsername = getCorrectApiUsername(username);
        Observable<TLRPC$Chat> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getChatInfoByUsername$lambda$1(TelegramApiManager.this, correctApiUsername, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<TLRPC.Chat> { emi…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getChatInfoByUsername$lambda$1(final TelegramApiManager this$0, String correctUsername, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(correctUsername, "$correctUsername");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLObject userOrChat = this$0.getMessagesController().getUserOrChat(correctUsername);
        if (userOrChat != null && (userOrChat instanceof TLRPC$Chat)) {
            emitter.onNext(userOrChat);
            emitter.onComplete();
            return;
        }
        TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
        tLRPC$TL_contacts_resolveUsername.username = correctUsername;
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda17
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TelegramApiManager.getChatInfoByUsername$lambda$1$lambda$0(ObservableEmitter.this, this$0, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getChatInfoByUsername$lambda$1$lambda$0(ObservableEmitter emitter, TelegramApiManager this$0, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (tLRPC$TL_error != null) {
            if (emitter.isDisposed()) {
                return;
            }
            emitter.onError(new Exception(tLRPC$TL_error.text));
            return;
        }
        try {
            Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_contacts_resolvedPeer");
            TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
            this$0.getMessagesController().putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
            this$0.getMessagesController().putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
            MessagesStorage.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, false, true);
            ArrayList<TLRPC$Chat> arrayList = tLRPC$TL_contacts_resolvedPeer.chats;
            Intrinsics.checkNotNullExpressionValue(arrayList, "res.chats");
            if (!arrayList.isEmpty()) {
                ArrayList<TLRPC$Chat> arrayList2 = tLRPC$TL_contacts_resolvedPeer.chats;
                Intrinsics.checkNotNullExpressionValue(arrayList2, "res.chats");
                emitter.onNext(CollectionsKt.first((List<? extends Object>) arrayList2));
                emitter.onComplete();
            } else {
                emitter.onError(new IllegalStateException("Telegram API: Empty result"));
            }
        } catch (Exception e) {
            if (emitter.isDisposed()) {
                return;
            }
            emitter.onError(e);
        }
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<List<TLRPC$User>> getUsersByIds(final List<Long> usersIds) {
        Intrinsics.checkNotNullParameter(usersIds, "usersIds");
        Observable<List<TLRPC$User>> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda7
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getUsersByIds$lambda$7(usersIds, this, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<List<TLRPC.User>>…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUsersByIds$lambda$7(List usersIds, final TelegramApiManager this$0, final ObservableEmitter emitter) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(usersIds, "$usersIds");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLRPC$TL_users_getUsers tLRPC$TL_users_getUsers = new TLRPC$TL_users_getUsers();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(usersIds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = usersIds.iterator();
        while (it.hasNext()) {
            arrayList.add(this$0.getMessagesController().getInputUser(((Number) it.next()).longValue()));
        }
        tLRPC$TL_users_getUsers.f1639id = CollectionsUtilsKt.toArrayList(arrayList);
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_users_getUsers, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TelegramApiManager.getUsersByIds$lambda$7$lambda$6(ObservableEmitter.this, this$0, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUsersByIds$lambda$7$lambda$6(ObservableEmitter emitter, TelegramApiManager this$0, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (tLRPC$TL_error != null) {
            if (emitter.isDisposed()) {
                return;
            }
            emitter.onError(new Exception(tLRPC$TL_error.text));
            return;
        }
        try {
            if (tLObject instanceof TLRPC$Vector) {
                ArrayList<Object> arrayList = ((TLRPC$Vector) tLObject).objects;
                Intrinsics.checkNotNullExpressionValue(arrayList, "response.objects");
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    TLRPC$User tLRPC$User = obj instanceof TLRPC$User ? (TLRPC$User) obj : null;
                    if (tLRPC$User != null) {
                        arrayList2.add(tLRPC$User);
                    }
                }
                this$0.getMessagesController().putUsers(CollectionsUtilsKt.toArrayList(arrayList2), false);
                if (!arrayList2.isEmpty()) {
                    emitter.onNext(arrayList2);
                    emitter.onComplete();
                    return;
                }
                emitter.onError(new IllegalStateException("Telegram API: Empty result"));
            }
        } catch (Exception e) {
            if (emitter.isDisposed()) {
                return;
            }
            emitter.onError(e);
        }
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$Chat> subscribeToChannel(final TLRPC$Chat channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Observable<TLRPC$Chat> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda8
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.subscribeToChannel$lambda$11(TLRPC$Chat.this, this, observableEmitter);
            }
        }).timeout(30L, TimeUnit.SECONDS).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<TLRPC.Chat> { emi…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToChannel$lambda$11(final TLRPC$Chat channel, TelegramApiManager this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(channel, "$channel");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        if (ChatObject.isNotInChat(channel)) {
            MessagesController.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).addUserToChat(channel.f1502id, UserConfig.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).getCurrentUser(), 0, null, null, new Runnable() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    TelegramApiManager.subscribeToChannel$lambda$11$lambda$10(ObservableEmitter.this, channel);
                }
            });
            return;
        }
        emitter.onNext(channel);
        emitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToChannel$lambda$11$lambda$10(ObservableEmitter emitter, TLRPC$Chat channel) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(channel, "$channel");
        emitter.onNext(channel);
        emitter.onComplete();
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$Chat> unsubscribeFromChannel(final TLRPC$Chat channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Observable<TLRPC$Chat> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda9
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.unsubscribeFromChannel$lambda$13(TLRPC$Chat.this, this, observableEmitter);
            }
        }).timeout(30L, TimeUnit.SECONDS).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<TLRPC.Chat> { emi…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unsubscribeFromChannel$lambda$13(final TLRPC$Chat channel, TelegramApiManager this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(channel, "$channel");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        if (ChatObject.isNotInChat(channel)) {
            emitter.onNext(channel);
            emitter.onComplete();
            return;
        }
        MessagesController.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).deleteParticipantFromChat(channel.f1502id, UserConfig.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).getCurrentUser(), channel, false, false, new Runnable() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                TelegramApiManager.unsubscribeFromChannel$lambda$13$lambda$12(ObservableEmitter.this, channel);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unsubscribeFromChannel$lambda$13$lambda$12(ObservableEmitter emitter, TLRPC$Chat channel) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(channel, "$channel");
        emitter.onNext(channel);
        emitter.onComplete();
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<String> acceptUrlAuth(final String buttonUrl, final TLRPC$TL_messages_requestUrlAuth buttonReq) {
        Intrinsics.checkNotNullParameter(buttonUrl, "buttonUrl");
        Intrinsics.checkNotNullParameter(buttonReq, "buttonReq");
        final TLRPC$TL_messages_acceptUrlAuth tLRPC$TL_messages_acceptUrlAuth = new TLRPC$TL_messages_acceptUrlAuth();
        String str = buttonReq.url;
        if (str != null) {
            tLRPC$TL_messages_acceptUrlAuth.url = str;
            tLRPC$TL_messages_acceptUrlAuth.flags |= 4;
        } else {
            tLRPC$TL_messages_acceptUrlAuth.button_id = buttonReq.button_id;
            tLRPC$TL_messages_acceptUrlAuth.msg_id = buttonReq.msg_id;
            tLRPC$TL_messages_acceptUrlAuth.peer = buttonReq.peer;
            tLRPC$TL_messages_acceptUrlAuth.flags |= 2;
        }
        tLRPC$TL_messages_acceptUrlAuth.write_allowed = true;
        Observable<String> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.acceptUrlAuth$lambda$16(TelegramApiManager.this, tLRPC$TL_messages_acceptUrlAuth, buttonUrl, buttonReq, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<String> { emitter…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acceptUrlAuth$lambda$16(TelegramApiManager this$0, TLRPC$TL_messages_acceptUrlAuth req, final String buttonUrl, final TLRPC$TL_messages_requestUrlAuth buttonReq, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(req, "$req");
        Intrinsics.checkNotNullParameter(buttonUrl, "$buttonUrl");
        Intrinsics.checkNotNullParameter(buttonReq, "$buttonReq");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(req, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda18
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TelegramApiManager.acceptUrlAuth$lambda$16$lambda$15(ObservableEmitter.this, buttonUrl, buttonReq, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acceptUrlAuth$lambda$16$lambda$15(ObservableEmitter emitter, String buttonUrl, TLRPC$TL_messages_requestUrlAuth buttonReq, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(buttonUrl, "$buttonUrl");
        Intrinsics.checkNotNullParameter(buttonReq, "$buttonReq");
        if (tLRPC$TL_error != null) {
            if (emitter.isDisposed()) {
                return;
            }
            emitter.onError(new Exception(tLRPC$TL_error.text));
            return;
        }
        if (tLObject instanceof TLRPC$TL_urlAuthResultAccepted) {
            buttonUrl = ((TLRPC$TL_urlAuthResultAccepted) tLObject).url;
        } else if (!(tLObject instanceof TLRPC$TL_urlAuthResultDefault)) {
            buttonUrl = buttonReq.url;
        }
        emitter.onNext(buttonUrl);
        emitter.onComplete();
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$messages_BotResults> getInlineBot(String messageId, long j, long j2) {
        TLRPC$InputPeer inputPeer;
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        final TLRPC$TL_messages_getInlineBotResults tLRPC$TL_messages_getInlineBotResults = new TLRPC$TL_messages_getInlineBotResults();
        tLRPC$TL_messages_getInlineBotResults.bot = getMessagesController().getInputUser(j2);
        tLRPC$TL_messages_getInlineBotResults.query = messageId;
        tLRPC$TL_messages_getInlineBotResults.offset = "";
        if (DialogObject.isEncryptedDialog(j)) {
            inputPeer = new TLRPC$TL_inputPeerEmpty();
        } else {
            inputPeer = getMessagesController().getInputPeer(j);
        }
        tLRPC$TL_messages_getInlineBotResults.peer = inputPeer;
        Observable<TLRPC$messages_BotResults> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda6
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getInlineBot$lambda$19(TelegramApiManager.this, tLRPC$TL_messages_getInlineBotResults, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<TLRPC.messages_Bo…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getInlineBot$lambda$19(TelegramApiManager this$0, TLRPC$TL_messages_getInlineBotResults req, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(req, "$req");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(req, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda13
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TelegramApiManager.getInlineBot$lambda$19$lambda$18(ObservableEmitter.this, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getInlineBot$lambda$19$lambda$18(ObservableEmitter emitter, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (tLRPC$TL_error != null) {
            if (emitter.isDisposed()) {
                return;
            }
            emitter.onError(new Exception(tLRPC$TL_error.text));
            return;
        }
        Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.messages_BotResults");
        emitter.onNext((TLRPC$messages_BotResults) tLObject);
        emitter.onComplete();
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<Boolean> unblockPeer(long j) {
        TLRPC$InputPeer inputPeer;
        MessagesController messagesController = getMessagesController();
        final TLRPC$TL_contacts_unblock tLRPC$TL_contacts_unblock = new TLRPC$TL_contacts_unblock();
        if (DialogObject.isUserDialog(j)) {
            TLRPC$User user = messagesController.getUser(Long.valueOf(j));
            if (user == null) {
                Observable<Boolean> just = Observable.just(Boolean.FALSE);
                Intrinsics.checkNotNullExpressionValue(just, "just(false)");
                return just;
            }
            Intrinsics.checkNotNullExpressionValue(user, "messagesController.getUs…rn Observable.just(false)");
            inputPeer = MessagesController.getInputPeer(user);
        } else {
            TLRPC$Chat chat = messagesController.getChat(Long.valueOf(-j));
            if (chat == null) {
                Observable<Boolean> just2 = Observable.just(Boolean.FALSE);
                Intrinsics.checkNotNullExpressionValue(just2, "just(false)");
                return just2;
            }
            Intrinsics.checkNotNullExpressionValue(chat, "messagesController.getCh…rn Observable.just(false)");
            inputPeer = MessagesController.getInputPeer(chat);
        }
        tLRPC$TL_contacts_unblock.f1552id = inputPeer;
        messagesController.totalBlockedCount--;
        messagesController.blockePeers.delete(j);
        NotificationCenter.getInstance(this.telegramGateway.getSelectedAccountIndex()).postNotificationName(NotificationCenter.blockedUsersDidLoad, new Object[0]);
        Observable<Boolean> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.unblockPeer$lambda$23(TelegramApiManager.this, tLRPC$TL_contacts_unblock, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<Boolean> { emitte…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unblockPeer$lambda$23(TelegramApiManager this$0, TLRPC$TL_contacts_unblock req, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(req, "$req");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(req, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TelegramApiManager.unblockPeer$lambda$23$lambda$22(ObservableEmitter.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unblockPeer$lambda$23$lambda$22(ObservableEmitter emitter, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (tLRPC$TL_error != null) {
            if (emitter.isDisposed()) {
                return;
            }
            emitter.onError(new Exception(tLRPC$TL_error.text));
            return;
        }
        emitter.onNext(Boolean.TRUE);
        emitter.onComplete();
    }

    public String getCorrectApiUsername(String username) {
        String replace$default;
        Intrinsics.checkNotNullParameter(username, "username");
        replace$default = StringsKt__StringsJVMKt.replace$default(username, "@", "", false, 4, (Object) null);
        return replace$default;
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$TL_exportedMessageLink> getMessageLinkPattern(final MessageObject message, final TLRPC$Chat currentChat) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(currentChat, "currentChat");
        Observable<TLRPC$TL_exportedMessageLink> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getMessageLinkPattern$lambda$28(TelegramApiManager.this, message, currentChat, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create<TLRPC.TL_exported…(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMessageLinkPattern$lambda$28(TelegramApiManager this$0, MessageObject message, TLRPC$Chat currentChat, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(currentChat, "$currentChat");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLRPC$TL_channels_exportMessageLink tLRPC$TL_channels_exportMessageLink = new TLRPC$TL_channels_exportMessageLink();
        tLRPC$TL_channels_exportMessageLink.f1540id = message.getId();
        tLRPC$TL_channels_exportMessageLink.channel = MessagesController.getInputChannel(currentChat);
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_channels_exportMessageLink, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                TelegramApiManager.getMessageLinkPattern$lambda$28$lambda$27(ObservableEmitter.this, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMessageLinkPattern$lambda$28$lambda$27(final ObservableEmitter emitter, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                TelegramApiManager.getMessageLinkPattern$lambda$28$lambda$27$lambda$26(TLObject.this, emitter, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMessageLinkPattern$lambda$28$lambda$27$lambda$26(TLObject tLObject, ObservableEmitter emitter, TLRPC$TL_error tLRPC$TL_error) {
        Unit unit;
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        TLRPC$TL_exportedMessageLink tLRPC$TL_exportedMessageLink = tLObject instanceof TLRPC$TL_exportedMessageLink ? (TLRPC$TL_exportedMessageLink) tLObject : null;
        if (tLRPC$TL_exportedMessageLink != null) {
            emitter.onNext(tLRPC$TL_exportedMessageLink);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            String str = tLRPC$TL_error != null ? tLRPC$TL_error.text : null;
            if (str == null) {
                str = "";
            }
            emitter.onError(new Exception(str));
        }
    }

    @Override // com.iMe.manager.TelegramApi
    public Completable deleteUsers(final ArrayList<TLRPC$User> users) {
        Intrinsics.checkNotNullParameter(users, "users");
        Completable subscribeOn = Completable.create(new CompletableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(CompletableEmitter completableEmitter) {
                TelegramApiManager.deleteUsers$lambda$30(TelegramApiManager.this, users, completableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { source ->\n     …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteUsers$lambda$30(TelegramApiManager this$0, ArrayList users, final CompletableEmitter source) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(users, "$users");
        Intrinsics.checkNotNullParameter(source, "source");
        ContactsController.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).deleteContact(users, false, new Callbacks$Callback1() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                TelegramApiManager.deleteUsers$lambda$30$lambda$29(CompletableEmitter.this, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteUsers$lambda$30$lambda$29(CompletableEmitter source, Throwable th) {
        Intrinsics.checkNotNullParameter(source, "$source");
        if (th == null) {
            source.onComplete();
        } else {
            source.onError(th);
        }
    }

    private final MessagesController getMessagesController() {
        MessagesController messagesController = MessagesController.getInstance(this.telegramGateway.getSelectedAccountIndex());
        Intrinsics.checkNotNullExpressionValue(messagesController, "getInstance(telegramGateway.selectedAccountIndex)");
        return messagesController;
    }

    /* compiled from: TelegramApiManager.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
