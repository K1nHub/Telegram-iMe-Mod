.class final Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RealContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/RealContainer;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CoroutineScope;Lorg/orbitmvi/orbit/Container$Settings;Lorg/orbitmvi/orbit/internal/repeatonsubscription/SubscribedCounter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TSTATE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/orbitmvi/orbit/internal/RealContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/internal/RealContainer<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/orbitmvi/orbit/internal/RealContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/internal/RealContainer<",
            "TSTATE;TSIDE_EFFECT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer$pluginContext$2;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-static {v0}, Lorg/orbitmvi/orbit/internal/RealContainer;->access$getInternalStateFlow$p(Lorg/orbitmvi/orbit/internal/RealContainer;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
