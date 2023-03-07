.class final Lcom/smedialink/bots/usecase/AiBotsManager$cancel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->cancel()V
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
.field final synthetic this$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$cancel$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/smedialink/bots/usecase/AiBotsManager$cancel$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$cancel$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-static {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->access$getDisposables$p(Lcom/smedialink/bots/usecase/AiBotsManager;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method
