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

.field loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

.field progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

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

    .line 416
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/HwFrameLayout;-><init>(Landroid/content/Context;)V

    .line 418
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 p3, 0x96

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 419
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 420
    new-instance p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    .line 421
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 422
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v7, p0

    .line 622
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v0, :cond_1

    .line 623
    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->checkSendView()V

    .line 627
    :cond_1
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$700(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v14

    .line 628
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    .line 629
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v1, :cond_2

    .line 630
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1900(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getPlaybackProgress(J)F

    move-result v0

    .line 631
    invoke-static {v0, v9, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 632
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 633
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shine()V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 636
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    goto/16 :goto_1

    .line 637
    :cond_4
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    if-nez v0, :cond_7

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2200(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 639
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_6

    .line 640
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 641
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-gtz v0, :cond_5

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_5

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 642
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryMediaAreasView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shine()V

    .line 644
    :cond_5
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2500(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2614(Lorg/telegram/ui/Stories/PeerStoriesView;J)J

    .line 647
    :cond_6
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2502(Lorg/telegram/ui/Stories/PeerStoriesView;J)J

    .line 648
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, v1

    invoke-static {v0, v9, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    .line 649
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    goto :goto_1

    .line 651
    :cond_7
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v0, v1

    invoke-static {v0, v9, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    :goto_1
    move v12, v0

    .line 654
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2700(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_9

    cmpl-float v0, v12, v9

    if-nez v0, :cond_9

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 655
    :cond_8
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2702(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 656
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 670
    :cond_9
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v0, :cond_b

    .line 671
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;

    move-result-object v0

    if-nez v0, :cond_a

    .line 672
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v1, Lorg/telegram/ui/Stories/StoryPositionView;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/StoryPositionView;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2802(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/StoryPositionView;)Lorg/telegram/ui/Stories/StoryPositionView;

    .line 674
    :cond_a
    iget-object v0, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2800(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryPositionView;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    mul-float/2addr v1, v14

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    sub-float v2, v9, v2

    mul-float/2addr v2, v1

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3100(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->getCount()I

    move-result v4

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v6, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    move-object/from16 v1, p1

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoryPositionView;->draw(Landroid/graphics/Canvas;FIILandroid/widget/FrameLayout;Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V

    .line 676
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v0, 0x8

    .line 677
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 678
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v16, v10

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    move/from16 v16, v1

    .line 679
    :goto_2
    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryLinesDrawable;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3200(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v11

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3300(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v13

    iget-object v1, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2900(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    iget-object v2, v7, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3000(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v2

    sub-float/2addr v9, v2

    mul-float v15, v1, v9

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/ui/Stories/StoryLinesDrawable;->draw(Landroid/graphics/Canvas;IIFIFFZ)V

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private synthetic lambda$drawLines$0()V
    .locals 3

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v1, :cond_3

    .line 658
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2200(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->shouldSwitchToNext()V

    goto :goto_1

    .line 659
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->loopBack()V

    goto :goto_1

    .line 662
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$2602(Lorg/telegram/ui/Stories/PeerStoriesView;J)J

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 433
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    const/4 v10, 0x1

    if-nez v2, :cond_0

    .line 434
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->headerView:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->backupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 436
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, -0x1

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v5, -0x1000000

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v2, :cond_11

    .line 437
    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 438
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    .line 440
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 441
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/PinchToZoomHelper;->applyTransform(Landroid/graphics/Canvas;)V

    .line 442
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v6, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v2, :cond_5

    .line 444
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1, v12, v12, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 448
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-virtual {v1, v13, v13, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 449
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 450
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_9

    .line 451
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v2, :cond_3

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-boolean v3, v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->stubAvailable:Z

    if-eqz v3, :cond_3

    .line 452
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

    .line 453
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

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 455
    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 456
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v2, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v13, v13, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 459
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$300(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 460
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    .line 467
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    .line 469
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->skipped:Z

    if-eqz v2, :cond_7

    .line 470
    invoke-static {v5, v4, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 472
    :cond_7
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-nez v1, :cond_8

    .line 473
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1, v12, v12, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 474
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->imageBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 476
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-virtual {v1, v13, v13, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 477
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 480
    :cond_9
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 481
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$400(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 482
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v13, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 483
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v13, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 486
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->access$500(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 487
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->renderView:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v2, :cond_c

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    if-eqz v3, :cond_c

    iget v2, v2, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    cmpl-float v2, v2, v13

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-boolean v1, v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v1, :cond_c

    :cond_b
    move v1, v10

    goto :goto_1

    :cond_c
    move v1, v12

    goto :goto_1

    .line 489
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    .line 491
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v4, :cond_e

    if-nez v1, :cond_e

    iget-object v1, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-nez v1, :cond_e

    move v1, v11

    goto :goto_2

    :cond_e
    move v1, v13

    :goto_2
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 492
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v2

    cmpl-float v2, v2, v11

    if-nez v2, :cond_f

    move v2, v11

    goto :goto_3

    :cond_f
    move v2, v13

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 494
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v1

    cmpl-float v1, v1, v13

    if-lez v1, :cond_10

    .line 495
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v13, v13, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 496
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawableAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setAlpha(I)V

    .line 497
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->loadingDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const v3, 0x3fa66666    # 1.3f

    iput v3, v2, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const/16 v3, 0xa

    .line 499
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v9, v1, v3, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 501
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v12}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$402(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    goto :goto_4

    .line 503
    :cond_11
    invoke-static {v5, v4, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 506
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$200(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 507
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1, v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$602(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 508
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 510
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$700(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    .line 513
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    mul-float v3, v1, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 514
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$800(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 516
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v4, :cond_13

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_23

    .line 517
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1f

    const/16 v2, 0x48

    .line 518
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 519
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->getTextTop()F

    move-result v3

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v2, v3

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const v8, 0x3f266666    # 0.65f

    mul-float/2addr v6, v8

    .line 522
    iget-object v8, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1100(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v8

    int-to-float v14, v3

    sub-float v14, v6, v14

    const/16 v15, 0x3c

    .line 523
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v14, v7

    cmpl-float v7, v14, v13

    if-lez v7, :cond_14

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->isTouched()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->hasScroll()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 524
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->getMaxTop()F

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    float-to-int v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v6, v4

    .line 525
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    cmpl-float v4, v6, v13

    if-lez v4, :cond_16

    .line 526
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v10, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    goto :goto_5

    .line 528
    :cond_14
    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v14, v7, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    if-eqz v14, :cond_15

    .line 529
    iput-boolean v12, v7, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 530
    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/StoryCaptionView;->getMaxTop()F

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    float-to-int v4, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    sub-float/2addr v6, v4

    .line 531
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    cmpl-float v4, v6, v13

    if-lez v4, :cond_16

    .line 532
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v10, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    goto :goto_5

    .line 534
    :cond_15
    invoke-static {v7}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v4

    cmpl-float v4, v4, v13

    if-nez v4, :cond_16

    .line 535
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v12, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    :cond_16
    :goto_5
    if-eqz v8, :cond_17

    goto :goto_6

    :cond_17
    move v1, v11

    .line 538
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToFullBlackoutA:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v6, v6, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    if-eqz v6, :cond_18

    move v6, v11

    goto :goto_7

    :cond_18
    move v6, v13

    :goto_7
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    cmpl-float v14, v8, v13

    if-lez v14, :cond_19

    .line 540
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 541
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    .line 542
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 543
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 544
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawLines(Landroid/graphics/Canvas;)V

    .line 545
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v4

    const/high16 v6, 0x43190000    # 153.0f

    mul-float/2addr v6, v8

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 546
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_19
    cmpg-float v4, v8, v11

    if-gez v4, :cond_1a

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 550
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v4

    const v6, 0x430107ae    # 129.03f

    sub-float v7, v11, v8

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v7, v5

    mul-float/2addr v7, v1

    float-to-int v1, v7

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 552
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1, v12, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    int-to-float v4, v2

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1200(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1a
    if-lez v14, :cond_1c

    .line 557
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v13

    if-lez v1, :cond_1c

    .line 558
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw(Z)V

    .line 559
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 560
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_8

    .line 562
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 564
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 565
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/StoryCaptionView;->draw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 568
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    if-lez v14, :cond_1d

    move v2, v10

    goto :goto_9

    :cond_1d
    move v2, v12

    :goto_9
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/StoryCaptionView;->disableDraw(Z)V

    if-lez v14, :cond_1e

    .line 570
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    .line 571
    iput-boolean v10, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    .line 572
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 573
    iput-boolean v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    :cond_1e
    move v14, v8

    goto :goto_b

    .line 576
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x38

    goto :goto_a

    :cond_20
    const/16 v1, 0x6e

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 577
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v4, :cond_21

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$900(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_22

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 580
    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v12, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 582
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 583
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->access$1300(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_23
    move v14, v13

    .line 586
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1400(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 587
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1400(Lorg/telegram/ui/Stories/PeerStoriesView;)F

    move-result v3

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1600(Lorg/telegram/ui/Stories/PeerStoriesView;)F

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

    .line 590
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->progressToAudio:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1700(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_c

    :cond_25
    move v11, v13

    :goto_c
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 592
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->isActive:Z

    if-eqz v2, :cond_29

    .line 593
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->inBlackoutMode:Z

    if-nez v2, :cond_26

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->isTouched()Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_26
    move v1, v10

    goto :goto_d

    :cond_27
    move v1, v12

    .line 594
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1000(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/StoryCaptionView;->getProgressToBlackout()F

    move-result v3

    cmpl-float v3, v3, v13

    if-lez v3, :cond_28

    goto :goto_e

    :cond_28
    move v10, v12

    :goto_e
    invoke-static {v2, v10}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1802(Lorg/telegram/ui/Stories/PeerStoriesView;Z)Z

    .line 595
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaption(Z)V

    .line 596
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$1800(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    invoke-interface {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setIsCaptionPartVisible(Z)V

    :cond_29
    cmpg-float v1, v14, v13

    if-gtz v1, :cond_2a

    .line 599
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 600
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawLines(Landroid/graphics/Canvas;)V

    :cond_2a
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->splitDrawing:Z

    if-eqz v0, :cond_2

    .line 607
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 608
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->drawOverlayed:Z

    if-eqz v0, :cond_0

    .line 609
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 614
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 617
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 685
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 686
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$4$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$4;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 719
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 720
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    .line 721
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 722
    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setBulletinIsVisible(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3500(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 729
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$4;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3600(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 730
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x37

    .line 731
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x2a

    .line 733
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0xf

    .line 734
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 736
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
