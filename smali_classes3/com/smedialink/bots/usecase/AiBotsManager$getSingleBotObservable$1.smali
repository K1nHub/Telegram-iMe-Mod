.class final Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiBotsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/usecase/AiBotsManager;->getSingleBotObservable(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $language:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/bots/usecase/AiBotsManager;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    iput-object p2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->$language:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/bots/data/model/database/BotsDbModel;)Lcom/smedialink/bots/domain/model/ShopItem;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->getBotsRepository()Lcom/smedialink/bots/data/repository/BotsRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/bots/usecase/AiBotsManager;->setCurrentTags(Ljava/util/List;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-static {v0}, Lcom/smedialink/bots/usecase/AiBotsManager;->access$getShopItemMapper$p(Lcom/smedialink/bots/usecase/AiBotsManager;)Lcom/smedialink/bots/data/mapper/ShopItemMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->this$0:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {v1}, Lcom/smedialink/bots/usecase/AiBotsManager;->getCurrentTags()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->$language:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/smedialink/bots/data/mapper/ShopItemMapper;->mapItem(Lcom/smedialink/bots/data/model/database/BotsDbModel;Ljava/util/List;Ljava/lang/String;)Lcom/smedialink/bots/domain/model/ShopItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$getSingleBotObservable$1;->invoke(Lcom/smedialink/bots/data/model/database/BotsDbModel;)Lcom/smedialink/bots/domain/model/ShopItem;

    move-result-object p1

    return-object p1
.end method
