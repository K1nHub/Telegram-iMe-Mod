.class public final Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "CatalogCategoriesFilterRecycleAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/smedialink/model/catalog/CategoryItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_catalog_category:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoryItem;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget v0, Lorg/telegram/messenger/R$id;->topic:I

    new-instance v1, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$1;

    invoke-direct {v1, p2}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$1;-><init>(Lcom/smedialink/model/catalog/CategoryItem;)V

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoryItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/catalog/CategoryItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget p3, Lorg/telegram/messenger/R$id;->topic:I

    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter$convert$2;-><init>(Lcom/smedialink/model/catalog/CategoryItem;)V

    invoke-static {p1, p3, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/smedialink/model/catalog/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoryItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/smedialink/model/catalog/CategoryItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCategoriesFilterRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoryItem;Ljava/util/List;)V

    return-void
.end method
