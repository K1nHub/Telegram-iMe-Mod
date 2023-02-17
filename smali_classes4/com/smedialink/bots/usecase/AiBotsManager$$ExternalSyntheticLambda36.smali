.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/domain/model/BotLanguage;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/domain/model/BotLanguage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda36;->f$0:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda36;->f$0:Lcom/smedialink/bots/domain/model/BotLanguage;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$sAmK1W_I6loUq-4_Pra8XIuJpLY(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
