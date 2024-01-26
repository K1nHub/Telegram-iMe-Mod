.class public final Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseQuickAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $defSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field final synthetic $manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$defSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 444
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x10000111

    if-ne v0, v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderViewAsFlow()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const v2, 0x10000333

    if-ne v0, v2, :cond_1

    .line 450
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getFooterViewAsFlow()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$getMSpanSizeLookup$p(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;

    move-result-object v1

    if-nez v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$defSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    goto :goto_0

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->isFixedViewType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 457
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    .line 459
    :cond_4
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->access$getMSpanSizeLookup$p(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-interface {v1, v2, v0, p1}, Lcom/chad/library/adapter/base/listener/GridSpanSizeLookup;->getSpanSize(Landroidx/recyclerview/widget/GridLayoutManager;II)I

    move-result p1

    :goto_0
    return p1
.end method
