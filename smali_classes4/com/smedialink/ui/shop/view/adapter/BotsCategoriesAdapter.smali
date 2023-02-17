.class public final Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "BotsCategoriesAdapter.kt"


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final currentAccount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput p1, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->currentAccount:I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->content:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/smedialink/ui/shop/view/model/DisplayingBotsCategory;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/shop/view/model/DisplayingBotsCategory;

    .line 30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/smedialink/ui/shop/view/custom/BotCategoryTitleView;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/smedialink/ui/shop/view/custom/BotCategoryTitleView;

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/ui/shop/view/model/DisplayingBotsCategory;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smedialink/ui/shop/view/custom/BotCategoryTitleView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/shop/view/model/DisplayingBots;

    .line 33
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lcom/smedialink/ui/shop/view/custom/BotsListView;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/smedialink/ui/shop/view/custom/BotsListView;

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/smedialink/ui/shop/view/model/DisplayingBots;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smedialink/ui/shop/view/custom/BotsListView;->setContent(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent.context"

    if-nez p2, :cond_0

    .line 19
    new-instance p2, Lcom/smedialink/ui/shop/view/custom/BotCategoryTitleView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/smedialink/ui/shop/view/custom/BotCategoryTitleView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance p2, Lcom/smedialink/ui/shop/view/custom/BotsListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->currentAccount:I

    invoke-direct {p2, p1, v0}, Lcom/smedialink/ui/shop/view/custom/BotsListView;-><init>(Landroid/content/Context;I)V

    .line 24
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setContent(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->content:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/adapter/BotsCategoriesAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
