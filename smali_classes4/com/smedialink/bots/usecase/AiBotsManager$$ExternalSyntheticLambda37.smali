.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda37;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda37;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-static {v0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$ggBj5XsJGc33LZn0F5oed3eh8eU(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/google/firebase/firestore/QuerySnapshot;)Lcom/google/firebase/firestore/QuerySnapshot;

    move-result-object p1

    return-object p1
.end method
