.class public Lorg/telegram/ui/Components/voip/VoIPWindowView;
.super Landroid/widget/FrameLayout;
.source "VoIPWindowView.java"


# instance fields
.field activity:Landroid/app/Activity;

.field private animationIndex:I

.field finished:Z

.field protected lockOnScreen:Z

.field private orientationBefore:I

.field runEnterTransition:Z

.field startDragging:Z

.field startX:F

.field startY:F

.field velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->animationIndex:I

    .line 35
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->activity:Landroid/app/Activity;

    const/16 v0, 0x700

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->orientationBefore:I

    .line 40
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    if-nez p2, :cond_0

    .line 42
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->runEnterTransition:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPWindowView;)I
    .locals 0

    .line 23
    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->animationIndex:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPWindowView;)I
    .locals 0

    .line 23
    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->orientationBefore:I

    return p0
.end method


# virtual methods
.method public createWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 174
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    .line 175
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    .line 176
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 177
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x33

    .line 178
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x63

    .line 179
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    .line 180
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 182
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 183
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const/16 v1, 0x15

    if-lt v2, v1, :cond_1

    const v1, -0x7ffcff00

    .line 186
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x20000

    .line 191
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 193
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x280080

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method

.method public finish()V
    .locals 2

    const-wide/16 v0, 0x96

    .line 123
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish(J)V

    return-void
.end method

.method public finish(J)V
    .locals 4

    .line 127
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finished:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finished:Z

    .line 129
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->clearInstance()V

    .line 131
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->lockOnScreen:Z

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->activity:Landroid/app/Activity;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 134
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :cond_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 140
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->animationIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->animationIndex:I

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/voip/VoIPWindowView$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPWindowView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public finishImmediate()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->activity:Landroid/app/Activity;

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->orientationBefore:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->activity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/16 v1, 0x8

    .line 218
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 219
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public isLockOnScreen()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->lockOnScreen:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 53
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->runEnterTransition:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->runEnterTransition:Z

    .line 55
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startEnterTransition()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 70
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->lockOnScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startX:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startY:F

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_1

    .line 78
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 80
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_7

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startX:F

    sub-float/2addr v0, v1

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startY:F

    sub-float/2addr v1, v2

    .line 84
    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startDragging:Z

    if-nez v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startX:F

    .line 87
    iput-boolean v5, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startDragging:Z

    const/4 v0, 0x0

    .line 89
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startDragging:Z

    if-eqz v1, :cond_6

    cmpg-float v1, v0, v4

    if-gez v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    .line 93
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 94
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 96
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 97
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 99
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startDragging:Z

    return p1

    .line 100
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 101
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_9

    .line 103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 106
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 108
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    cmpg-float p1, p1, v6

    if-gez p1, :cond_a

    const p1, 0x455ac000    # 3500.0f

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_b

    cmpg-float p1, v0, v2

    if-gez p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    :cond_b
    :goto_1
    if-nez v5, :cond_c

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x43480000    # 200.0f

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, p1

    float-to-int p1, v0

    const/16 v0, 0x32

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPWindowView;->finish(J)V

    goto :goto_2

    .line 115
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 117
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->startDragging:Z

    :cond_d
    :goto_3
    return v1
.end method

.method public requestFullscreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result p1

    and-int/lit8 p1, p1, -0x5

    .line 209
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public setLockOnScreen(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->lockOnScreen:Z

    return-void
.end method

.method public startEnterTransition()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPWindowView;->lockOnScreen:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
