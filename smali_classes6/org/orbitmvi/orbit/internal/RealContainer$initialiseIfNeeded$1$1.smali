.class final Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RealContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
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

    iput-object p1, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$1$1;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/orbitmvi/orbit/internal/RealContainer$initialiseIfNeeded$1$1;->this$0:Lorg/orbitmvi/orbit/internal/RealContainer;

    invoke-virtual {v0}, Lorg/orbitmvi/orbit/internal/RealContainer;->getSettings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/orbitmvi/orbit/Container$Settings;->getIdlingRegistry()Lorg/orbitmvi/orbit/idling/IdlingResource;

    move-result-object v0

    invoke-interface {v0}, Lorg/orbitmvi/orbit/idling/IdlingResource;->close()V

    return-void
.end method
