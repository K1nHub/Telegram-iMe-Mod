.class public final synthetic Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

.field public final synthetic f$1:Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;->f$1:Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;->f$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$$ExternalSyntheticLambda18;->f$1:Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-static {v0, v1, p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->$r8$lambda$7Wl0M7C_lrIxTjOfaerO26Om1sY(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;Lcom/google/firebase/firestore/QuerySnapshot;)V

    return-void
.end method
