.class Lorg/telegram/ui/Stories/PeerStoriesView$4;
.super Lorg/telegram/ui/Stories/HwFrameLayout;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field drawOverlayed:Z

.field final loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field final loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field final loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

.field final progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

.field final progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

.field splitDrawing:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$yZLQ3AAnzM3NHIy0Bp6W6_g4vwQ(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->lambda$drawLines$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/HwFrameLayout;-><init>(Landroid/content/Context;)V

    .line 479
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 p3, 0x96

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 480
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 481
    new-instance p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/16 p2, 0x20

    const/16 p3, 0x66

    const/16 p4, 0xf0

    invoke-direct {p1, p2, p3, p4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>(III)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 482
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 483
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p3, 0x1f4

    .line 485
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    const-wide/16 p3, 0x64

    .line 486
    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v7, p0

    .line 698
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v0, :cond_1

    .line 699
    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->checkSendView()V

    .line 703
    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1100(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v0

    .line 704
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_4

    .line 705
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_2

    .line 706
    iget-wide v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getPlaybackProgress(J)F

    move-result v1

    .line 707
    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 708
    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v3, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 709
    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shine()V

    goto :goto_0

    :cond_2
    move v1, v9

    .line 712
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    goto/16 :goto_1

    .line 713
    :cond_4
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2200(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    const v2, 0x461c4000    # 10000.0f

    if-nez v1, :cond_7

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v3, :cond_7

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 715
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v1, v5, v10

    if-eqz v1, :cond_6

    .line 716
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 717
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2700(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v5

    cmp-long v1, v5, v10

    if-gtz v1, :cond_5

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v5

    sub-long v5, v3, v5

    cmp-long v1, v5, v10

    if-lez v1, :cond_5

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 718
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shine()V

    .line 720
    :cond_5
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-static {v1, v5, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2714(Lorg/telegram/ui/Stories/PeerStoriesView;J)J

    .line 723
    :cond_6
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2602(Lorg/telegram/ui/Stories/PeerStoriesView;J)J

    .line 724
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2700(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 725
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    goto :goto_1

    .line 727
    :cond_7
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2700(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v1, v2

    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    :goto_1
    move v14, v1

    .line 731
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_8

    iget v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    cmpl-float v3, v2, v9

    if-ltz v3, :cond_8

    move/from16 v20, v2

    goto :goto_2

    :cond_8
    move/from16 v20, v14

    .line 735
    :goto_2
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    const/4 v10, 0x1

    if-nez v1, :cond_a

    cmpl-float v1, v14, v8

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 736
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2802(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 737
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 751
    :cond_a
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v1, :cond_c

    .line 752
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;

    move-result-object v1

    if-nez v1, :cond_b

    .line 753
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v2, Lorg/telegram/ui/Stories/StoryPositionView;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/StoryPositionView;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3002(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryPositionView;)Lorg/telegram/ui/Stories/StoryPositionView;

    .line 755
    :cond_b
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3100(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    mul-float/2addr v0, v2

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3200(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    sub-float v2, v8, v2

    mul-float/2addr v2, v0

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3300(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v4

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoryPositionView;->draw(Landroid/graphics/Canvas;FIILandroid/widget/FrameLayout;Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V

    .line 758
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v0, 0x8

    .line 759
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3200(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 760
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v18, v10

    goto :goto_3

    :cond_d
    move/from16 v18, v2

    .line 761
    :goto_3
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v1, :cond_e

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_e

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->inSeekingMode:Z

    if-eqz v1, :cond_e

    move/from16 v19, v10

    goto :goto_4

    :cond_e
    move/from16 v19, v2

    .line 762
    :goto_4
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v1

    iget-object v3, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v19, :cond_f

    goto :goto_5

    :cond_f
    move v10, v2

    :cond_10
    :goto_5
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v16

    .line 763
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3700(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryLinesDrawable;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v13

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3600(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v15

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3100(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3200(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    sub-float/2addr v8, v2

    mul-float v17, v1, v8

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v20}, Lorg/telegram/ui/Stories/StoryLinesDrawable;->draw(Landroid/graphics/Canvas;IIFIFFZZF)V

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private synthetic lambda$drawLines$0()V
    .locals 3

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_3

    .line 739
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->shouldSwitchToNext()V

    goto :goto_1

    .line 740
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->loopBack()V

    goto :goto_1

    .line 743
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2702(Lorg/telegram/ui/Stories/PeerStoriesView;J)J

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 494
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v10, 0x1

    if-nez v2, :cond_0

    .line 495
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 497
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, -0x1

    const/high16 v8, -0x1000000

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-nez v2, :cond_12

    .line 498
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hasSelectedForScale()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightScaleAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    .line 501
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 502
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/PinchToZoomHelper;->applyTransform(Landroid/graphics/Canvas;)V

    .line 503
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v5, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v2, :cond_6

    .line 505
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1, v13, v13, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 509
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-virtual {v1, v14, v14, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 510
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 511
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_a

    .line 512
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v2, :cond_4

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v3, :cond_4

    iget-boolean v4, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v4, :cond_4

    iget-object v4, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-boolean v3, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->stubAvailable:Z

    if-eqz v3, :cond_4

    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 514
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v3, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 516
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 517
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v2, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v14, v14, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 520
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 521
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    .line 528
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    .line 530
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->skipped:Z

    if-eqz v2, :cond_8

    .line 531
    invoke-static {v8, v4, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 533
    :cond_8
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-nez v1, :cond_9

    .line 534
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1, v13, v13, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 535
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-virtual {v1, v14, v14, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 538
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 541
    :cond_a
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 542
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$700(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 543
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v14, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 544
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v14, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 547
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 548
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_d

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v3, :cond_d

    iget v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    cmpl-float v2, v2, v14

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-boolean v1, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v1, :cond_d

    :cond_c
    move v1, v10

    goto :goto_1

    :cond_d
    move v1, v13

    goto :goto_1

    .line 550
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    .line 552
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v4, :cond_f

    if-nez v1, :cond_f

    iget-object v1, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v1, :cond_f

    move v1, v12

    goto :goto_2

    :cond_f
    move v1, v14

    :goto_2
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v2, v12

    if-nez v2, :cond_10

    move v2, v12

    goto :goto_3

    :cond_10
    move v2, v14

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 555
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_11

    .line 556
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v14, v14, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 557
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setAlpha(I)V

    .line 558
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 559
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const v3, 0x3fa66666    # 1.3f

    iput v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const/16 v3, 0xa

    .line 560
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v9, v1, v3, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 562
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v13}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$702(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    goto :goto_4

    .line 564
    :cond_12
    invoke-static {v8, v4, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 566
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_14

    .line 567
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-nez v1, :cond_13

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_5

    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 570
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v11

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 572
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 576
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 577
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1002(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 578
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 580
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1100(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    .line 582
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 583
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 585
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v3, :cond_16

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_25

    .line 586
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_21

    const/16 v2, 0x48

    .line 587
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 588
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->getTextTop()F

    move-result v3

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f266666    # 0.65f

    mul-float/2addr v5, v6

    .line 591
    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v6

    int-to-float v7, v3

    sub-float v7, v5, v7

    const/16 v15, 0x3c

    .line 592
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v7, v11

    cmpl-float v7, v7, v14

    if-lez v7, :cond_17

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->isTouched()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->hasScroll()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 593
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->getMaxTop()F

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    float-to-int v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v5, v4

    .line 594
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    cmpl-float v4, v5, v14

    if-lez v4, :cond_19

    .line 595
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v10, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    goto :goto_6

    .line 597
    :cond_17
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v11, v7, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    if-eqz v11, :cond_18

    .line 598
    iput-boolean v13, v7, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 599
    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->getMaxTop()F

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    float-to-int v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v5, v4

    .line 600
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    cmpl-float v4, v5, v14

    if-lez v4, :cond_19

    .line 601
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v10, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    goto :goto_6

    .line 603
    :cond_18
    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v4

    cmpl-float v4, v4, v14

    if-nez v4, :cond_19

    .line 604
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v13, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    :cond_19
    :goto_6
    if-eqz v6, :cond_1a

    goto :goto_7

    :cond_1a
    move v1, v12

    .line 607
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    if-eqz v5, :cond_1b

    move v5, v12

    goto :goto_8

    :cond_1b
    move v5, v14

    :goto_8
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    cmpl-float v15, v11, v14

    if-lez v15, :cond_1c

    .line 609
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 610
    iput-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    .line 611
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 612
    iput-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 613
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawLines(Landroid/graphics/Canvas;)V

    .line 614
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1500(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v4

    const/high16 v5, 0x43190000    # 153.0f

    mul-float/2addr v5, v11

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v8, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 615
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1500(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_1c
    cmpg-float v4, v11, v12

    if-gez v4, :cond_1d

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 619
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1500(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v4

    const v5, 0x430107ae    # 129.03f

    sub-float v6, v12, v11

    mul-float/2addr v5, v6

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v8, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 620
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v1

    float-to-int v1, v6

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 621
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1, v13, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    int-to-float v4, v2

    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1500(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1d
    if-lez v15, :cond_1f

    .line 626
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1f

    .line 627
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw(Z)V

    .line 628
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 629
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_9

    .line 631
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 633
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 634
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/StoryCaptionView;->draw(Landroid/graphics/Canvas;)V

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 637
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    if-lez v15, :cond_20

    move v2, v10

    goto :goto_a

    :cond_20
    move v2, v13

    :goto_a
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw(Z)V

    if-lez v15, :cond_26

    .line 639
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 640
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    .line 641
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 642
    iput-boolean v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    goto :goto_c

    .line 645
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 v2, 0x38

    goto :goto_b

    :cond_22
    const/16 v2, 0x6e

    :goto_b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 646
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v4, :cond_23

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-nez v3, :cond_24

    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_24

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 649
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v13, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 651
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 652
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1600(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_25
    move v11, v14

    .line 655
    :cond_26
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1700(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    cmpl-float v1, v1, v14

    if-eqz v1, :cond_27

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 656
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1700(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v3

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1900(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->draw(Landroid/graphics/Canvas;FFIIII)V

    .line 659
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_d

    :cond_28
    move v12, v14

    :goto_d
    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 661
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_2c

    .line 662
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    if-nez v2, :cond_29

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->isTouched()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    move v1, v10

    goto :goto_e

    :cond_2a
    move v1, v13

    .line 663
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2b

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v3

    cmpl-float v3, v3, v14

    if-lez v3, :cond_2b

    goto :goto_f

    :cond_2b
    move v10, v13

    :goto_f
    invoke-static {v2, v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2102(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaption(Z)V

    .line 665
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    invoke-interface {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaptionPartVisible(Z)V

    :cond_2c
    cmpg-float v1, v11, v14

    if-gtz v1, :cond_2d

    .line 668
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 669
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawLines(Landroid/graphics/Canvas;)V

    .line 672
    :cond_2d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 673
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/ui/EmojiAnimationsOverlay;->draw(Landroid/graphics/Canvas;)V

    :cond_2e
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    .line 682
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    if-eqz v0, :cond_3

    .line 683
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 684
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    if-eqz v0, :cond_1

    .line 685
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_1
    return v1

    .line 690
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 693
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 769
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onAttachedToWindow()V

    .line 771
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 804
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/EmojiAnimationsOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onDetachedFromWindow()V

    .line 806
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 808
    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setBulletinIsVisible(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3800(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 815
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 816
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x37

    .line 817
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x2a

    .line 819
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0xf

    .line 820
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 822
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
