.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-wide p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-wide v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda17;->f$1:J

    check-cast p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$vbtRTHDh-vO4LzLrWkn1v1WkHZw(Lcom/smedialink/bots/usecase/AiBotsManager;JLcom/smedialink/bots/data/model/database/BotsDbModel;)V

    return-void
.end method
