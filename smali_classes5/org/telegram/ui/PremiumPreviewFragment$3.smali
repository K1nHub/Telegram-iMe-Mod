.class Lorg/telegram/ui/PremiumPreviewFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PremiumPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PremiumPreviewFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PremiumPreviewFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PremiumPreviewFragment;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 592
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_2

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1800(Lorg/telegram/ui/PremiumPreviewFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 595
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget v0, p2, Lorg/telegram/ui/PremiumPreviewFragment;->totalProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 596
    iget-object v0, p2, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p2}, Lorg/telegram/ui/PremiumPreviewFragment;->access$900(Lorg/telegram/ui/PremiumPreviewFragment;)I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 599
    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p1, p1, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-gez p2, :cond_2

    .line 603
    iget-object p2, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    iget-object p2, p2, Lorg/telegram/ui/PremiumPreviewFragment;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 607
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1900(Lorg/telegram/ui/PremiumPreviewFragment;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 612
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 613
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$2000(Lorg/telegram/ui/PremiumPreviewFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/PremiumPreviewFragment$3;->this$0:Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-static {p1}, Lorg/telegram/ui/PremiumPreviewFragment;->access$1900(Lorg/telegram/ui/PremiumPreviewFragment;)V

    return-void
.end method
