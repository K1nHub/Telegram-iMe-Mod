.class final Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ListBotsPageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBotsPageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBotsPageView.kt\ncom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n766#2:94\n857#2,2:95\n*S KotlinDebug\n*F\n+ 1 ListBotsPageView.kt\ncom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1\n*L\n67#1:94\n67#1:95,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/view/ListBotsPageView;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/view/ListBotsPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1;->this$0:Lcom/smedialink/ui/shop/view/ListBotsPageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1;->invoke(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1;->this$0:Lcom/smedialink/ui/shop/view/ListBotsPageView;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/smedialink/bots/domain/model/ShopItem;

    .line 68
    invoke-static {v0}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->access$getTab$p(Lcom/smedialink/ui/shop/view/ListBotsPageView;)Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object v4

    sget-object v5, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 71
    :cond_1
    sget-object v4, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    invoke-virtual {v3}, Lcom/smedialink/bots/domain/model/ShopItem;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;->isMy(Lcom/smedialink/bots/data/model/BotStatus;)Z

    move-result v3

    goto :goto_1

    .line 70
    :cond_2
    sget-object v4, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    invoke-virtual {v3}, Lcom/smedialink/bots/domain/model/ShopItem;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;->isFree(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 69
    :cond_3
    sget-object v4, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    invoke-virtual {v3}, Lcom/smedialink/bots/domain/model/ShopItem;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;->isPopular(Ljava/util/List;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method
