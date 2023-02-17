.class public final Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CategoriesFilterProvider.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/catalog/CategoriesFilterItem;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation


# instance fields
.field private final catalogCategoriesFilterRecycleAdapter:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;

.field private final categoriesDiffCallback:Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;

.field private categoriesScrollState:Landroid/os/Parcelable;

.field private categoryOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;)V
    .locals 1

    const-string v0, "catalogCategoriesFilterRecycleAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->catalogCategoriesFilterRecycleAdapter:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;

    .line 29
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CATALOG_CATEGORIES:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->itemViewType:I

    .line 30
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_catalog_categories:I

    iput p1, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->layoutId:I

    .line 33
    new-instance p1, Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;

    invoke-direct {p1}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->categoriesDiffCallback:Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;

    return-void
.end method

.method public static final synthetic access$getCategoriesDiffCallback$p(Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;)Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->categoriesDiffCallback:Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;

    return-object p0
.end method

.method public static final synthetic access$getCategoriesScrollState$p(Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;)Landroid/os/Parcelable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->categoriesScrollState:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoriesFilterItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget v0, Lorg/telegram/messenger/R$id;->recycle_categories:I

    new-instance v1, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider$convert$1;

    invoke-direct {v1, p0, p2}, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider$convert$1;-><init>(Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;Lcom/smedialink/model/catalog/CategoriesFilterItem;)V

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoriesFilterItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/catalog/CategoriesFilterItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payloads"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->catalogCategoriesFilterRecycleAdapter:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;

    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CategoriesFilterItem;->getCategories()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, p3, v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/smedialink/model/catalog/CategoriesFilterItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoriesFilterItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/smedialink/model/catalog/CategoriesFilterItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoriesFilterItem;Ljava/util/List;)V

    return-void
.end method

.method public final getCatalogCategoriesFilterRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->catalogCategoriesFilterRecycleAdapter:Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;

    return-object v0
.end method

.method public final getCategoryOnItemClickListener()Lcom/chad/library/adapter/base/listener/OnItemClickListener;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->categoryOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->itemViewType:I

    return v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 21
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->layoutId:I

    return v0
.end method

.method public final onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->getItemViewType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->isViewType(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget v0, Lorg/telegram/messenger/R$id;->recycle_categories:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->categoriesScrollState:Landroid/os/Parcelable;

    :cond_1
    return-void
.end method

.method public final setCategoryOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CategoriesFilterProvider;->categoryOnItemClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-void
.end method
