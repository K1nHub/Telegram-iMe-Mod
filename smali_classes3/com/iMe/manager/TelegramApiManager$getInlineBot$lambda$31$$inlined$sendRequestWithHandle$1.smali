.class public final Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;
.super Ljava/lang/Object;
.source "TelegramApiManager.kt"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/TelegramApiManager;->getInlineBot(Ljava/lang/String;JJ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager$sendRequestWithHandle$1\n+ 2 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n*L\n1#1,378:1\n278#2:379\n*E\n"
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 355
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;->$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v0, Ljava/lang/Exception;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 379
    :cond_0
    :try_start_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 359
    :goto_0
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;->$emitter:Lio/reactivex/ObservableEmitter;

    if-eqz p1, :cond_2

    .line 361
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 362
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_1

    .line 364
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

    .line 368
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$getInlineBot$lambda$31$$inlined$sendRequestWithHandle$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
