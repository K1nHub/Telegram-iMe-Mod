.class final Lcom/smedialink/bots/usecase/AiBotsManager$fetchTags$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->fetchTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$fetchTags$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 260
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$fetchTags$1;->invoke(Lcom/google/firebase/firestore/QuerySnapshot;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/firebase/firestore/QuerySnapshot;)V
    .locals 2

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    const-string v1, "snapshot.documents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$fetchTags$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/repository/BotsRepository;->storeTagDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V

    .line 263
    iget-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$fetchTags$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-static {p1}, Lcom/smedialink/bots/usecase/AiBotsManager;->access$fetchCategories(Lcom/smedialink/bots/usecase/AiBotsManager;)V

    :cond_0
    return-void
.end method
