.class final Lcom/smedialink/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->rebuildActiveBotsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/AigramBot;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/bots/domain/AigramBot;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getActiveBots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getActiveBots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$rebuildActiveBotsList$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotDisableCallback()Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/smedialink/bots/usecase/AiBotsManager$BotsListChangedCallback;->onSuccess()V

    :cond_0
    return-void
.end method
