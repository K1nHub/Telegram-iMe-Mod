.class public final Lcom/smedialink/manager/TelegramApiManager;
.super Ljava/lang/Object;
.source "TelegramApiManager.kt"

# interfaces
.implements Lcom/smedialink/manager/TelegramApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/manager/TelegramApiManager$Companion;
    }
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;


# direct methods
.method public static synthetic $r8$lambda$1AzRCYjQQiog4VkCGL7Yj7KbqzE(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->getInlineBot$lambda-15$lambda-14(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9PvZ5_7SlHYMdV-PNX7Uu0t9zgI(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/manager/TelegramApiManager;->acceptUrlAuth$lambda-12(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DZ9QuSsMtDs53CyIQQwAGIQYz88(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->unblockPeer$lambda-19(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FHMbGvx8AVUiCnHjTkTtsRQ86C0(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->getInlineBot$lambda-15(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IbG-DkndXORo3z0Fe3ZPp2suKX4(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/manager/TelegramApiManager;->unsubscribeFromChannel$lambda-9$lambda-8(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SAaqZO5cXpD-SKo9Rmdsdqjy2j0(Lorg/telegram/tgnet/TLObject;Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->getMessageLinkPattern$lambda-24$lambda-23$lambda-22(Lorg/telegram/tgnet/TLObject;Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWm1MGrSU8qpaUUycoefbqr83Us(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->unblockPeer$lambda-19$lambda-18(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKSpraVEv1highxEfVzMJu2VOHE(Lcom/smedialink/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->deleteUsers$lambda-26(Lcom/smedialink/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WRPeuReDalSEJHYpfraS4BCy7n4(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/manager/TelegramApiManager;->deleteUsers$lambda-26$lambda-25(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-CZ4etvGAAXp2j2YlN2Ncmfvbs(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/manager/TelegramApiManager;->subscribeToChannel$lambda-7$lambda-6(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_M7QpsCQw3m0MZfBRaSpdrxw1k4(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->getMessageLinkPattern$lambda-24$lambda-23(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$guEZaicH4uukBPqqogrRjTe7Of4(Lio/reactivex/ObservableEmitter;Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/manager/TelegramApiManager;->getChatInfoByUsername$lambda-1$lambda-0(Lio/reactivex/ObservableEmitter;Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hecljJBeMg9H6qPPEUY9WT7an6o(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/manager/TelegramApiManager;->acceptUrlAuth$lambda-12$lambda-11(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmor-VEIfvDLLrb7HA2qSZtnfLM(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->subscribeToChannel$lambda-7(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u0iCTU0frNW0rDMimaQm1bsTqMU(Lcom/smedialink/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->getChatInfoByUsername$lambda-1(Lcom/smedialink/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yW0rkKTHE0DDXTVKD6IiTHzGPbQ(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/manager/TelegramApiManager;->getMessageLinkPattern$lambda-24(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zPuj0Un_amt8WETS_peX4QRkf9Y(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager;->unsubscribeFromChannel$lambda-9(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/manager/TelegramApiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 17
    iput-object p2, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-void
.end method

.method private static final acceptUrlAuth$lambda-12(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$buttonUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$buttonReq"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 207
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p4, p2, p3}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda16;-><init>(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static final acceptUrlAuth$lambda-12$lambda-11(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$buttonUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$buttonReq"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 209
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/Exception;

    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 212
    :cond_0
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    if-eqz p4, :cond_1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;->url:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_1
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultDefault;

    if-eqz p3, :cond_2

    goto :goto_0

    .line 214
    :cond_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    .line 216
    :goto_0
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 217
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final deleteUsers$lambda-26(Lcom/smedialink/manager/TelegramApiManager;Ljava/util/ArrayList;Lio/reactivex/CompletableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda11;-><init>(Lio/reactivex/CompletableEmitter;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;ZLorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final deleteUsers$lambda-26$lambda-25(Lio/reactivex/CompletableEmitter;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 306
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    goto :goto_0

    .line 308
    :cond_0
    invoke-interface {p0, p1}, Lio/reactivex/CompletableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static final getChatInfoByUsername$lambda-1(Lcom/smedialink/manager/TelegramApiManager;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$correctUsername"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    .line 26
    invoke-interface {p2, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 27
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 30
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    .line 34
    new-instance v1, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p2, p0}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda15;-><init>(Lio/reactivex/ObservableEmitter;Lcom/smedialink/manager/TelegramApiManager;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method private static final getChatInfoByUsername$lambda-1$lambda-0(Lio/reactivex/ObservableEmitter;Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const-string v0, "res.chats"

    const-string v1, "$emitter"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 36
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/Exception;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 39
    :try_start_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 40
    iget-object p3, p1, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p3}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 41
    iget-object p3, p1, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p3}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 42
    iget-object p1, p1, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p1, p3, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 44
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 46
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telegram API: Empty result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_contacts_resolvedPeer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final getInlineBot$lambda-15(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 239
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda12;-><init>(Lio/reactivex/ObservableEmitter;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private static final getInlineBot$lambda-15$lambda-14(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 242
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p2, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.messages_BotResults"

    .line 244
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 245
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 246
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final getMessageLinkPattern$lambda-24(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currentChat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 290
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 291
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 293
    iget-object p0, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    new-instance p1, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda14;

    invoke-direct {p1, p3}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda14;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static final getMessageLinkPattern$lambda-24$lambda-23(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p0, p2}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/tgnet/TLObject;Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final getMessageLinkPattern$lambda-24$lambda-23$lambda-22(Lorg/telegram/tgnet/TLObject;Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const-string v0, "$emitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_1

    .line 296
    :cond_1
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 295
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez p0, :cond_4

    .line 297
    new-instance p0, Ljava/lang/Exception;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    :goto_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private static final subscribeToChannel$lambda-7(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 9

    const-string v0, "$channel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p1, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 147
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 148
    iget-object p1, p1, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 146
    new-instance v8, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda9;

    invoke-direct {v8, p2, p0}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda9;-><init>(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 158
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    :goto_0
    return-void
.end method

.method private static final subscribeToChannel$lambda-7$lambda-6(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 154
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static final unblockPeer$lambda-19(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;Lio/reactivex/ObservableEmitter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    .line 274
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p2}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda13;-><init>(Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static final unblockPeer$lambda-19$lambda-18(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    const-string p1, "$emitter"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 276
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Exception;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 278
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 279
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final unsubscribeFromChannel$lambda-9(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;Lio/reactivex/ObservableEmitter;)V
    .locals 10

    const-string v0, "$channel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 169
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p1, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 174
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 175
    iget-object p1, p1, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 173
    new-instance v8, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda8;

    invoke-direct {v8, p2, p0}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda8;-><init>(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final unsubscribeFromChannel$lambda-9$lambda-8(Lio/reactivex/ObservableEmitter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const-string v0, "$emitter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 181
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

    .line 191
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;-><init>()V

    .line 192
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 193
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->url:Ljava/lang/String;

    .line 194
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    goto :goto_0

    .line 196
    :cond_0
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->button_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->button_id:I

    .line 197
    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->msg_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->msg_id:I

    .line 198
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 199
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    :goto_0
    const/4 v1, 0x1

    .line 201
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->write_allowed:Z

    .line 204
    new-instance v1, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create<String> { emitter\u2026(schedulersProvider.io())"

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

    .line 303
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/manager/TelegramApiManager;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "create { source ->\n     \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 21
    invoke-virtual {p0, p1}, Lcom/smedialink/manager/TelegramApiManager;->getCorrectApiUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/manager/TelegramApiManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create<TLRPC.Chat> { emi\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 285
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    .line 224
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 226
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    const-string p1, ""

    .line 227
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 229
    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    .line 229
    :goto_0
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 236
    new-instance p1, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda5;-><init>(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 249
    iget-object p2, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create<TLRPC.messages_Bo\u2026(schedulersProvider.io())"

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

    .line 288
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 300
    iget-object p2, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create<TLRPC.TL_exported\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 142
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p0}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 161
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create<TLRPC.Chat> { emi\u2026(schedulersProvider.io())"

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

    .line 253
    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 254
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;-><init>()V

    .line 255
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    const-string v3, "just(false)"

    if-eqz v2, :cond_1

    .line 256
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

    .line 257
    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    goto :goto_0

    :cond_1
    neg-long v4, p1

    .line 259
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

    .line 260
    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    .line 255
    :goto_0
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;->id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 265
    iget v2, v0, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    .line 266
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    .line 269
    iget-object p1, p0, Lcom/smedialink/manager/TelegramApiManager;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 271
    new-instance p1, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v1}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/manager/TelegramApiManager;Lorg/telegram/tgnet/TLRPC$TL_contacts_unblock;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 282
    iget-object p2, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "create<Boolean> { emitte\u2026(schedulersProvider.io())"

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

    .line 166
    new-instance v0, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p0}, Lcom/smedialink/manager/TelegramApiManager$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/manager/TelegramApiManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 187
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/smedialink/manager/TelegramApiManager;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "create<TLRPC.Chat> { emi\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
