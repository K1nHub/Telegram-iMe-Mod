.class public final Lcom/smedialink/model/catalog/CategoriesFilterItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "CategoriesFilterItem.kt"


# instance fields
.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/catalog/CategoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/catalog/CategoryItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/model/catalog/CategoriesFilterItem;->categories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Lcom/smedialink/model/catalog/CategoriesFilterItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/model/catalog/CategoriesFilterItem;->categories:Ljava/util/List;

    check-cast p1, Lcom/smedialink/model/catalog/CategoriesFilterItem;

    iget-object p1, p1, Lcom/smedialink/model/catalog/CategoriesFilterItem;->categories:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/catalog/CategoryItem;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/smedialink/model/catalog/CategoriesFilterItem;->categories:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/model/catalog/CategoriesFilterItem;->categories:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
