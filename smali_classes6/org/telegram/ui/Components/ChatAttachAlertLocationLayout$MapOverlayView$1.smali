.class Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;
.super Ljava/lang/Object;
.source "ChatAttachAlertLocationLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->addInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final animatorValues:[F

.field private startedInner:Z

.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

.field final synthetic val$iconLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->val$iconLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 308
    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->animatorValues:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->animatorValues:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp([FF)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 313
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->startedInner:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 315
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 316
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 317
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    .line 318
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$300(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Landroid/widget/FrameLayout;

    move-result-object v2

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_2

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 315
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 319
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f828f5c    # 1.02f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 321
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 322
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->startedInner:Z

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const v2, 0x3f8ccccd    # 1.1f

    if-gtz v1, :cond_1

    .line 326
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f400000    # 0.75f

    cmpg-float v3, p1, v1

    const/high16 v4, 0x3e800000    # 0.25f

    if-gtz v3, :cond_2

    sub-float/2addr p1, v0

    const v0, 0x3e4ccccd    # 0.2f

    .line 329
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float/2addr p1, v4

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v0

    sub-float p1, v2, p1

    goto :goto_0

    :cond_2
    sub-float/2addr p1, v1

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3dcccccd    # 0.1f

    .line 332
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float/2addr p1, v4

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    .line 334
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->val$iconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$MapOverlayView$1;->val$iconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
