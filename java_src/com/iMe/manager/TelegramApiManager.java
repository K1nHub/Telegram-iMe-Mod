package com.iMe.manager;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.CompletableEmitter;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
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
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$TL_account_authorizations;
import org.telegram.tgnet.TLRPC$TL_account_getAuthorizations;
import org.telegram.tgnet.TLRPC$TL_authorization;
import org.telegram.tgnet.TLRPC$TL_channels_channelParticipant;
import org.telegram.tgnet.TLRPC$TL_channels_exportMessageLink;
import org.telegram.tgnet.TLRPC$TL_channels_getFullChannel;
import org.telegram.tgnet.TLRPC$TL_channels_getParticipant;
import org.telegram.tgnet.TLRPC$TL_contacts_resolveUsername;
import org.telegram.tgnet.TLRPC$TL_contacts_resolvedPeer;
import org.telegram.tgnet.TLRPC$TL_contacts_unblock;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_exportedMessageLink;
import org.telegram.tgnet.TLRPC$TL_inputPeerEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_acceptUrlAuth;
import org.telegram.tgnet.TLRPC$TL_messages_chatFull;
import org.telegram.tgnet.TLRPC$TL_messages_chats;
import org.telegram.tgnet.TLRPC$TL_messages_getChats;
import org.telegram.tgnet.TLRPC$TL_messages_getFullChat;
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
    public Observable<List<TLRPC$TL_authorization>> getAccountSessions() {
        Observable<List<TLRPC$TL_authorization>> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getAccountSessions$lambda$1(TelegramApiManager.this, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getAccountSessions$lambda$1(TelegramApiManager this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(new TLRPC$TL_account_getAuthorizations(), new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getAccountSessions$lambda$1$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                List mutableList;
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_account_authorizations");
                    ArrayList<TLRPC$TL_authorization> arrayList = ((TLRPC$TL_account_authorizations) tLObject).authorizations;
                    Intrinsics.checkNotNullExpressionValue(arrayList, "res.authorizations");
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (mutableList != null) {
                        observableEmitter.onNext(mutableList);
                        observableEmitter.onComplete();
                    } else {
                        observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                    }
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$Chat> getChatInfoByUsername(String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        final String correctApiUsername = getCorrectApiUsername(username);
        Observable<TLRPC$Chat> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda6
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getChatInfoByUsername$lambda$4(TelegramApiManager.this, correctApiUsername, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getChatInfoByUsername$lambda$4(final TelegramApiManager this$0, String correctUsername, final ObservableEmitter emitter) {
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
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getChatInfoByUsername$lambda$4$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessagesStorage messagesStorage;
                MessagesController messagesController;
                TLRPC$Chat tLRPC$Chat;
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_contacts_resolvedPeer");
                    TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
                    messagesStorage = this$0.getMessagesStorage();
                    messagesStorage.putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, false, true);
                    messagesController = this$0.getMessagesController();
                    messagesController.putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
                    messagesController.putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
                    ArrayList<TLRPC$Chat> chats = tLRPC$TL_contacts_resolvedPeer.chats;
                    if (chats != null) {
                        Intrinsics.checkNotNullExpressionValue(chats, "chats");
                        tLRPC$Chat = (TLRPC$Chat) CollectionsKt.firstOrNull((List<? extends Object>) chats);
                    } else {
                        tLRPC$Chat = null;
                    }
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (tLRPC$Chat != null) {
                        observableEmitter.onNext(tLRPC$Chat);
                        observableEmitter.onComplete();
                        return;
                    }
                    observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$User> getUserInfoByUsername(final String username) {
        Intrinsics.checkNotNullParameter(username, "username");
        Observable<TLRPC$User> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda5
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getUserInfoByUsername$lambda$7(TelegramApiManager.this, username, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUserInfoByUsername$lambda$7(final TelegramApiManager this$0, String username, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(username, "$username");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        String correctApiUsername = this$0.getCorrectApiUsername(username);
        TLObject userOrChat = this$0.getMessagesController().getUserOrChat(correctApiUsername);
        if (userOrChat != null && (userOrChat instanceof TLRPC$User) && this$0.getMessagesController().getUser(Long.valueOf(((TLRPC$User) userOrChat).f1751id)) != null) {
            emitter.onNext(userOrChat);
            emitter.onComplete();
            return;
        }
        TLRPC$TL_contacts_resolveUsername tLRPC$TL_contacts_resolveUsername = new TLRPC$TL_contacts_resolveUsername();
        tLRPC$TL_contacts_resolveUsername.username = correctApiUsername;
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_contacts_resolveUsername, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getUserInfoByUsername$lambda$7$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessagesStorage messagesStorage;
                MessagesController messagesController;
                TLRPC$User tLRPC$User;
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_contacts_resolvedPeer");
                    TLRPC$TL_contacts_resolvedPeer tLRPC$TL_contacts_resolvedPeer = (TLRPC$TL_contacts_resolvedPeer) tLObject;
                    messagesStorage = this$0.getMessagesStorage();
                    messagesStorage.putUsersAndChats(tLRPC$TL_contacts_resolvedPeer.users, tLRPC$TL_contacts_resolvedPeer.chats, false, true);
                    messagesController = this$0.getMessagesController();
                    messagesController.putUsers(tLRPC$TL_contacts_resolvedPeer.users, false);
                    messagesController.putChats(tLRPC$TL_contacts_resolvedPeer.chats, false);
                    ArrayList<TLRPC$User> users = tLRPC$TL_contacts_resolvedPeer.users;
                    if (users != null) {
                        Intrinsics.checkNotNullExpressionValue(users, "users");
                        tLRPC$User = (TLRPC$User) CollectionsKt.firstOrNull((List<? extends Object>) users);
                    } else {
                        tLRPC$User = null;
                    }
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (tLRPC$User != null) {
                        observableEmitter.onNext(tLRPC$User);
                        observableEmitter.onComplete();
                        return;
                    }
                    observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<List<TLRPC$User>> getUsersByIds(final List<Long> usersIds) {
        Intrinsics.checkNotNullParameter(usersIds, "usersIds");
        Observable<List<TLRPC$User>> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda7
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getUsersByIds$lambda$12(TelegramApiManager.this, usersIds, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUsersByIds$lambda$12(final TelegramApiManager this$0, List usersIds, final ObservableEmitter emitter) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(usersIds, "$usersIds");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLRPC$TL_users_getUsers tLRPC$TL_users_getUsers = new TLRPC$TL_users_getUsers();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(usersIds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = usersIds.iterator();
        while (it.hasNext()) {
            arrayList.add(this$0.getMessagesController().getInputUser(((Number) it.next()).longValue()));
        }
        tLRPC$TL_users_getUsers.f1747id = CollectionsUtilsKt.toArrayList(arrayList);
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_users_getUsers, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessagesController messagesController;
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.Vector");
                    ArrayList<Object> arrayList2 = ((TLRPC$Vector) tLObject).objects;
                    Intrinsics.checkNotNullExpressionValue(arrayList2, "res.objects");
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : arrayList2) {
                        TLRPC$User tLRPC$User = obj instanceof TLRPC$User ? (TLRPC$User) obj : null;
                        if (tLRPC$User != null) {
                            arrayList3.add(tLRPC$User);
                        }
                    }
                    messagesController = this$0.getMessagesController();
                    messagesController.putUsers(CollectionsUtilsKt.toArrayList(arrayList3), false);
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    observableEmitter.onNext(arrayList3);
                    observableEmitter.onComplete();
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$ChatFull> getFullChatInfoById(final long j, final TLRPC$Chat tLRPC$Chat) {
        Observable<TLRPC$ChatFull> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda4
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getFullChatInfoById$lambda$16(TelegramApiManager.this, j, tLRPC$Chat, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void getFullChatInfoById$lambda$16(final TelegramApiManager this$0, final long j, TLRPC$Chat tLRPC$Chat, final ObservableEmitter emitter) {
        TLRPC$TL_messages_getFullChat tLRPC$TL_messages_getFullChat;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLRPC$ChatFull chatFull = this$0.getMessagesController().getChatFull(j);
        if (chatFull != null) {
            emitter.onNext(chatFull);
            emitter.onComplete();
            return;
        }
        if (tLRPC$Chat == null) {
            tLRPC$Chat = this$0.getMessagesController().getChat(Long.valueOf(j));
            Intrinsics.checkNotNullExpressionValue(tLRPC$Chat, "getMessagesController().getChat(id)");
        }
        if (ChatObject.isChannel(tLRPC$Chat)) {
            TLRPC$TL_channels_getFullChannel tLRPC$TL_channels_getFullChannel = new TLRPC$TL_channels_getFullChannel();
            tLRPC$TL_channels_getFullChannel.channel = MessagesController.getInputChannel(tLRPC$Chat);
            tLRPC$TL_messages_getFullChat = tLRPC$TL_channels_getFullChannel;
        } else {
            TLRPC$TL_messages_getFullChat tLRPC$TL_messages_getFullChat2 = new TLRPC$TL_messages_getFullChat();
            tLRPC$TL_messages_getFullChat2.chat_id = j;
            tLRPC$TL_messages_getFullChat = tLRPC$TL_messages_getFullChat2;
        }
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_messages_getFullChat, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getFullChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessagesStorage messagesStorage;
                MessagesController messagesController;
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_messages_chatFull");
                    TLRPC$TL_messages_chatFull tLRPC$TL_messages_chatFull = (TLRPC$TL_messages_chatFull) tLObject;
                    messagesStorage = this$0.getMessagesStorage();
                    messagesStorage.putUsersAndChats(tLRPC$TL_messages_chatFull.users, tLRPC$TL_messages_chatFull.chats, true, true);
                    messagesStorage.updateChatInfo(tLRPC$TL_messages_chatFull.full_chat, false);
                    messagesController = this$0.getMessagesController();
                    messagesController.putUsers(tLRPC$TL_messages_chatFull.users, false);
                    messagesController.putChats(tLRPC$TL_messages_chatFull.chats, false);
                    messagesController.getFullChats().put(j, tLRPC$TL_messages_chatFull.full_chat);
                    TLRPC$ChatFull tLRPC$ChatFull = tLRPC$TL_messages_chatFull.full_chat;
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (tLRPC$ChatFull != null) {
                        observableEmitter.onNext(tLRPC$ChatFull);
                        observableEmitter.onComplete();
                    } else {
                        observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                    }
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$Chat> getChatInfoById(final long j) {
        Observable<TLRPC$Chat> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda3
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getChatInfoById$lambda$18(TelegramApiManager.this, j, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getChatInfoById$lambda$18(final TelegramApiManager this$0, long j, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLRPC$Chat chat = this$0.getMessagesController().getChat(Long.valueOf(j));
        if (chat != null) {
            emitter.onNext(chat);
            emitter.onComplete();
            return;
        }
        TLRPC$TL_messages_getChats tLRPC$TL_messages_getChats = new TLRPC$TL_messages_getChats();
        tLRPC$TL_messages_getChats.f1694id.add(Long.valueOf(j));
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_messages_getChats, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getChatInfoById$lambda$18$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MessagesStorage messagesStorage;
                MessagesController messagesController;
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_messages_chats");
                    TLRPC$TL_messages_chats tLRPC$TL_messages_chats = (TLRPC$TL_messages_chats) tLObject;
                    messagesStorage = this$0.getMessagesStorage();
                    TLRPC$Chat tLRPC$Chat = null;
                    messagesStorage.putUsersAndChats(null, tLRPC$TL_messages_chats.chats, true, true);
                    messagesController = this$0.getMessagesController();
                    messagesController.putChats(tLRPC$TL_messages_chats.chats, false);
                    ArrayList<TLRPC$Chat> chats = tLRPC$TL_messages_chats.chats;
                    if (chats != null) {
                        Intrinsics.checkNotNullExpressionValue(chats, "chats");
                        tLRPC$Chat = (TLRPC$Chat) CollectionsKt.firstOrNull((List<? extends Object>) chats);
                    }
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (tLRPC$Chat != null) {
                        observableEmitter.onNext(tLRPC$Chat);
                        observableEmitter.onComplete();
                        return;
                    }
                    observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$ChannelParticipant> getChatParticipant(final TLRPC$Chat chat, final TLRPC$User user) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(user, "user");
        Observable<TLRPC$ChannelParticipant> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda9
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getChatParticipant$lambda$21(TelegramApiManager.this, chat, user, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getChatParticipant$lambda$21(TelegramApiManager this$0, TLRPC$Chat chat, TLRPC$User user, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(chat, "$chat");
        Intrinsics.checkNotNullParameter(user, "$user");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLRPC$TL_channels_getParticipant tLRPC$TL_channels_getParticipant = new TLRPC$TL_channels_getParticipant();
        tLRPC$TL_channels_getParticipant.channel = MessagesController.getInputChannel(chat);
        tLRPC$TL_channels_getParticipant.participant = MessagesController.getInputPeer(user);
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_channels_getParticipant, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getChatParticipant$lambda$21$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    TLRPC$TL_channels_channelParticipant tLRPC$TL_channels_channelParticipant = tLObject instanceof TLRPC$TL_channels_channelParticipant ? (TLRPC$TL_channels_channelParticipant) tLObject : null;
                    TLRPC$ChannelParticipant tLRPC$ChannelParticipant = tLRPC$TL_channels_channelParticipant != null ? tLRPC$TL_channels_channelParticipant.participant : null;
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (tLRPC$ChannelParticipant != null) {
                        observableEmitter.onNext(tLRPC$ChannelParticipant);
                        observableEmitter.onComplete();
                        return;
                    }
                    observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$Chat> subscribeToChannel(final TLRPC$Chat channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Observable<TLRPC$Chat> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda14
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.subscribeToChannel$lambda$23(TLRPC$Chat.this, this, observableEmitter);
            }
        }).timeout(30L, TimeUnit.SECONDS).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToChannel$lambda$23(final TLRPC$Chat channel, TelegramApiManager this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(channel, "$channel");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        if (ChatObject.isNotInChat(channel)) {
            MessagesController.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).addUserToChat(channel.f1602id, UserConfig.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).getCurrentUser(), 0, null, null, new Runnable() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    TelegramApiManager.subscribeToChannel$lambda$23$lambda$22(ObservableEmitter.this, channel);
                }
            });
            return;
        }
        emitter.onNext(channel);
        emitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToChannel$lambda$23$lambda$22(ObservableEmitter emitter, TLRPC$Chat channel) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(channel, "$channel");
        emitter.onNext(channel);
        emitter.onComplete();
    }

    @Override // com.iMe.manager.TelegramApi
    public Observable<TLRPC$Chat> unsubscribeFromChannel(final TLRPC$Chat channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Observable<TLRPC$Chat> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda13
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.unsubscribeFromChannel$lambda$25(TLRPC$Chat.this, this, observableEmitter);
            }
        }).timeout(30L, TimeUnit.SECONDS).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unsubscribeFromChannel$lambda$25(final TLRPC$Chat channel, TelegramApiManager this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(channel, "$channel");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        if (ChatObject.isNotInChat(channel)) {
            emitter.onNext(channel);
            emitter.onComplete();
            return;
        }
        this$0.getMessagesController().deleteParticipantFromChat(channel.f1602id, UserConfig.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).getCurrentUser(), channel, false, false, new Runnable() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                TelegramApiManager.unsubscribeFromChannel$lambda$25$lambda$24(ObservableEmitter.this, channel);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unsubscribeFromChannel$lambda$25$lambda$24(ObservableEmitter emitter, TLRPC$Chat channel) {
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
        Observable<String> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda11
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.acceptUrlAuth$lambda$28(TelegramApiManager.this, tLRPC$TL_messages_acceptUrlAuth, buttonUrl, buttonReq, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
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
        Observable<TLRPC$messages_BotResults> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda12
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getInlineBot$lambda$31(TelegramApiManager.this, tLRPC$TL_messages_getInlineBotResults, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
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
        tLRPC$TL_contacts_unblock.f1654id = inputPeer;
        messagesController.totalBlockedCount--;
        messagesController.blockePeers.delete(j);
        NotificationCenter.getInstance(this.telegramGateway.getSelectedAccountIndex()).lambda$postNotificationNameOnUIThread$1(NotificationCenter.blockedUsersDidLoad, new Object[0]);
        Observable<Boolean> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda10
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.unblockPeer$lambda$35(TelegramApiManager.this, tLRPC$TL_contacts_unblock, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
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
        Observable<TLRPC$TL_exportedMessageLink> subscribeOn = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda8
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                TelegramApiManager.getMessageLinkPattern$lambda$38(TelegramApiManager.this, message, currentChat, observableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { emitter ->\n    …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMessageLinkPattern$lambda$38(TelegramApiManager this$0, MessageObject message, TLRPC$Chat currentChat, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(currentChat, "$currentChat");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        TLRPC$TL_channels_exportMessageLink tLRPC$TL_channels_exportMessageLink = new TLRPC$TL_channels_exportMessageLink();
        tLRPC$TL_channels_exportMessageLink.f1641id = message.getId();
        tLRPC$TL_channels_exportMessageLink.channel = MessagesController.getInputChannel(currentChat);
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(tLRPC$TL_channels_exportMessageLink, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getMessageLinkPattern$lambda$38$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    TLRPC$TL_exportedMessageLink tLRPC$TL_exportedMessageLink = tLObject instanceof TLRPC$TL_exportedMessageLink ? (TLRPC$TL_exportedMessageLink) tLObject : null;
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (tLRPC$TL_exportedMessageLink != null) {
                        observableEmitter.onNext(tLRPC$TL_exportedMessageLink);
                        observableEmitter.onComplete();
                        return;
                    }
                    observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    @Override // com.iMe.manager.TelegramApi
    public Completable deleteUsers(final ArrayList<TLRPC$User> users) {
        Intrinsics.checkNotNullParameter(users, "users");
        Completable subscribeOn = Completable.create(new CompletableOnSubscribe() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda1
            @Override // io.reactivex.CompletableOnSubscribe
            public final void subscribe(CompletableEmitter completableEmitter) {
                TelegramApiManager.deleteUsers$lambda$41(TelegramApiManager.this, users, completableEmitter);
            }
        }).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "create { source ->\n     …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteUsers$lambda$41(TelegramApiManager this$0, ArrayList users, final CompletableEmitter source) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(users, "$users");
        Intrinsics.checkNotNullParameter(source, "source");
        ContactsController.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).deleteContact(users, false, new Callbacks$Callback1() { // from class: com.iMe.manager.TelegramApiManager$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                TelegramApiManager.deleteUsers$lambda$41$lambda$40(CompletableEmitter.this, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteUsers$lambda$41$lambda$40(CompletableEmitter source, Throwable th) {
        Intrinsics.checkNotNullParameter(source, "$source");
        if (th == null) {
            source.onComplete();
        } else {
            source.onError(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MessagesController getMessagesController() {
        MessagesController messagesController = MessagesController.getInstance(this.telegramGateway.getSelectedAccountIndex());
        Intrinsics.checkNotNullExpressionValue(messagesController, "getInstance(telegramGateway.selectedAccountIndex)");
        return messagesController;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MessagesStorage getMessagesStorage() {
        MessagesStorage messagesStorage = MessagesStorage.getInstance(this.telegramGateway.getSelectedAccountIndex());
        Intrinsics.checkNotNullExpressionValue(messagesStorage, "getInstance(telegramGateway.selectedAccountIndex)");
        return messagesStorage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acceptUrlAuth$lambda$28(TelegramApiManager this$0, TLRPC$TL_messages_acceptUrlAuth request, final String buttonUrl, final TLRPC$TL_messages_requestUrlAuth buttonReq, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(buttonUrl, "$buttonUrl");
        Intrinsics.checkNotNullParameter(buttonReq, "$buttonReq");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(request, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$acceptUrlAuth$lambda$28$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                String str;
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    if (tLObject instanceof TLRPC$TL_urlAuthResultAccepted) {
                        str = ((TLRPC$TL_urlAuthResultAccepted) tLObject).url;
                    } else {
                        str = tLObject instanceof TLRPC$TL_urlAuthResultDefault ? buttonUrl : buttonReq.url;
                    }
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (str != null) {
                        observableEmitter.onNext(str);
                        observableEmitter.onComplete();
                        return;
                    }
                    observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getInlineBot$lambda$31(TelegramApiManager this$0, TLRPC$TL_messages_getInlineBotResults request, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(request, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                if (tLRPC$TL_error != null) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                    return;
                }
                try {
                    TLRPC$messages_BotResults tLRPC$messages_BotResults = tLObject instanceof TLRPC$messages_BotResults ? (TLRPC$messages_BotResults) tLObject : null;
                    ObservableEmitter observableEmitter = ObservableEmitter.this;
                    if (tLRPC$messages_BotResults != null) {
                        observableEmitter.onNext(tLRPC$messages_BotResults);
                        observableEmitter.onComplete();
                        return;
                    }
                    observableEmitter.onError(new IllegalStateException("Telegram API: Empty result"));
                } catch (Exception e) {
                    if (ObservableEmitter.this.isDisposed()) {
                        return;
                    }
                    ObservableEmitter.this.onError(e);
                }
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unblockPeer$lambda$35(TelegramApiManager this$0, TLRPC$TL_contacts_unblock request, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConnectionsManager.getInstance(this$0.telegramGateway.getSelectedAccountIndex()).sendRequest(request, new RequestDelegate() { // from class: com.iMe.manager.TelegramApiManager$unblockPeer$lambda$35$$inlined$sendRequestWithHandle$default$1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                if (tLRPC$TL_error == null) {
                    try {
                        Boolean bool = Boolean.TRUE;
                        ObservableEmitter observableEmitter = ObservableEmitter.this;
                        observableEmitter.onNext(bool);
                        observableEmitter.onComplete();
                    } catch (Exception e) {
                        if (ObservableEmitter.this.isDisposed()) {
                            return;
                        }
                        ObservableEmitter.this.onError(e);
                    }
                } else if (ObservableEmitter.this.isDisposed()) {
                } else {
                    ObservableEmitter.this.onError(new Exception(tLRPC$TL_error.text));
                }
            }
        }, 0);
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
