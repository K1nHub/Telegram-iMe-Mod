.class Lorg/telegram/ui/Components/ReactionsContainerLayout$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ReactionsContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 441
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    if-le p2, v1, :cond_2

    const p2, 0x3ecccccc    # 0.39999998f

    .line 444
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 445
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 447
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 448
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 449
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v4

    aget v4, v4, v2

    sub-int/2addr v4, v1

    int-to-float v4, v4

    const/4 v5, 0x0

    .line 452
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v0, v4

    mul-float/2addr v4, p2

    const v6, 0x3f19999a    # 0.6f

    add-float/2addr v4, v6

    .line 453
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v0

    .line 454
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v7, v3, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1400(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V

    .line 456
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 457
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 458
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I

    move-result-object v4

    aget v2, v4, v2

    .line 460
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v1, v2

    int-to-float p1, v1

    .line 461
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v0, p1

    mul-float/2addr p1, p2

    add-float/2addr p1, v6

    .line 462
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    move p1, v0

    .line 463
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2, v3, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1400(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V

    :cond_2
    move p1, p3

    .line 465
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, p3

    if-ge p1, p2, :cond_3

    .line 466
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 467
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$1400(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 469
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
