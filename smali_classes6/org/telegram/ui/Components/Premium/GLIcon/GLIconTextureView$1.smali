.class Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;
.super Ljava/lang/Object;
.source "GLIconTextureView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;


# direct methods
.method public static synthetic $r8$lambda$jds_Jdn3oxzqp2KHvqBXbqjMnSs(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->lambda$onSingleTapUp$0(FF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSingleTapUp$0(FF)V
    .locals 12

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 119
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$000(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    const/16 v0, 0xdc

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 127
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v3, v3, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 128
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v5, v0

    .line 129
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v7, v1, [F

    aput p1, v7, v4

    const/4 p1, 0x0

    aput p1, v7, v3

    .line 132
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 133
    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->xUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v8, 0x258

    .line 135
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v10, v1, [F

    .line 138
    iget-object v11, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v11, v11, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget v11, v11, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    aput v11, v10, v4

    aput p2, v10, v3

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 139
    iget-object v11, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v11, v11, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 140
    invoke-virtual {v10, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v1, [F

    aput p2, v0, v4

    aput p1, v0, v3

    .line 143
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->yUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 146
    invoke-virtual {p1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v2, v0, v4

    aput-object v7, v0, v3

    aput-object v10, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$1;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 85
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->backAnimation:Landroid/animation/ValueAnimator;

    .line 88
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iput-object v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 93
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->idleAnimation:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->touched:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->onLongPress()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleX:F

    .line 168
    iget p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    const p3, 0x3d4ccccd    # 0.05f

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    iput p2, p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->angleY:F

    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 106
    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v3, v0, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v0

    .line 107
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float p1, v0, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    .line 108
    new-instance p1, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;FF)V

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method
