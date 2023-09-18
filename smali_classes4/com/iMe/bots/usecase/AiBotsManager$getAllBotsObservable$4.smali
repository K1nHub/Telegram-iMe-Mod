.class final Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/bots/data/model/database/BotsDbModel;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/bots/domain/model/ShopItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $language:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/iMe/bots/usecase/AiBotsManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->this$0:Lcom/iMe/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->$language:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->invoke(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/BotsDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->this$0:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/iMe/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->this$0:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/iMe/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/iMe/bots/data/repository/BotsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/bots/data/repository/BotsRepository;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/bots/usecase/AiBotsManager;->setCurrentTags(Ljava/util/List;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->this$0:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-static {v0}, Lcom/iMe/bots/usecase/AiBotsManager;->access$getShopItemMapper$p(Lcom/iMe/bots/usecase/AiBotsManager;)Lcom/iMe/bots/data/mapper/ShopItemMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->$language:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/bots/usecase/AiBotsManager$getAllBotsObservable$4;->this$0:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-virtual {v2}, Lcom/iMe/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/bots/data/mapper/ShopItemMapper;->mapList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
