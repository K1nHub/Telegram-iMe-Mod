.class Lorg/telegram/ui/Stories/StoryViewer$1;
.super Ljava/lang/Object;
.source "StoryViewer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v2, v3, p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$100(Lorg/telegram/ui/Stories/StoryViewer;Landroid/widget/FrameLayout;FFZ)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 496
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/high16 v0, -0x3b860000    # -1000.0f

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$800(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/StoriesIntro;

    move-result-object p1

    if-nez p1, :cond_0

    cmpg-float p1, p4, v0

    if-gez p1, :cond_0

    .line 497
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    if-nez p2, :cond_0

    .line 498
    iput-boolean v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    .line 499
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$600(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 503
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpl-float p2, p2, p3

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    cmpg-float p2, p4, v0

    if-gez p2, :cond_1

    .line 505
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    goto :goto_1

    :cond_1
    const/high16 p2, 0x447a0000    # 1000.0f

    cmpl-float p2, p4, p2

    if-lez p2, :cond_2

    .line 508
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    goto :goto_1

    .line 510
    :cond_2
    iget-object p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->progressToOpen:F

    const/high16 p4, 0x3f000000    # 0.5f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, p3

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->cancelSwipeToViews(Z)V

    .line 514
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$002(Lorg/telegram/ui/Stories/StoryViewer;Z)Z

    return p3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->inSwipeToDissmissMode:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_9

    .line 444
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 445
    iget p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    add-float/2addr p2, p4

    iput p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    const/16 p1, 0xc8

    .line 446
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 447
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    int-to-float p1, p1

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    iget-boolean v2, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    if-nez v2, :cond_0

    .line 448
    iput-boolean v0, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyWaitingKeyboard:Z

    .line 449
    invoke-static {p2}, Lorg/telegram/ui/Stories/StoryViewer;->access$600(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 450
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 452
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v2, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    div-float/2addr v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyProgress:F

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 454
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    .line 455
    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->swipeToReplyOffset:F

    .line 456
    iput-boolean p3, p1, Lorg/telegram/ui/Stories/StoryViewer;->allowSwipeToReply:Z

    goto :goto_0

    :cond_1
    return v0

    .line 461
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    if-eqz p2, :cond_5

    .line 462
    iget p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    iget-object v2, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoryViewsView:Lorg/telegram/ui/Stories/SelfStoryViewsView;

    iget v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView;->maxSelfStoriesViewsOffset:F

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    cmpl-float v2, p4, v1

    if-lez v2, :cond_3

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, p4

    add-float/2addr p2, v2

    .line 463
    iput p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    goto :goto_1

    :cond_3
    add-float/2addr p2, p4

    .line 465
    iput p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 467
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->hideVisible(Landroid/view/ViewGroup;)V

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->storiesViewPager:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesViewPager;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/HwFrameLayout;->invalidate()V

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_4

    .line 471
    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    .line 472
    iput-boolean p3, p1, Lorg/telegram/ui/Stories/StoryViewer;->allowSelfStoriesView:Z

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    const p1, 0x3f19999a    # 0.6f

    .line 478
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget p3, p2, Lorg/telegram/ui/Stories/StoryViewer;->progressToDismiss:F

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float p3, p3, v2

    if-lez p3, :cond_8

    neg-float p3, p4

    cmpl-float v2, p3, v1

    if-lez v2, :cond_6

    iget v2, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_7

    :cond_6
    cmpg-float p3, p3, v1

    if-gez p3, :cond_8

    iget p3, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_8

    :cond_7
    const p1, 0x3e99999a    # 0.3f

    .line 481
    :cond_8
    iget p3, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    mul-float/2addr p4, p1

    sub-float/2addr p3, p4

    iput p3, p2, Lorg/telegram/ui/Stories/StoryViewer;->swipeToDismissOffset:F

    .line 482
    iget-object p1, p2, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin;->hideVisible(Landroid/view/ViewGroup;)V

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$700(Lorg/telegram/ui/Stories/StoryViewer;)V

    return v0

    :cond_9
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->selfStoriesViewsOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 431
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->allowIntercept:Z

    if-eqz v1, :cond_4

    .line 432
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->keyboardVisible:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$200(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$400(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$500(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v3

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->switchByTap(Z)V

    goto :goto_2

    .line 433
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$1;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->closeKeyboardOrEmoji()Z

    :cond_4
    :goto_2
    return v2
.end method
