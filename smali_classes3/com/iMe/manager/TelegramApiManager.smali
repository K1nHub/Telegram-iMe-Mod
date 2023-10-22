.class public final Lcom/iMe/manager/TelegramApiManager;
.super Ljava/lang/Object;
.source "TelegramApiManager.kt"

# interfaces
.implements Lcom/iMe/manager/TelegramApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/manager/TelegramApiManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,378:1\n345#1,9:379\n371#1,2:388\n345#1,9:390\n371#1,2:399\n345#1,9:401\n371#1,2:410\n345#1,9:416\n371#1,2:425\n345#1,9:427\n371#1,2:436\n345#1,9:438\n371#1,2:447\n345#1,9:449\n371#1,2:458\n345#1,9:460\n371#1,2:469\n352#1,2:471\n371#1,2:473\n345#1,9:475\n371#1,2:484\n345#1,9:486\n371#1,2:495\n1549#2:412\n1620#2,3:413\n*S KotlinDebug\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n*L\n33#1:379,9\n33#1:388,2\n53#1:390,9\n53#1:399,2\n81#1:401,9\n81#1:410,2\n102#1:416,9\n102#1:425,2\n130#1:427,9\n130#1:436,2\n157#1:438,9\n157#1:447,2\n177#1:449,9\n177#1:458,2\n246#1:460,9\n246#1:469,2\n274#1:471,2\n274#1:473,2\n305#1:475,9\n305#1:484,2\n322#1:486,9\n322#1:495,2\n97#1:412\n97#1:413,3\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public static synthetic $r8$lambda$3fqSautlXwb4yznzJnezmkHG_8Q(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager;->getChatParticipant$lambda$21(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6MHMeMyGNzOHn4cW60UTww5pdiQ(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->unsubscribeFromChannel$lambda$25$lambda$24(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6v-rhwjh2qrprQPMwQUi5yWOLvs(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getUsersByIds$lambda$12(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DnOHcq6RPIJrQIxqJzF4MM52OEU(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->subscribeToChannel$lambda$23$lambda$22(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GXot9E5i-3BlJqVDJihoJ3rVpsk(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getUserInfoByUsername$lambda$7(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JteUipVzxV3wOGifBwDc3hCJ9Y4(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->unsubscribeFromChannel$lambda$25(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MYflHitP2gRcszwYrPSMJs7VmA8(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getInlineBot$lambda$31(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VE2xXoAzMa6bwXRPpJXckmB8voE(Lcom/iMe/manager/TelegramApiManager;JLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager;->getChatInfoById$lambda$18(Lcom/iMe/manager/TelegramApiManager;JLio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WZksKqLLaS7wxXeoCdflsjOcBKc(Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->getAccountSessions$lambda$1(Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPTvyclFixkKhTbUUskRGRnghq4(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getChatInfoByUsername$lambda$4(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrlZ4YTyo_7Rl360p_wQYs4GNpM(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/manager/TelegramApiManager;->acceptUrlAuth$lambda$28(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mrAxfHytNdL92-h2nVwHqjWNDNo(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager;->getMessageLinkPattern$lambda$38(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ob4o_RYwa20SjcR5vzuv6p1GiLU(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->deleteUsers$lambda$41(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$peVHWHNrdbPEmYqhtvlH_vOruGE(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->deleteUsers$lambda$41$lambda$40(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wMm9IsGB7pOR5eJEpz2pwwYLxQ8(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->unblockPeer$lambda$35(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yKCXvjSakmCbCpY860KnpejpwFQ(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->subscribeToChannel$lambda$23(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFvDNEkHnIQjt1PMEdKZ_WMHTso(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/manager/TelegramApiManager;->getFullChatInfoById$lambda$16(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/manager/TelegramApiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/manager/TelegramApiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 26
    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-void
.end method

.method private static final acceptUrlAuth$lambda$28(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$buttonUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$buttonReq"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 353
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$28$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v0, p4, p2, p3}, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$28$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public static final synthetic access$getMessagesController(Lcom/iMe/manager/TelegramApiManager;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMessagesStorage(Lcom/iMe/manager/TelegramApiManager;)Lorg/telegram/messenger/MessagesStorage;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method private static final deleteUsers$lambda$41(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object p0, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    .line 331
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/CompletableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final deleteUsers$lambda$41$lambda$40(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 333
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    goto :goto_0

    .line 334
    :cond_0
    invoke-interface {p0, p1}, Lio/reactivex/CompletableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final getAccountSessions$lambda$1(Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizations;-><init>()V

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 353
    new-instance v1, Lcom/iMe/manager/TelegramApiManager$getAccountSessions$lambda$1$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v1, p1}, Lcom/iMe/manager/TelegramApiManager$getAccountSessions$lambda$1$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final getChatInfoById$lambda$18(Lcom/iMe/manager/TelegramApiManager;JLio/reactivex/ObservableEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {p3, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 152
    invoke-interface {p3}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;-><init>()V

    .line 155
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;->id:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p2

    invoke-interface {p2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    .line 353
    new-instance v1, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$18$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v1, p3, p0}, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$18$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private static final getChatInfoByUsername$lambda$4(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$correctUsername"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    .line 47
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 48
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 51
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    const/4 p1, 0x0

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 353
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$4$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p2, p0}, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$4$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private static final getChatParticipant$lambda$21(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 173
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 174
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 353
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$getChatParticipant$lambda$21$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {p1, p3}, Lcom/iMe/manager/TelegramApiManager$getChatParticipant$lambda$21$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final getFullChatInfoById$lambda$16(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {p4, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 116
    invoke-interface {p4}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    const-string v0, "getMessagesController().getChat(id)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    .line 122
    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p3

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    goto :goto_0

    .line 125
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    .line 126
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:J

    :goto_0
    const/4 p3, 0x0

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 353
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getFullChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p4, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$getFullChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;J)V

    invoke-virtual {v1, v0, v2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_1
    return-void
.end method

.method private static final getInlineBot$lambda$31(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 353
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;

    invoke-direct {v0, p2}, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final getMessageLinkPattern$lambda$38(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 318
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 319
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 353
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$getMessageLinkPattern$lambda$38$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {p1, p3}, Lcom/iMe/manager/TelegramApiManager$getMessageLinkPattern$lambda$38$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private final getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const-string v1, "getInstance(telegramGateway.selectedAccountIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const-string v1, "getInstance(telegramGateway.selectedAccountIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getUserInfoByUsername$lambda$7(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->getCorrectApiUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 72
    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 76
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 79
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    const/4 p1, 0x0

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 353
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getUserInfoByUsername$lambda$7$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p2, p0}, Lcom/iMe/manager/TelegramApiManager$getUserInfoByUsername$lambda$7$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private static final getUsersByIds$lambda$12(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$usersIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;-><init>()V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 98
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {v1}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 97
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;->id:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 353
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p2, p0}, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$12$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final subscribeToChannel$lambda$23(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 9

    const-string v0, "$channel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p1, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 188
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 189
    iget-object p1, p1, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 187
    new-instance v8, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda16;

    invoke-direct {v8, p2, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda16;-><init>(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 199
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    :goto_0
    return-void
.end method

.method private static final subscribeToChannel$lambda$23$lambda$22(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 195
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static final unblockPeer$lambda$35(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 353
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$unblockPeer$lambda$35$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v0, p2}, Lcom/iMe/manager/TelegramApiManager$unblockPeer$lambda$35$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final unsubscribeFromChannel$lambda$25(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 10

    const-string v0, "$channel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 209
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p1}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 212
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 213
    iget-object p1, p1, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 211
    new-instance v8, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda15;

    invoke-direct {v8, p2, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda15;-><init>(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final unsubscribeFromChannel$lambda$25$lambda$24(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 219
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method


# virtual methods
.method public acceptUrlAuth(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "buttonUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonReq"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;-><init>()V

    .line 233
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 234
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->url:Ljava/lang/String;

    .line 235
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    goto :goto_0

    .line 237
    :cond_0
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->button_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->button_id:I

    .line 238
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->msg_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->msg_id:I

    .line 239
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 240
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    :goto_0
    const/4 v1, 0x1

    .line 242
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->write_allowed:Z

    .line 245
    new-instance v1, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 253
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public deleteUsers(Ljava/util/ArrayList;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    const-string v0, "users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "create { source ->\n     \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAccountSessions()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_authorization;",
            ">;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/manager/TelegramApiManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getChatInfoById(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/manager/TelegramApiManager;J)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 165
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getChatInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->getCorrectApiUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getChatParticipant(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;"
        }
    .end annotation

    const-string v0, "chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 180
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCorrectApiUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "@"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 310
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFullChatInfoById(JLorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$ChatFull;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getInlineBot(Ljava/lang/String;JJ)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;"
        }
    .end annotation

    const-string v0, "messageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 262
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 263
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    const-string p1, ""

    .line 264
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 266
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 267
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    .line 266
    :goto_0
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 273
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, v0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda12;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 280
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getMessageLinkPattern(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 325
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getUserInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getUsersByIds(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;>;"
        }
    .end annotation

    const-string v0, "usersIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public subscribeToChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 202
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public unblockPeer(J)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 285
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 286
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    const-string v3, "just(false)"

    if-eqz v2, :cond_1

    .line 287
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v3, "messagesController.getUs\u2026rn Observable.just(false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    goto :goto_0

    :cond_1
    neg-long v4, p1

    .line 290
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v3, "messagesController.getCh\u2026rn Observable.just(false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    .line 286
    :goto_0
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 296
    iget v2, v0, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    .line 297
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    .line 301
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 302
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 304
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0, v1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 306
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public unsubscribeFromChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lio/reactivex/Observable<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 225
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
