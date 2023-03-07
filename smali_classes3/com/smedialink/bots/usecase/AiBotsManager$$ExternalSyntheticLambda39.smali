.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;
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

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda39;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-static {v0, v1, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$2-0NKsppKHd7BNOPOW96kIdk2aI(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;Lcom/smedialink/bots/data/model/database/BotsDbModel;)Lcom/smedialink/bots/domain/model/ShopItem;

    move-result-object p1

    return-object p1
.end method
