.class final Lcom/smedialink/bots/usecase/AiBotsManager$getCategories$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->getCategories(Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $language:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getCategories$2;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getCategories$2;->$language:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/google/firebase/firestore/QuerySnapshot;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getCategories$2;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getCategories$2;->$language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAvailableCategories(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 215
    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$getCategories$2;->invoke(Lcom/google/firebase/firestore/QuerySnapshot;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
