.class public final Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;
.super Ljava/lang/Object;
.source "TelegramApiManager.kt"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/TelegramApiManager;->getChatInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager$sendRequestWithHandle$1\n+ 2 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n*L\n1#1,366:1\n42#2,8:367\n*E\n"
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic this$0:Lcom/iMe/manager/TelegramApiManager;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 343
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v0, Ljava/lang/Exception;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p2, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_contacts_resolvedPeer"

    .line 367
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 368
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-static {p2}, Lcom/iMe/manager/TelegramApiManager;->access$getMessagesStorage(Lcom/iMe/manager/TelegramApiManager;)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 369
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-static {p2}, Lcom/iMe/manager/TelegramApiManager;->access$getMessagesController(Lcom/iMe/manager/TelegramApiManager;)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    .line 370
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 371
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 374
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    const-string p2, "chats"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 347
    :goto_0
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    if-eqz p1, :cond_2

    .line 349
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 350
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_1

    .line 352
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telegram API: Empty result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 356
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoByUsername$lambda$2$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
