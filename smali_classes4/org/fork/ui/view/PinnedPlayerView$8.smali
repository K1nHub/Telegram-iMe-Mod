.class Lorg/fork/ui/view/PinnedPlayerView$8;
.super Lorg/telegram/ui/Components/RLottieImageView;
.source "PinnedPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/PinnedPlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/LaunchActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final backSeek:Ljava/lang/Runnable;

.field lastTime:J

.field lastUpdateTime:J

.field pressedCount:I

.field private final pressedRunnable:Ljava/lang/Runnable;

.field startTime:J

.field startX:F

.field startY:F

.field final synthetic this$0:Lorg/fork/ui/view/PinnedPlayerView;

.field final synthetic val$touchSlop:F


# direct methods
.method constructor <init>(Lorg/fork/ui/view/PinnedPlayerView;Landroid/content/Context;F)V
    .locals 0

    .line 359
    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    iput p3, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->val$touchSlop:F

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 363
    iput p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    .line 368
    new-instance p1, Lorg/fork/ui/view/PinnedPlayerView$8$1;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/PinnedPlayerView$8$1;-><init>(Lorg/fork/ui/view/PinnedPlayerView$8;)V

    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedRunnable:Ljava/lang/Runnable;

    .line 384
    new-instance p1, Lorg/fork/ui/view/PinnedPlayerView$8$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/PinnedPlayerView$8$2;-><init>(Lorg/fork/ui/view/PinnedPlayerView$8;)V

    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->backSeek:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1100(Lorg/fork/ui/view/PinnedPlayerView$8;)Ljava/lang/Runnable;
    .locals 0

    .line 359
    iget-object p0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->backSeek:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 489
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x10

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 436
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lorg/fork/ui/view/PinnedPlayerView;->access$1200(Lorg/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/SeekBarView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lorg/fork/ui/view/PinnedPlayerView;->access$500(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const-wide/16 v5, 0x12c

    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_2

    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    const/4 v0, 0x3

    if-eq v4, v0, :cond_2

    goto/16 :goto_0

    .line 455
    :cond_1
    iget p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startX:F

    sub-float/2addr v0, p1

    .line 456
    iget p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startY:F

    sub-float/2addr v3, p1

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    .line 458
    iget p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->val$touchSlop:F

    mul-float/2addr p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {p1}, Lorg/fork/ui/view/PinnedPlayerView;->access$500(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result p1

    if-nez p1, :cond_7

    .line 459
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 460
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 465
    :cond_2
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 466
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->backSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 467
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lorg/fork/ui/view/PinnedPlayerView;->access$500(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startTime:J

    sub-long/2addr v3, v7

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    .line 468
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->playPreviousMessage()V

    .line 469
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {p1}, Lorg/fork/ui/view/PinnedPlayerView;->access$1300(Lorg/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 470
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {p1}, Lorg/fork/ui/view/PinnedPlayerView;->access$1300(Lorg/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 472
    :cond_3
    iget p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    if-lez p1, :cond_4

    const-wide/16 v3, 0x0

    .line 473
    iput-wide v3, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->lastUpdateTime:J

    .line 474
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->backSeek:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 475
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->resumeByRewind()V

    .line 477
    :cond_4
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lorg/fork/ui/view/PinnedPlayerView;->access$102(Lorg/fork/ui/view/PinnedPlayerView;F)F

    .line 478
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 479
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {p1, v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$502(Lorg/fork/ui/view/PinnedPlayerView;I)I

    .line 480
    iput v1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    goto :goto_0

    .line 444
    :cond_5
    iput v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startX:F

    .line 445
    iput v3, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startY:F

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startTime:J

    .line 447
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {p1, v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$502(Lorg/fork/ui/view/PinnedPlayerView;I)I

    .line 448
    iget-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 449
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 450
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startX:F

    iget v1, p0, Lorg/fork/ui/view/PinnedPlayerView$8;->startY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 452
    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    return v1
.end method
