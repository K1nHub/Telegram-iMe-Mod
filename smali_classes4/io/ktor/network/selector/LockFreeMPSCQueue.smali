.class public final Lio/ktor/network/selector/LockFreeMPSCQueue;
.super Ljava/lang/Object;
.source "LockFreeMPSCQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeMPSCQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeMPSCQueue.kt\nio/ktor/network/selector/LockFreeMPSCQueue\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,245:1\n155#2,2:246\n155#2,2:248\n155#2,2:250\n*S KotlinDebug\n*F\n+ 1 LockFreeMPSCQueue.kt\nio/ktor/network/selector/LockFreeMPSCQueue\n*L\n30#1:246,2\n37#1:248,2\n48#1:250,2\n*E\n"
.end annotation


# static fields
.field private static final synthetic _cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _cur:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/ktor/network/selector/LockFreeMPSCQueue;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;-><init>(I)V

    iput-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    .line 38
    invoke-virtual {v0, p1}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 41
    :cond_1
    sget-object v1, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final close()V
    .locals 3

    .line 156
    :goto_0
    iget-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    .line 31
    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v1, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 156
    :goto_0
    iget-object v0, p0, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur:Ljava/lang/Object;

    check-cast v0, Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    .line 49
    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v1

    .line 50
    sget-object v2, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->REMOVE_FROZEN:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 51
    :cond_0
    sget-object v1, Lio/ktor/network/selector/LockFreeMPSCQueue;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0}, Lio/ktor/network/selector/LockFreeMPSCQueueCore;->next()Lio/ktor/network/selector/LockFreeMPSCQueueCore;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
