.class Lcom/iMe/fork/ui/view/PinnedPlayerView$9;
.super Lorg/telegram/ui/Components/RLottieImageView;
.source "PinnedPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/PinnedPlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/LaunchActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pressed:Z

.field private final pressedRunnable:Ljava/lang/Runnable;

.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

.field final synthetic val$touchSlop:F


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/PinnedPlayerView;Landroid/content/Context;F)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    iput p3, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->val$touchSlop:F

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 523
    new-instance p1, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;-><init>(Lcom/iMe/fork/ui/view/PinnedPlayerView$9;)V

    iput-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressedRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 605
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x10

    .line 606
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$1200(Lcom/iMe/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/SeekBarView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$500(Lcom/iMe/fork/ui/view/PinnedPlayerView;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_1

    .line 555
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2

    goto/16 :goto_0

    .line 570
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->startX:F

    sub-float/2addr v0, p1

    .line 571
    iget p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->startY:F

    sub-float/2addr v2, p1

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    .line 573
    iget p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->val$touchSlop:F

    mul-float/2addr p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    iget-boolean p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressed:Z

    if-nez p1, :cond_7

    .line 574
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressedRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 575
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_0

    .line 580
    :cond_2
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressed:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 581
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->playNextMessage()V

    .line 582
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$1500(Lcom/iMe/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 583
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$1500(Lcom/iMe/fork/ui/view/PinnedPlayerView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 585
    :cond_3
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressedRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 586
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$300(Lcom/iMe/fork/ui/view/PinnedPlayerView;)I

    move-result p1

    if-lez p1, :cond_4

    .line 587
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 588
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 589
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$202(Lcom/iMe/fork/ui/view/PinnedPlayerView;J)J

    .line 590
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {p1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$600(Lcom/iMe/fork/ui/view/PinnedPlayerView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 593
    :cond_4
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {p1, v1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$502(Lcom/iMe/fork/ui/view/PinnedPlayerView;I)I

    .line 594
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 595
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {p1, v1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$302(Lcom/iMe/fork/ui/view/PinnedPlayerView;I)I

    .line 596
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p1, v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$102(Lcom/iMe/fork/ui/view/PinnedPlayerView;F)F

    goto :goto_0

    .line 560
    :cond_5
    iput-boolean v1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressed:Z

    .line 561
    iput v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->startX:F

    .line 562
    iput v2, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->startY:F

    .line 563
    iget-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 564
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 565
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->startX:F

    iget v1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->startY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 567
    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_7
    :goto_0
    return v4

    :cond_8
    :goto_1
    return v1
.end method
