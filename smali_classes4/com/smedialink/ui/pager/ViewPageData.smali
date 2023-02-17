.class public final Lcom/smedialink/ui/pager/ViewPageData;
.super Ljava/lang/Object;
.source "ViewPageData.kt"


# instance fields
.field private final fabIconResId:I

.field private final listAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

.field private final tabTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;I)V
    .locals 1

    const-string v0, "tabTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/ui/pager/ViewPageData;->tabTitle:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/smedialink/ui/pager/ViewPageData;->listAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    .line 9
    iput p3, p0, Lcom/smedialink/ui/pager/ViewPageData;->fabIconResId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/ui/pager/ViewPageData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/ui/pager/ViewPageData;

    iget-object v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->tabTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/ui/pager/ViewPageData;->tabTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->listAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    iget-object v3, p1, Lcom/smedialink/ui/pager/ViewPageData;->listAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->fabIconResId:I

    iget p1, p1, Lcom/smedialink/ui/pager/ViewPageData;->fabIconResId:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFabIconResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/ui/pager/ViewPageData;->fabIconResId:I

    return v0
.end method

.method public final getListAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/ui/pager/ViewPageData;->listAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    return-object v0
.end method

.method public final getTabTitle()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/ui/pager/ViewPageData;->tabTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/pager/ViewPageData;->tabTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->listAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->fabIconResId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPageData(tabTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->tabTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->listAdapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fabIconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/ui/pager/ViewPageData;->fabIconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
