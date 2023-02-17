.class Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;
.super Landroid/widget/FrameLayout;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaPage"
.end annotation


# instance fields
.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationSupportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private animationSupportingListView:Lorg/telegram/ui/Components/BlurredRecyclerView;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field public fastScrollAnimator:Landroid/animation/ObjectAnimator;

.field public fastScrollEnabled:Z

.field public fastScrollHideHintRunnable:Ljava/lang/Runnable;

.field public fastScrollHinWasShown:Z

.field public fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

.field public highlightAnimation:Z

.field public highlightMessageId:I

.field public highlightProgress:F

.field public lastCheckScrollTime:J

.field private layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private listView:Lorg/telegram/ui/Components/BlurredRecyclerView;

.field private progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private selectedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I
    .locals 0

    .line 454
    iget p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;I)I
    .locals 0

    .line 454
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->listView:Lorg/telegram/ui/Components/BlurredRecyclerView;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/BlurredRecyclerView;)Lorg/telegram/ui/Components/BlurredRecyclerView;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->listView:Lorg/telegram/ui/Components/BlurredRecyclerView;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingListView:Lorg/telegram/ui/Components/BlurredRecyclerView;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/BlurredRecyclerView;)Lorg/telegram/ui/Components/BlurredRecyclerView;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingListView:Lorg/telegram/ui/Components/BlurredRecyclerView;

    return-object p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroidx/recyclerview/widget/GridLayoutManager;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ClippingImageView;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/FlickerLoadingView;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/StickerEmptyView;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
    .locals 0

    .line 454
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    return-object p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 491
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->listView:Lorg/telegram/ui/Components/BlurredRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 496
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getScrollBarY()I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 497
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 498
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 499
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 500
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 501
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->fastScrollHintView:Lorg/telegram/ui/Components/SharedMediaFastScrollTooltip;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 504
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getProgress()F

    move-result p1

    const v0, 0x3f59999a    # 0.85f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 505
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;Z)V

    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->animationSupportingListView:Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 486
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method
