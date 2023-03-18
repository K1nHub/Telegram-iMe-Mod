.class final Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->startBotDownloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $botId:Ljava/lang/String;

.field final synthetic $userId:J

.field final synthetic this$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;->$botId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;->$userId:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 331
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 331
    iget-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;->$botId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$startBotDownloading$1;->$userId:J

    invoke-static {p1, v0, v1, v2}, Lcom/smedialink/bots/usecase/AiBotsManager;->access$sendBotInstalledEvent(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;J)V

    return-void
.end method
