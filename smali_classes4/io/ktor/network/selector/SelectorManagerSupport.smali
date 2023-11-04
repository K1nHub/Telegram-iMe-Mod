.class public abstract Lio/ktor/network/selector/SelectorManagerSupport;
.super Ljava/lang/Object;
.source "SelectorManagerSupport.kt"

# interfaces
.implements Lio/ktor/network/selector/SelectorManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectorManagerSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectorManagerSupport.kt\nio/ktor/network/selector/SelectorManagerSupport\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 InterestSuspensionsMap.kt\nio/ktor/network/selector/InterestSuspensionsMap\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n314#2,11:186\n37#3,8:197\n47#3,2:205\n50#3:208\n1#4:207\n1#4:210\n1851#5:209\n1852#5:211\n*S KotlinDebug\n*F\n+ 1 SelectorManagerSupport.kt\nio/ktor/network/selector/SelectorManagerSupport\n*L\n41#1:186,11\n84#1:197,8\n148#1:205,2\n148#1:208\n148#1:207\n159#1:209\n159#1:211\n*E\n"
.end annotation


# instance fields
.field private cancelled:I

.field private pending:I

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    const-string/jumbo v1, "provider()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method private final getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;
    .locals 1

    .line 170
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/ktor/network/selector/Selectable;

    if-eqz v0, :cond_0

    check-cast p1, Lio/ktor/network/selector/Selectable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final setSubject(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V
    .locals 0

    .line 172
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final applyInterest(Ljava/nio/channels/Selector;Lio/ktor/network/selector/Selectable;)V
    .locals 3

    const-string/jumbo v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 113
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getInterestedOps()I

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {v0, p1, v2, p2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 121
    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 126
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 129
    invoke-interface {p2}, Lio/ktor/network/selector/Selectable;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 130
    :cond_2
    invoke-virtual {p0, p2, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected final cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "attachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object p1

    .line 47
    sget-object v0, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {v0}, Lio/ktor/network/selector/SelectInterest$Companion;->getAllInterests()[Lio/ktor/network/selector/SelectInterest;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 48
    invoke-virtual {p1, v3}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(Lio/ktor/network/selector/SelectInterest;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 149
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final cancelAllSuspensions(Ljava/nio/channels/Selector;Ljava/lang/Throwable;)V
    .locals 3

    const-string/jumbo v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 157
    new-instance p2, Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;

    invoke-direct {p2}, Lio/ktor/network/selector/SelectorManagerSupport$ClosedSelectorCancellationException;-><init>()V

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "selector.keys()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 161
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lio/ktor/network/selector/Selectable;

    if-eqz v2, :cond_2

    check-cast v1, Lio/ktor/network/selector/Selectable;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, p2}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    .line 165
    :cond_3
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected final getCancelled()I
    .locals 1

    .line 27
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    return v0
.end method

.method protected final getPending()I
    .locals 1

    .line 22
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    return v0
.end method

.method public final getProvider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method protected final handleSelectedKey(Ljava/nio/channels/SelectionKey;)V
    .locals 8

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 79
    invoke-direct {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 82
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    goto :goto_1

    .line 84
    :cond_0
    invoke-interface {v2}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v2

    .line 37
    sget-object v3, Lio/ktor/network/selector/SelectInterest;->Companion:Lio/ktor/network/selector/SelectInterest$Companion;

    invoke-virtual {v3}, Lio/ktor/network/selector/SelectInterest$Companion;->getFlags()[I

    move-result-object v3

    const/4 v4, 0x0

    .line 39
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    .line 40
    aget v6, v3, v4

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 41
    invoke-virtual {v2, v4}, Lio/ktor/network/selector/InterestSuspensionsMap;->removeSuspension(I)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 84
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    not-int v0, v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    .line 88
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_3
    if-eqz v0, :cond_4

    .line 92
    iget v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 97
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 98
    iget v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    .line 99
    invoke-direct {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->getSubject(Ljava/nio/channels/SelectionKey;)Lio/ktor/network/selector/Selectable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 100
    invoke-virtual {p0, v1, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->cancelAllSuspensions(Lio/ktor/network/selector/Selectable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lio/ktor/network/selector/SelectorManagerSupport;->setSubject(Ljava/nio/channels/SelectionKey;Lio/ktor/network/selector/Selectable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected final handleSelectedKeys(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "selectedKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "keys"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    .line 58
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    sub-int/2addr p2, v0

    iput p2, p0, Lio/ktor/network/selector/SelectorManagerSupport;->pending:I

    const/4 p2, 0x0

    .line 59
    iput p2, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    if-lez v0, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 63
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/channels/SelectionKey;

    .line 65
    invoke-virtual {p0, p2}, Lio/ktor/network/selector/SelectorManagerSupport;->handleSelectedKey(Ljava/nio/channels/SelectionKey;)V

    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract publishInterest(Lio/ktor/network/selector/Selectable;)V
.end method

.method public final select(Lio/ktor/network/selector/Selectable;Lio/ktor/network/selector/SelectInterest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/selector/Selectable;",
            "Lio/ktor/network/selector/SelectInterest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getInterestedOps()I

    move-result v0

    .line 36
    invoke-virtual {p2}, Lio/ktor/network/selector/SelectInterest;->getFlag()I

    move-result v1

    .line 38
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    and-int v2, v0, v1

    if-eqz v2, :cond_3

    .line 315
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 42
    sget-object v1, Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;->INSTANCE:Lio/ktor/network/selector/SelectorManagerSupport$select$2$1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 45
    invoke-interface {p1}, Lio/ktor/network/selector/Selectable;->getSuspensions()Lio/ktor/network/selector/InterestSuspensionsMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lio/ktor/network/selector/InterestSuspensionsMap;->addSuspension(Lio/ktor/network/selector/SelectInterest;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 47
    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lio/ktor/network/selector/SelectorManagerSupport;->publishInterest(Lio/ktor/network/selector/Selectable;)V

    .line 323
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    .line 324
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 39
    :cond_3
    invoke-static {v0, v1}, Lio/ktor/network/selector/SelectorManagerSupportKt;->access$selectableIsInvalid(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 38
    :cond_4
    invoke-static {}, Lio/ktor/network/selector/SelectorManagerSupportKt;->access$selectableIsClosed()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected final setCancelled(I)V
    .locals 0

    .line 27
    iput p1, p0, Lio/ktor/network/selector/SelectorManagerSupport;->cancelled:I

    return-void
.end method
