.class public Lio/ktor/network/selector/SelectableBase;
.super Ljava/lang/Object;
.source "SelectableJvm.kt"

# interfaces
.implements Lio/ktor/network/selector/Selectable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectableJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectableJvm.kt\nio/ktor/network/selector/SelectableBase\n+ 2 InterestSuspensionsMap.kt\nio/ktor/network/selector/InterestSuspensionsMap\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n47#2,2:45\n50#2:48\n1#3:47\n*S KotlinDebug\n*F\n+ 1 SelectableJvm.kt\nio/ktor/network/selector/SelectableBase\n*L\n35#1:45,2\n35#1:48\n35#1:47\n*E\n"
.end annotation


# static fields
.field private static final synthetic _interestedOps$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _interestedOps:I

.field private final _isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final channel:Ljava/nio/channels/SelectableChannel;

.field private final suspensions:Lio/ktor/network/selector/InterestSuspensionsMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/ktor/network/selector/SelectableBase;

    const-string v1, "_interestedOps"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/network/selector/SelectableBase;->_interestedOps$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SelectableChannel;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/selector/SelectableBase;->channel:Ljava/nio/channels/SelectableChannel;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/ktor/network/selector/SelectableBase;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Lio/ktor/network/selector/InterestSuspensionsMap;

    invoke-direct {p1}, Lio/ktor/network/selector/InterestSuspensionsMap;-><init>()V

    iput-object p1, p0, Lio/ktor/network/selector/SelectableBase;->suspensions:Lio/ktor/network/selector/InterestSuspensionsMap;

    .line 17
    iput v0, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 32
    iget-object v0, p0, Lio/ktor/network/selector/SelectableBase;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    iput v1, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    .line 35
    invoke-virtual {p0}, Lio/ktor/network/selector/SelectableBase;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v0

    .line 47
    sget-object v2, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {v2}, Lio/ktor/network/selector/SelectInterest$Companion;->getAllInterests()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 48
    invoke-virtual {v0, v4}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(Lio/ktor/network/selector/SelectInterest;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 36
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v5, Lio/ktor/network/selector/ClosedChannelCancellationException;

    invoke-direct {v5}, Lio/ktor/network/selector/ClosedChannelCancellationException;-><init>()V

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lio/ktor/network/selector/SelectableBase;->close()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/ktor/network/selector/SelectableBase;->channel:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public getInterestedOps()I
    .locals 1

    .line 19
    iget v0, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    return v0
.end method

.method public getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;
    .locals 1

    .line 12
    iget-object v0, p0, Lio/ktor/network/selector/SelectableBase;->suspensions:Lio/ktor/network/selector/InterestSuspensionsMap;

    return-object v0
.end method

.method public interestOp(Lio/ktor/network/selector/SelectInterest;Z)V
    .locals 3

    const-string/jumbo v0, "interest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lio/ktor/network/selector/SelectInterest;->getFlag()I

    move-result p1

    .line 25
    :cond_0
    iget v0, p0, Lio/ktor/network/selector/SelectableBase;->_interestedOps:I

    if-eqz p2, :cond_1

    or-int v1, v0, p1

    goto :goto_0

    :cond_1
    not-int v1, p1

    and-int/2addr v1, v0

    .line 27
    :goto_0
    sget-object v2, Lio/ktor/network/selector/SelectableBase;->_interestedOps$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ktor/network/selector/SelectableBase;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
