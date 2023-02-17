.class public final Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "CategoriesDiffCallback.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/smedialink/model/catalog/CategoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/smedialink/model/catalog/CategoryItem;Lcom/smedialink/model/catalog/CategoryItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/smedialink/model/catalog/CategoryItem;->isSelected()Z

    move-result p1

    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CategoryItem;->isSelected()Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/smedialink/model/catalog/CategoryItem;

    check-cast p2, Lcom/smedialink/model/catalog/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;->areContentsTheSame(Lcom/smedialink/model/catalog/CategoryItem;Lcom/smedialink/model/catalog/CategoryItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/smedialink/model/catalog/CategoryItem;Lcom/smedialink/model/catalog/CategoryItem;)Z
    .locals 3

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/smedialink/model/catalog/CategoryItem;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/smedialink/model/catalog/CategoryItem;->getId()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/smedialink/model/catalog/CategoryItem;

    check-cast p2, Lcom/smedialink/model/catalog/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;->areItemsTheSame(Lcom/smedialink/model/catalog/CategoryItem;Lcom/smedialink/model/catalog/CategoryItem;)Z

    move-result p1

    return p1
.end method

.method public getChangePayload(Lcom/smedialink/model/catalog/CategoryItem;Lcom/smedialink/model/catalog/CategoryItem;)Ljava/lang/Object;
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/smedialink/model/catalog/CategoryItem;

    check-cast p2, Lcom/smedialink/model/catalog/CategoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CategoriesDiffCallback;->getChangePayload(Lcom/smedialink/model/catalog/CategoryItem;Lcom/smedialink/model/catalog/CategoryItem;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
