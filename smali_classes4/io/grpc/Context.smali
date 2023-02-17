.class public Lio/grpc/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Context$DirectExecutor;,
        Lio/grpc/Context$ParentListener;,
        Lio/grpc/Context$ExecutableListener;,
        Lio/grpc/Context$Storage;,
        Lio/grpc/Context$CancellationListener;,
        Lio/grpc/Context$CancellableContext;,
        Lio/grpc/Context$LazyStorage;
    }
.end annotation


# static fields
.field private static final EMPTY_ENTRIES:Lio/grpc/PersistentHashArrayMappedTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOT:Lio/grpc/Context;

.field static final log:Ljava/util/logging/Logger;


# instance fields
.field final cancellableAncestor:Lio/grpc/Context$CancellableContext;

.field final generation:I

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/grpc/Context$ExecutableListener;",
            ">;"
        }
    .end annotation
.end field

.field private parentListener:Lio/grpc/Context$CancellationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    const-class v0, Lio/grpc/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    .line 102
    new-instance v0, Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-direct {v0}, Lio/grpc/PersistentHashArrayMappedTrie;-><init>()V

    sput-object v0, Lio/grpc/Context;->EMPTY_ENTRIES:Lio/grpc/PersistentHashArrayMappedTrie;

    .line 117
    new-instance v1, Lio/grpc/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    sput-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-void
.end method

.method private constructor <init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context;",
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance p2, Lio/grpc/Context$ParentListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lio/grpc/Context$ParentListener;-><init>(Lio/grpc/Context;Lio/grpc/Context$1;)V

    iput-object p2, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 210
    invoke-static {p1}, Lio/grpc/Context;->cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 212
    :cond_0
    iget p1, p1, Lio/grpc/Context;->generation:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lio/grpc/Context;->generation:I

    .line 213
    invoke-static {p1}, Lio/grpc/Context;->validateGeneration(I)V

    return-void
.end method

.method static cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1078
    :cond_0
    instance-of v0, p0, Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_1

    .line 1079
    check-cast p0, Lio/grpc/Context$CancellableContext;

    return-object p0

    .line 1083
    :cond_1
    iget-object p0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    return-object p0
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1051
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static current()Lio/grpc/Context;
    .locals 1

    .line 181
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Context$Storage;->current()Lio/grpc/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    :cond_0
    return-object v0
.end method

.method static storage()Lio/grpc/Context$Storage;
    .locals 1

    .line 121
    sget-object v0, Lio/grpc/Context$LazyStorage;->storage:Lio/grpc/Context$Storage;

    return-object v0
.end method

.method private static validateGeneration(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 1092
    sget-object p0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "cancellationListener"

    .line 499
    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    .line 500
    invoke-static {p2, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lio/grpc/Context;->canBeCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    new-instance v0, Lio/grpc/Context$ExecutableListener;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/Context$ExecutableListener;-><init>(Lio/grpc/Context;Ljava/util/concurrent/Executor;Lio/grpc/Context$CancellationListener;)V

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/Context;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {v0}, Lio/grpc/Context$ExecutableListener;->deliver()V

    goto :goto_0

    .line 508
    :cond_0
    iget-object p1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 511
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object p1, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz p1, :cond_2

    .line 514
    iget-object p2, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    sget-object v0, Lio/grpc/Context$DirectExecutor;->INSTANCE:Lio/grpc/Context$DirectExecutor;

    invoke-virtual {p1, p2, v0}, Lio/grpc/Context;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public attach()Lio/grpc/Context;
    .locals 1

    .line 425
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Context$Storage;->doAttach(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 427
    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    :cond_0
    return-object v0
.end method

.method canBeCancelled()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    .line 476
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 1

    const-string v0, "toAttach"

    .line 447
    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/Context$Storage;->detach(Lio/grpc/Context;Lio/grpc/Context;)V

    return-void
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1

    .line 488
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 491
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    return v0
.end method

.method notifyAndClearListeners()V
    .locals 4

    .line 557
    invoke-virtual {p0}, Lio/grpc/Context;->canBeCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 563
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 566
    iput-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 572
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 573
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/Context$ExecutableListener;

    iget-object v3, v3, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    instance-of v3, v3, Lio/grpc/Context$ParentListener;

    if-nez v3, :cond_2

    .line 574
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/Context$ExecutableListener;

    invoke-virtual {v3}, Lio/grpc/Context$ExecutableListener;->deliver()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Context$ExecutableListener;

    iget-object v2, v2, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    instance-of v2, v2, Lio/grpc/Context$ParentListener;

    if-eqz v2, :cond_4

    .line 579
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Context$ExecutableListener;

    invoke-virtual {v2}, Lio/grpc/Context$ExecutableListener;->deliver()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_5
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_6

    .line 583
    iget-object v1, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-virtual {v0, v1}, Lio/grpc/Context;->removeListener(Lio/grpc/Context$CancellationListener;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 567
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeListener(Lio/grpc/Context$CancellationListener;)V
    .locals 2

    .line 528
    invoke-virtual {p0}, Lio/grpc/Context;->canBeCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 534
    iget-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Context$ExecutableListener;

    iget-object v1, v1, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    if-ne v1, p1, :cond_1

    .line 535
    iget-object p1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 542
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 543
    iget-object p1, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz p1, :cond_3

    .line 544
    iget-object v0, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-virtual {p1, v0}, Lio/grpc/Context;->removeListener(Lio/grpc/Context$CancellationListener;)V

    :cond_3
    const/4 p1, 0x0

    .line 546
    iput-object p1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 549
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
