.class public final Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
.super Lorg/telegram/ui/Components/FillLastLinearLayoutManager;
.source "ChatAttachAlertTemplatesLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->initListLayoutManager()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/content/Context;ILcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;)V
    .locals 6

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    .line 238
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method protected getChildRectangleOnScreenScrollAmount(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 4

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 256
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v2, p1

    .line 258
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    const/4 p2, 0x0

    sub-int/2addr v2, p2

    .line 259
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v1

    .line 260
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    const/4 p1, 0x1

    aput v3, v0, p1

    return-object v0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1$smoothScrollToPosition$linearSmoothScroller$1;

    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;->this$0:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;

    invoke-direct {p2, v0, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1$smoothScrollToPosition$linearSmoothScroller$1;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/content/Context;)V

    .line 249
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 250
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
