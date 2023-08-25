.class public final Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;
.super Ljava/lang/Object;
.source "TelegramApiManager.kt"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/TelegramApiManager;->getChatInfoById(J)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager$sendRequestWithHandle$1\n+ 2 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n*L\n1#1,363:1\n143#2,5:364\n*E\n"
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;

.field final synthetic this$0:Lcom/iMe/manager/TelegramApiManager;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;Lcom/iMe/manager/TelegramApiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 340
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v0, Ljava/lang/Exception;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p2, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_messages_chats"

    .line 364
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 365
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-static {p2}, Lcom/iMe/manager/TelegramApiManager;->access$getMessagesStorage(Lcom/iMe/manager/TelegramApiManager;)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 366
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->this$0:Lcom/iMe/manager/TelegramApiManager;

    invoke-static {p2}, Lcom/iMe/manager/TelegramApiManager;->access$getMessagesController(Lcom/iMe/manager/TelegramApiManager;)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 368
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    const-string p2, "chats"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    if-eqz v2, :cond_2

    .line 346
    invoke-interface {p1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 347
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_0

    .line 349
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Telegram API: Empty result"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 353
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getChatInfoById$lambda$16$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
