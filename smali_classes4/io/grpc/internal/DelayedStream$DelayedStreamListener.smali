.class Lio/grpc/internal/DelayedStream$DelayedStreamListener;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedStreamListener"
.end annotation


# instance fields
.field private volatile passThrough:Z

.field private pendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final realListener:Lio/grpc/internal/ClientStreamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/ClientStreamListener;)V
    .locals 1

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    .line 407
    iput-object p1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)Lio/grpc/internal/ClientStreamListener;
    .locals 0

    .line 400
    iget-object p0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    return-object p0
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 416
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1

    .line 460
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$4;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$4;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 1

    .line 472
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$5;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public drainPendingCallbacks()V
    .locals 3

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    :goto_0
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    .line 488
    monitor-exit p0

    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    .line 495
    iput-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    .line 496
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 500
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 502
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 496
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 1

    .line 450
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1

    .line 422
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/StreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    goto :goto_0

    .line 425
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$1;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Lio/grpc/internal/StreamListener$MessageProducer;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 436
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/StreamListener;->onReady()V

    goto :goto_0

    .line 439
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method