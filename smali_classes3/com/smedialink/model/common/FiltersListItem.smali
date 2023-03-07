.class public final Lcom/smedialink/model/common/FiltersListItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "FiltersListItem.kt"


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/common/FilterItem;",
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
            "Lcom/smedialink/model/common/FilterItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/model/common/FiltersListItem;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 10
    instance-of v0, p1, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/model/common/FiltersListItem;->filters:Ljava/util/List;

    check-cast p1, Lcom/smedialink/model/common/FiltersListItem;

    iget-object p1, p1, Lcom/smedialink/model/common/FiltersListItem;->filters:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/common/FilterItem;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/smedialink/model/common/FiltersListItem;->filters:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/model/common/FiltersListItem;->filters:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
