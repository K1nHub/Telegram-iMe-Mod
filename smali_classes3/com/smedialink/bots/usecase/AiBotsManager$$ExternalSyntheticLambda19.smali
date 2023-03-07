.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda19;->f$2:J

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$5V9FLm-rhGtF5zdd0B6JX0dIm6Y(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;JLio/reactivex/disposables/Disposable;)V

    return-void
.end method
