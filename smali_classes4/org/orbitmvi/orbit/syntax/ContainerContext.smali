.class public final Lorg/orbitmvi/orbit/syntax/ContainerContext;
.super Ljava/lang/Object;
.source "ContainerContext.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "SE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final getState:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final postSideEffect:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TSE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reduce:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;+TS;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lorg/orbitmvi/orbit/Container$Settings;

.field private final subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;


# direct methods
.method public constructor <init>(Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/Container$Settings;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TS;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;+TS;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "postSideEffect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reduce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscribedCounter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->settings:Lorg/orbitmvi/orbit/Container$Settings;

    .line 10
    iput-object p2, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->postSideEffect:Lkotlin/jvm/functions/Function2;

    .line 11
    iput-object p3, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->getState:Lkotlin/jvm/functions/Function0;

    .line 12
    iput-object p4, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->reduce:Lkotlin/jvm/functions/Function2;

    .line 13
    iput-object p5, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->subscribedCounter:Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;

    return-void
.end method


# virtual methods
.method public final getPostSideEffect()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TSE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->postSideEffect:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getReduce()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;+TS;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->reduce:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getSettings()Lorg/orbitmvi/orbit/Container$Settings;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->settings:Lorg/orbitmvi/orbit/Container$Settings;

    return-object v0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/orbitmvi/orbit/syntax/ContainerContext;->getState:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
