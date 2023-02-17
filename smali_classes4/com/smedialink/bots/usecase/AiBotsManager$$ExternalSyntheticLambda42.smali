.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda42;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$FcGFNDqZpnrR9sQfVZYZfqVL3GQ(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
