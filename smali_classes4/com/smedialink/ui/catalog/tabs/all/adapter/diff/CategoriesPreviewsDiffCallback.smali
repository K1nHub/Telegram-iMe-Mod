.class public final Lcom/smedialink/ui/catalog/tabs/all/adapter/diff/CategoriesPreviewsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "CategoriesPreviewsDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v0, p1, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/all/adapter/diff/CategoriesPreviewsDiffCallback;->areContentsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z
    .locals 4

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of v0, p1, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    invoke-virtual {p1}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide v2

    check-cast p2, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    check-cast p2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/all/adapter/diff/CategoriesPreviewsDiffCallback;->areItemsTheSame(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)Z

    move-result p1

    return p1
.end method
