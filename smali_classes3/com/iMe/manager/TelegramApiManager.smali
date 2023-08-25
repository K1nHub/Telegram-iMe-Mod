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
    value = "SMAP\nTelegramApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,363:1\n330#1,9:364\n356#1,2:373\n330#1,9:375\n356#1,2:384\n330#1,9:390\n356#1,2:399\n330#1,9:401\n356#1,2:410\n330#1,9:412\n356#1,2:421\n330#1,9:423\n356#1,2:432\n330#1,9:434\n356#1,2:443\n337#1,2:445\n356#1,2:447\n330#1,9:449\n356#1,2:458\n330#1,9:460\n356#1,2:469\n1549#2:386\n1620#2,3:387\n*S KotlinDebug\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n*L\n41#1:364,9\n41#1:373,2\n66#1:375,9\n66#1:384,2\n87#1:390,9\n87#1:399,2\n115#1:401,9\n115#1:410,2\n142#1:412,9\n142#1:421,2\n162#1:423,9\n162#1:432,2\n231#1:434,9\n231#1:443,2\n259#1:445,2\n259#1:447,2\n290#1:449,9\n290#1:458,2\n307#1:460,9\n307#1:469,2\n82#1:386\n82#1:387,3\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public static synthetic $r8$lambda$0Lclgw_YTHncSOYuMLkTCIXwBXY(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->subscribeToChannel$lambda$21$lambda$20(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$92Wu8nIFEuQLiacyJw8qpu9fHa8(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->unblockPeer$lambda$33(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AcaHmMvy9QJmXfyiPXbj8OrG7C8(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->unsubscribeFromChannel$lambda$23$lambda$22(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LCIJemZ8G0V9mnXqqVP3AtIS7ok(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getInlineBot$lambda$29(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NgcSUWVwhX97upcNYyGSokZiHKo(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->deleteUsers$lambda$39(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGEfHu6xMwVZvUE9toUZ_KGVKFM(Lcom/iMe/manager/TelegramApiManager;JLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager;->getChatInfoById$lambda$16(Lcom/iMe/manager/TelegramApiManager;JLio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCMhbxfotVn3xShXtfOfYET98xE(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getUsersByIds$lambda$10(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S20K-TIYxSYAediR3H7-_7BbC9o(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->unsubscribeFromChannel$lambda$23(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z14R_ZBB0F304RsHBksv6ZH-Jkc(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager;->getMessageLinkPattern$lambda$36(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_B8IWWzErw5Rmllv1ygPeTBkiVg(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager;->getChatParticipant$lambda$19(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqjqwUdECODzySipKZWMT_N1VgI(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getUserInfoByUsername$lambda$5(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sst9D_xeT0lHo9yvZW7_o5G5UNk(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/manager/TelegramApiManager;->getFullChatInfoById$lambda$14(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vRIgNdM28NBo8S0hu1f3XSncHiQ(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/manager/TelegramApiManager;->acceptUrlAuth$lambda$26(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vSNNtaJiQjhCxP51eq54w3LnPfc(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->subscribeToChannel$lambda$21(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xiLSee7EzxjnE4uTXCPWL45enu4(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager;->getChatInfoByUsername$lambda$2(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zbLaGmF52oTVR9cjovdv_XKBL1Y(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->deleteUsers$lambda$39$lambda$38(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V

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

.method private static final acceptUrlAuth$lambda$26(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V
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

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 338
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v0, p4, p2, p3}, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

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

.method private static final deleteUsers$lambda$39(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object p0, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    .line 316
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/CompletableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final deleteUsers$lambda$39$lambda$38(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 318
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    goto :goto_0

    .line 319
    :cond_0
    invoke-interface {p0, p1}, Lio/reactivex/CompletableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final getChatInfoById$lambda$16(Lcom/iMe/manager/TelegramApiManager;JLio/reactivex/ObservableEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {p3, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 137
    invoke-interface {p3}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;-><init>()V

    .line 140
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChats;->id:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p2

    invoke-interface {p2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    .line 338
    new-instance v1, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v1, p3, p0}, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private static final getChatInfoByUsername$lambda$2(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$correctUsername"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 36
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 39
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    const/4 p1, 0x0

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p2, p0}, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private static final getChatParticipant$lambda$19(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 158
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 159
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 338
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$getChatParticipant$lambda$19$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {p1, p3}, Lcom/iMe/manager/TelegramApiManager$getChatParticipant$lambda$19$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final getFullChatInfoById$lambda$14(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {p4, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 101
    invoke-interface {p4}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    const-string v0, "getMessagesController().getChat(id)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;-><init>()V

    .line 107
    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p3

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getFullChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    .line 111
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:J

    :goto_0
    const/4 p3, 0x0

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getFullChatInfoById$lambda$14$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p4, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$getFullChatInfoById$lambda$14$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;J)V

    invoke-virtual {v1, v0, v2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_1
    return-void
.end method

.method private static final getInlineBot$lambda$29(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 338
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$29$$inlined$sendRequestWithHandle$1;

    invoke-direct {v0, p2}, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$29$$inlined$sendRequestWithHandle$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final getMessageLinkPattern$lambda$36(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 303
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 304
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 338
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$getMessageLinkPattern$lambda$36$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {p1, p3}, Lcom/iMe/manager/TelegramApiManager$getMessageLinkPattern$lambda$36$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private final getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 2

    .line 325
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

    .line 328
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const-string v1, "getInstance(telegramGateway.selectedAccountIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getUserInfoByUsername$lambda$5(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->getCorrectApiUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 61
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 64
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    const/4 p1, 0x0

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getUserInfoByUsername$lambda$5$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p2, p0}, Lcom/iMe/manager/TelegramApiManager$getUserInfoByUsername$lambda$5$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private static final getUsersByIds$lambda$10(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$usersIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
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

    .line 83
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {v1}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 82
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;->id:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    .line 338
    new-instance v2, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$10$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v2, p2, p0}, Lcom/iMe/manager/TelegramApiManager$getUsersByIds$lambda$10$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final subscribeToChannel$lambda$21(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 9

    const-string v0, "$channel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p1, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 173
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 174
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

    .line 172
    new-instance v8, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda14;

    invoke-direct {v8, p2, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda14;-><init>(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 184
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    :goto_0
    return-void
.end method

.method private static final subscribeToChannel$lambda$21$lambda$20(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 180
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static final unblockPeer$lambda$33(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-static {p0}, Lcom/iMe/manager/TelegramApiManager;->access$getTelegramGateway$p(Lcom/iMe/manager/TelegramApiManager;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 338
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$unblockPeer$lambda$33$$inlined$sendRequestWithHandle$default$1;

    invoke-direct {v0, p2}, Lcom/iMe/manager/TelegramApiManager$unblockPeer$lambda$33$$inlined$sendRequestWithHandle$default$1;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final unsubscribeFromChannel$lambda$23(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 10

    const-string v0, "$channel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 194
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p1}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 197
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 198
    iget-object p1, p1, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 196
    new-instance v8, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda15;

    invoke-direct {v8, p2, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda15;-><init>(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final unsubscribeFromChannel$lambda$23$lambda$22(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 204
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

    .line 217
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;-><init>()V

    .line 218
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->url:Ljava/lang/String;

    .line 220
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    goto :goto_0

    .line 222
    :cond_0
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->button_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->button_id:I

    .line 223
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->msg_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->msg_id:I

    .line 224
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 225
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    :goto_0
    const/4 v1, 0x1

    .line 227
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->write_allowed:Z

    .line 230
    new-instance v1, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 238
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

    .line 313
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "create { source ->\n     \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
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

    .line 133
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/manager/TelegramApiManager;J)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 150
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

    .line 30
    invoke-virtual {p0, p1}, Lcom/iMe/manager/TelegramApiManager;->getCorrectApiUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
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

    .line 156
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;)V

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

    .line 295
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

    .line 97
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/manager/TelegramApiManager;JLorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 130
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

    .line 246
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 247
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 248
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    const-string p1, ""

    .line 249
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 251
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    .line 251
    :goto_0
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 258
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, v0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 265
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

    .line 301
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 310
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

    .line 56
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
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

    .line 80
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/manager/TelegramApiManager;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
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

    .line 168
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 187
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 188
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

    .line 269
    invoke-direct {p0}, Lcom/iMe/manager/TelegramApiManager;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 270
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 271
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    const-string v3, "just(false)"

    if-eqz v2, :cond_1

    .line 272
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

    .line 273
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    goto :goto_0

    :cond_1
    neg-long v4, p1

    .line 275
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

    .line 276
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    .line 271
    :goto_0
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 281
    iget v2, v0, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    .line 282
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    .line 286
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 287
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 289
    new-instance p1, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, v1}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 291
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

    .line 191
    new-instance v0, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p0}, Lcom/iMe/manager/TelegramApiManager$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/manager/TelegramApiManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 210
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/iMe/manager/TelegramApiManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create { emitter ->\n    \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
