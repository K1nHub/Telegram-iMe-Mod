.class public final Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;
.super Ljava/lang/Object;
.source "TelegramApiManager.kt"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/TelegramApiManager;->acceptUrlAuth(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager$sendRequestWithHandle$1\n+ 2 TelegramApiManager.kt\ncom/iMe/manager/TelegramApiManager\n*L\n1#1,363:1\n232#2,4:364\n*E\n"
.end annotation


# instance fields
.field final synthetic $buttonReq$inlined:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

.field final synthetic $buttonUrl$inlined:Ljava/lang/String;

.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableEmitter;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$buttonUrl$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$buttonReq$inlined:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 340
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v0, Ljava/lang/Exception;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 365
    :cond_0
    :try_start_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;->url:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultDefault;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$buttonUrl$inlined:Ljava/lang/String;

    goto :goto_0

    .line 367
    :cond_2
    iget-object p1, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$buttonReq$inlined:Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    .line 344
    :goto_0
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    if-eqz p1, :cond_3

    .line 346
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 347
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_1

    .line 349
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telegram API: Empty result"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 353
    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/iMe/manager/TelegramApiManager$acceptUrlAuth$lambda$26$$inlined$sendRequestWithHandle$default$1;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
