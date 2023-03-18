.class final Lcom/smedialink/bots/usecase/AiBotsManager$downloadPurchase$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->downloadPurchase(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $userId:J

.field final synthetic this$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$downloadPurchase$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-wide p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$downloadPurchase$1;->$userId:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 298
    check-cast p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$downloadPurchase$1;->invoke(Lcom/smedialink/bots/data/model/database/BotsDbModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/bots/data/model/database/BotsDbModel;)V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$downloadPurchase$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/smedialink/bots/usecase/AiBotsManager$downloadPurchase$1;->$userId:J

    invoke-virtual/range {v0 .. v5}, Lcom/smedialink/bots/usecase/AiBotsManager;->startBotDownloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
