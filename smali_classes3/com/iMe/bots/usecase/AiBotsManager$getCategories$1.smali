.class final Lcom/iMe/bots/usecase/AiBotsManager$getCategories$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/usecase/AiBotsManager;->getCategories(Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/iMe/bots/usecase/AiBotsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/bots/usecase/AiBotsManager$getCategories$1;->this$0:Lcom/iMe/bots/usecase/AiBotsManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/QuerySnapshot;)Lcom/google/firebase/firestore/QuerySnapshot;
    .locals 2

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    const-string v1, "snapshot.documents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager$getCategories$1;->this$0:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/iMe/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/iMe/bots/data/repository/BotsRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/bots/data/repository/BotsRepository;->storeCategoryDocuments(Lcom/google/firebase/firestore/QuerySnapshot;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$getCategories$1;->invoke(Lcom/google/firebase/firestore/QuerySnapshot;)Lcom/google/firebase/firestore/QuerySnapshot;

    move-result-object p1

    return-object p1
.end method