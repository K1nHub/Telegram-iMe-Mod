.class public final Lio/ktor/utils/io/internal/JoiningState;
.super Ljava/lang/Object;
.source "ByteBufferChannelInternals.kt"


# static fields
.field private static final synthetic _closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeWaitJob:Ljava/lang/Object;

.field private volatile synthetic closed:I

.field private final delegateClose:Z

.field private final delegatedTo:Lio/ktor/utils/io/ByteBufferChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/ktor/utils/io/internal/JoiningState;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_closeWaitJob"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/JoiningState;->_closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public final complete()V
    .locals 3

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lio/ktor/utils/io/internal/JoiningState;->closed:I

    .line 32
    sget-object v1, Lio/ktor/utils/io/internal/JoiningState;->_closeWaitJob$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getDelegateClose()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lio/ktor/utils/io/internal/JoiningState;->delegateClose:Z

    return v0
.end method

.method public final getDelegatedTo()Lio/ktor/utils/io/ByteBufferChannel;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/ktor/utils/io/internal/JoiningState;->delegatedTo:Lio/ktor/utils/io/ByteBufferChannel;

    return-object v0
.end method
