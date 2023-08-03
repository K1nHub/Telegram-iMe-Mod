.class Lorg/telegram/ui/Stories/StoryViewer$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "StoryViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final outFromRectAvatar:Landroid/graphics/RectF;

.field final outFromRectContainer:Landroid/graphics/RectF;

.field final path:Landroid/graphics/Path;

.field final rect1:Landroid/graphics/RectF;

.field final rect2:Landroid/graphics/RectF;

.field final rect3:Landroid/graphics/RectF;

.field startX:F

.field startY:F

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$53r1DsKnnoqf_HEk48iTChIYdH0(Lorg/telegram/ui/Stories/StoryViewer$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$2;->lambda$dispatchTouchEvent$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6neWdlAlmmf7onv0F1GUaWs9wN0(Lorg/telegram/ui/Stories/StoryViewer$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$2;->lambda$onTouchEvent$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WET9y5nfqdO0EMLKnsEH2vrRcdY(Lorg/telegram/ui/Stories/StoryViewer$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$2;->lambda$onInterceptTouchEvent$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p3, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 474
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    .line 475
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    .line 476
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    .line 477
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    .line 478
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    .line 479
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    .line 756
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    .line 768
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$600(Lorg/telegram/ui/Stories/StoryViewer;)V

    return-void
.end method

.method private synthetic lambda$onInterceptTouchEvent$1()V
    .locals 2

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$1600(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    .line 918
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$600(Lorg/telegram/ui/Stories/StoryViewer;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 492
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$700(Lorg/telegram/ui/Stories/StoryViewer;)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v4, -0x1000000

    .line 493
    invoke-static {v4, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    .line 496
    iget v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    iget v8, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float v8, v7, v8

    mul-float/2addr v4, v8

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 497
    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eq v2, v4, :cond_1

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2, v4}, Lorg/telegram/ui/Stories/StoryViewer;->access$802(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 499
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 505
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_7

    .line 508
    iget-object v4, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    .line 509
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 510
    iget-object v9, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_2

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v6

    :goto_1
    invoke-virtual {v9, v10, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    goto :goto_2

    .line 512
    :cond_3
    iget-object v9, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 515
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->access$1000(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 516
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v9, v6}, Lorg/telegram/ui/Stories/StoryViewer;->access$1002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 517
    iget-object v9, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    move v10, v8

    move v11, v10

    :goto_3
    if-eq v9, v0, :cond_6

    .line 520
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-ne v12, v0, :cond_4

    .line 521
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 522
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    :goto_4
    add-float/2addr v11, v12

    goto :goto_5

    .line 523
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v13, v13, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eq v12, v13, :cond_5

    .line 524
    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v12

    add-float/2addr v10, v12

    .line 525
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v12

    goto :goto_4

    .line 527
    :cond_5
    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    goto :goto_3

    .line 529
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    iget-object v12, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v10

    iget-object v13, v4, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v11

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 530
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v10

    iget-object v11, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v8, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 531
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 532
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 538
    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->access$1100(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    sub-float v10, v7, v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 541
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v10, v10, v8

    if-nez v10, :cond_8

    .line 542
    iget v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v9

    sub-float v9, v7, v9

    goto :goto_6

    :cond_8
    move v9, v7

    .line 544
    :goto_6
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v12, v10, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v12, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    mul-float/2addr v12, v10

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Stories/StoriesViewPager;->setHorizontalProgressToDismiss(F)V

    .line 545
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    cmpl-float v11, v11, v8

    const v12, 0x3e19999a    # 0.15f

    if-nez v11, :cond_9

    iget v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    cmpl-float v11, v11, v8

    if-eqz v11, :cond_a

    :cond_9
    iget v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v13, v11, v7

    if-nez v13, :cond_b

    .line 546
    :cond_a
    iget-object v2, v10, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v3, v10, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3dcccccd    # 0.1f

    .line 547
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v2

    mul-float/2addr v9, v12

    add-float/2addr v5, v9

    .line 548
    iget-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 549
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 550
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 551
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 552
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_12

    .line 556
    :cond_b
    invoke-static {v10}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v10}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 558
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v11, v10, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const v10, 0x3f4ccccd    # 0.8f

    sub-float v13, v7, v11

    sub-float/2addr v13, v10

    const v10, 0x3dccccd0    # 0.100000024f

    div-float/2addr v13, v10

    .line 562
    invoke-static {v13, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v10

    sub-float v10, v7, v10

    const v13, 0x3d4ccccd    # 0.05f

    sub-float v14, v7, v10

    mul-float/2addr v14, v13

    sub-float v13, v11, v14

    .line 563
    invoke-static {v13, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v13

    .line 564
    iget-object v14, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v14, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_7

    .line 566
    :cond_c
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    move v13, v11

    .line 568
    :goto_7
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v10}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v14, v10, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v14, :cond_d

    iget-object v14, v14, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v14, :cond_d

    .line 569
    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v14

    move-object v15, v4

    float-to-double v3, v11

    const-wide v5, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v14, v3

    invoke-virtual {v10, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_8

    :cond_d
    move-object v15, v4

    .line 570
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    .line 573
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v14, v7, v10

    mul-float/2addr v3, v14

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    mul-float/2addr v5, v10

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 574
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v14, v7, v10

    mul-float/2addr v3, v14

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    mul-float/2addr v5, v10

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v9, v12

    add-float/2addr v9, v3

    .line 576
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v4, v9, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 577
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 578
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 580
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 581
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget v9, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    div-float v10, v9, v6

    sub-float v10, v5, v10

    iget v12, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    div-float v14, v4, v6

    sub-float v14, v12, v14

    div-float/2addr v9, v6

    add-float/2addr v5, v9

    div-float/2addr v4, v6

    add-float/2addr v12, v4

    invoke-virtual {v3, v10, v14, v5, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 586
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectContainer:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_9

    :cond_e
    if-eqz v2, :cond_f

    .line 588
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    add-float/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->fromDismissOffset:F

    add-float/2addr v5, v9

    invoke-virtual {v3, v8, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_9

    .line 590
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 593
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    const/16 v3, 0xc

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 594
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 596
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 597
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-static {v4, v5, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 598
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v5, v9, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 599
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-static {v9, v10, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    .line 600
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v10}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v10}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 601
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v10, v12, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 604
    :cond_11
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr v9, v6

    sub-float v10, v2, v9

    div-float/2addr v5, v6

    sub-float v12, v4, v5

    add-float/2addr v2, v9

    add-float/2addr v4, v5

    invoke-virtual {v3, v10, v12, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 606
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 607
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    div-float/2addr v2, v6

    invoke-static {v2, v8, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    goto :goto_a

    .line 609
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$1300(Lorg/telegram/ui/Stories/StoryViewer;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v8, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 611
    :goto_a
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 617
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->clipTop:F

    cmpl-float v4, v3, v8

    if-eqz v4, :cond_13

    iget v4, v2, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_13

    .line 618
    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v2, v7, v2

    float-to-double v4, v2

    const-wide v9, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 620
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v8, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 621
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    .line 622
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v5, Lorg/telegram/ui/Stories/StoryViewer;->clipBottom:F

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v5, v7, v5

    invoke-static {v4, v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 618
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 626
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 627
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 629
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 630
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v3, :cond_16

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_16

    .line 631
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 632
    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_16

    .line 633
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v3

    .line 634
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 635
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v9, v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    add-float/2addr v9, v5

    iget-object v5, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    add-float/2addr v9, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 636
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v10, v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    add-float/2addr v10, v5

    iget-object v5, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    add-float/2addr v10, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v12, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 637
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v12, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRight()I

    move-result v13

    sub-int/2addr v5, v13

    int-to-float v5, v5

    sub-float/2addr v12, v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v13, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getRight()I

    move-result v13

    sub-int/2addr v5, v13

    int-to-float v5, v5

    sub-float/2addr v12, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v13, v5, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    .line 638
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v13, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v14

    sub-int/2addr v5, v14

    int-to-float v5, v5

    sub-float/2addr v13, v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    sub-float/2addr v13, v2

    .line 634
    invoke-virtual {v4, v9, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 640
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-static {v2, v4, v11, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 641
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    .line 642
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    .line 643
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    .line 644
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v9

    .line 645
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 646
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    sub-float v11, v7, v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 647
    iget-object v10, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v10, v10, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v10

    .line 649
    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    if-eqz v12, :cond_14

    .line 650
    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-interface {v12, v1, v13, v11}, Lorg/telegram/ui/Stories/StoryViewer$HolderClip;->clip(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 652
    :cond_14
    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 653
    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v12, v12, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    if-eqz v12, :cond_15

    .line 654
    iget-object v13, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect3:Landroid/graphics/RectF;

    invoke-interface {v12, v1, v13, v11}, Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 656
    :cond_15
    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 657
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v2, v4, v5, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 658
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 661
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/16 v2, 0x1f

    if-eqz v15, :cond_1f

    .line 664
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    iget v5, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    move-object v9, v15

    .line 665
    iget-object v10, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 666
    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 667
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->outFromRectAvatar:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_e

    :cond_17
    :goto_b
    if-eq v10, v0, :cond_1a

    .line 670
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, v0, :cond_18

    .line 671
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    .line 672
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    :goto_c
    add-float/2addr v5, v3

    goto :goto_d

    .line 673
    :cond_18
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    if-eq v3, v11, :cond_19

    .line 674
    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v4, v3

    .line 675
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v3

    goto :goto_c

    .line 677
    :cond_19
    :goto_d
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/view/View;

    goto :goto_b

    .line 679
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v10, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    iget-object v11, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v5

    invoke-virtual {v3, v4, v5, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 682
    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect1:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->rect2:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v3, v4, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 684
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 685
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    if-eqz v4, :cond_1b

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_f

    :cond_1b
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1c

    .line 686
    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1e

    .line 687
    :cond_1c
    iget-object v3, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 688
    iget-object v3, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 689
    iget-object v3, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v11, 0x0

    invoke-virtual {v3, v5, v11}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 690
    iget-object v3, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v4, :cond_1d

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    goto :goto_10

    :cond_1d
    move v5, v7

    :goto_10
    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 691
    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->access$1400()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    invoke-virtual {v9, v1, v10, v3, v5}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->drawUploadingProgress(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZF)V

    .line 692
    iget-object v3, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 693
    iget-object v3, v9, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 695
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v3, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_1f

    if-eqz v4, :cond_1f

    .line 696
    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->avatarRectTmp:Landroid/graphics/RectF;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 697
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 698
    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 699
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v11, v11, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 700
    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v11

    .line 696
    invoke-virtual {v4, v3, v5, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 702
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 703
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v4

    .line 704
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 705
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v6

    float-to-int v6, v9

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 706
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 707
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    sub-float v5, v7, v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v10, v5, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 708
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 710
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 711
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->avatarRectTmp:Landroid/graphics/RectF;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 712
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer;->transitionViewHolder:Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 719
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    if-eqz v4, :cond_21

    .line 720
    iget v3, v3, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    const v4, 0x3ecccccd    # 0.4f

    div-float/2addr v3, v4

    invoke-static {v3, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    cmpl-float v4, v3, v7

    if-eqz v4, :cond_21

    .line 722
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v6, v5, Lorg/telegram/ui/Stories/StoryViewer;->fromX:F

    iget v9, v5, Lorg/telegram/ui/Stories/StoryViewer;->fromY:F

    iget v10, v5, Lorg/telegram/ui/Stories/StoryViewer;->fromWidth:F

    add-float/2addr v10, v6

    iget v5, v5, Lorg/telegram/ui/Stories/StoryViewer;->fromHeight:F

    add-float/2addr v5, v9

    invoke-virtual {v4, v6, v9, v10, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v5, 0x10

    .line 723
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RectF;->inset(FF)V

    cmpl-float v5, v3, v8

    if-eqz v5, :cond_20

    sub-float/2addr v7, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v7, v3

    float-to-int v3, v7

    .line 725
    invoke-virtual {v1, v4, v3, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_11

    .line 727
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 729
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v3, v2, Lorg/telegram/ui/Stories/StoryViewer;->fromXCell:F

    iget v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->fromYCell:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->animateFromCell:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;

    invoke-interface {v2, v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;->drawAvatarOverlays(Landroid/graphics/Canvas;)Z

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 734
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 744
    :goto_12
    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 745
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$1500(Lorg/telegram/ui/Stories/StoryViewer;)V

    const/4 v1, 0x0

    .line 746
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$1402(Z)Z

    :cond_22
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 943
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 949
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->onBackPressed()Z

    return v1

    .line 952
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 944
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$2300(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/KeyEvent;)V

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    .line 762
    :cond_1
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v5, v2, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 763
    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 764
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v8, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v9, v8, v7

    if-eqz v9, :cond_2

    new-array v9, v3, [F

    aput v8, v9, v5

    aput v7, v9, v6

    .line 765
    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    .line 766
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 770
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lorg/telegram/ui/Stories/StoryViewer$2$1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stories/StoryViewer$2$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 777
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xfa

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 778
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 779
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 782
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v8, v2, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    const v9, 0x3e99999a    # 0.3f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    .line 783
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    .line 785
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2, v5}, Lorg/telegram/ui/Stories/StoryViewer;->access$1600(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 786
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v2, v5}, Lorg/telegram/ui/Stories/StoryViewer;->access$1700(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    move v2, v6

    .line 788
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 789
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v5, v8, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    .line 790
    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 792
    invoke-virtual {v8, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->onActionDown(Landroid/view/MotionEvent;)V

    .line 794
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Stories/StoriesViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 797
    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v9, v8, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v9, :cond_6

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryViewer;->access$1800(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v6

    goto :goto_2

    :cond_6
    move v8, v5

    .line 798
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v10, v10, v7

    if-nez v10, :cond_10

    iget-boolean v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v10, :cond_10

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v9, v9, Lorg/telegram/ui/Stories/StoriesViewPager;->currentState:I

    if-ne v9, v6, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v3, :cond_10

    if-eqz v8, :cond_10

    .line 799
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sub-float/2addr v3, v8

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_7

    .line 800
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Stories/StoriesViewPager;->canScroll(F)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v9, v9, v7

    if-eqz v9, :cond_10

    .line 801
    :cond_8
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v11, v10, v7

    if-nez v11, :cond_9

    neg-float v11, v3

    .line 802
    iput v11, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    :cond_9
    cmpg-float v11, v3, v7

    if-gez v11, :cond_a

    .line 804
    iget v11, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpl-float v11, v11, v7

    if-gtz v11, :cond_b

    :cond_a
    if-lez v8, :cond_c

    iget v8, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpg-float v8, v8, v7

    if-gez v8, :cond_c

    :cond_b
    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v8

    :cond_c
    sub-float/2addr v10, v3

    .line 807
    iput v10, v9, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    .line 808
    invoke-static {v9}, Lorg/telegram/ui/Stories/StoryViewer;->access$600(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 809
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v8, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    cmpl-float v9, v8, v7

    if-lez v9, :cond_d

    iget v9, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpg-float v9, v9, v7

    if-ltz v9, :cond_e

    :cond_d
    cmpg-float v8, v8, v7

    if-gez v8, :cond_f

    iget v8, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalDirection:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_f

    .line 810
    :cond_e
    iput v7, v3, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissHorizontalOffset:F

    :cond_f
    move v3, v6

    goto :goto_3

    :cond_10
    move v3, v5

    .line 815
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v9, v8, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v9, v9, v7

    if-nez v9, :cond_11

    iget-boolean v9, v8, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v9, :cond_11

    invoke-static {v8}, Lorg/telegram/ui/Stories/StoryViewer;->access$200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    iget v9, v8, Lorg/telegram/ui/Stories/StoriesViewPager;->currentState:I

    if-eq v9, v6, :cond_11

    .line 816
    invoke-virtual {v8}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 818
    iget-object v8, v8, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v9, v9, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    invoke-static {v8, v0, v9}, Lorg/telegram/messenger/AndroidUtilities;->getViewPositionInParent(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 819
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    aget v9, v8, v5

    neg-float v9, v9

    aget v8, v8, v6

    neg-float v8, v8

    invoke-virtual {v1, v9, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 820
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v8}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->checkPinchToZoom(Landroid/view/MotionEvent;)V

    .line 821
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryViewer;->pointPosition:[F

    aget v9, v8, v5

    aget v8, v8, v6

    invoke-virtual {v1, v9, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 824
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v6, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v4, :cond_12

    goto :goto_5

    :cond_12
    move v8, v5

    .line 827
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v8, v9, :cond_14

    .line 828
    iget-object v9, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 825
    :cond_13
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->lastX:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    :cond_14
    if-eqz v3, :cond_15

    return v6

    .line 834
    :cond_15
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eq v8, v6, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_19

    .line 836
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_18

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$000(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 837
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v4, v4, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_17

    move v4, v6

    goto :goto_6

    :cond_17
    move v4, v5

    :goto_6
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    .line 839
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 841
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTouch()V

    :cond_19
    if-eqz v2, :cond_1a

    .line 844
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    if-nez v2, :cond_1a

    .line 845
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToReply()V

    :cond_1a
    if-nez v3, :cond_1b

    .line 847
    sget-boolean v1, Lorg/telegram/ui/Stories/StoryViewer;->animationInProgress:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$1900(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    move v5, v6

    :cond_1c
    return v5
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 486
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 957
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->ATTACH_TO_FRAGMENT:Z

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToOpen:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startX:F

    .line 854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startY:F

    .line 855
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v0, v4, v5, v6, v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$100(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v0, v4, v5, v6, v3}, Lorg/telegram/ui/Stories/StoryViewer;->access$100(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToDissmiss:Z

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/StoryViewer;->access$1600(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v4, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/StoryViewer;->access$2002(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2000(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 862
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v4, :cond_b

    .line 863
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 865
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v4, :cond_8

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v4, :cond_b

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToDissmiss:Z

    if-eqz v0, :cond_b

    .line 867
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 868
    iget v4, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_7

    .line 869
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 871
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    .line 872
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    xor-int/lit8 v7, v6, 0x1

    iput-boolean v7, v4, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    if-eqz v6, :cond_3

    .line 873
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v6, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    iput-boolean v6, v4, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    if-eqz v6, :cond_4

    .line 875
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/TLRPC$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    .line 879
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    if-eqz v4, :cond_5

    .line 880
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2100(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 882
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    .line 883
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2000(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2000(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2000(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/StoryViewer;->access$2002(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 888
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 890
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2200(Lorg/telegram/ui/Stories/StoryViewer;)V

    goto :goto_2

    .line 892
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_b

    .line 893
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2000(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$2000(Lorg/telegram/ui/Stories/StoryViewer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, v5}, Lorg/telegram/ui/Stories/StoryViewer;->access$2002(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 898
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$1600(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 900
    :cond_b
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    if-eqz v4, :cond_c

    iget v4, v4, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_c

    move v1, v3

    goto :goto_3

    :cond_c
    move v1, v2

    .line 901
    :goto_3
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v4, :cond_d

    if-nez v1, :cond_d

    .line 902
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 904
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    move v2, v3

    :cond_f
    return v2
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1100(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1100(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesVolumeContorl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 967
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 910
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    .line 911
    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->access$1600(Lorg/telegram/ui/Stories/StoryViewer;Z)V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 913
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    goto :goto_0

    .line 914
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$1200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    aput v5, v4, v2

    aput v1, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lorg/telegram/ui/Stories/StoryViewer$2$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/StoryViewer$2$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$2;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDissmissBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 933
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    if-nez v4, :cond_4

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v4, :cond_4

    iget v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_4

    iget v4, v0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    .line 934
    :cond_4
    :goto_1
    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 752
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 753
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$2;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    return-void
.end method
