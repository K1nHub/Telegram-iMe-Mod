.class final Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;
.super Lkotlin/jvm/internal/Lambda;
.source "NeurobotsStoreActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->listenForSearchResults()V
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
        "Lcom/smedialink/bots/domain/model/ShopItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 327
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/ShopItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getBaseViewsContainer$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    const-string v1, "baseViewsContainer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    .line 329
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getBaseViewsContainer$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 332
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const-string v4, "nothingFoundPlaceholder"

    const-string v5, "searchResultsList"

    if-eqz v0, :cond_a

    .line 333
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getNothingFoundPlaceholder$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 334
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getNothingFoundPlaceholder$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getSearchResultsList$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 337
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getSearchResultsList$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 339
    :cond_8
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getSearchResultsAdapter$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "searchResultsAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v2, v0

    :goto_0
    invoke-virtual {v2, p1}, Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;->setContent(Ljava/util/List;)V

    goto :goto_2

    .line 341
    :cond_a
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getSearchResultsList$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v3, :cond_d

    .line 342
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getSearchResultsList$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_c
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 344
    :cond_d
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getNothingFoundPlaceholder$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_e
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_10

    .line 345
    iget-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getNothingFoundPlaceholder$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    move-object v2, p1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    :goto_2
    return-void
.end method
