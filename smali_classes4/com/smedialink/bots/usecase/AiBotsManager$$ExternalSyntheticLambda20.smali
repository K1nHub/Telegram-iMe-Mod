.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;->f$1:I

    iput-wide p3, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;->f$1:I

    iget-wide v2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda20;->f$2:J

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$LLd4nTuWN5vEmMAcZCiplXTKLA0(Ljava/lang/String;IJLjava/lang/Integer;)V

    return-void
.end method
