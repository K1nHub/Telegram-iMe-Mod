.class public Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
.super Landroid/widget/FrameLayout;
.source "BottomSheet.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerView"
.end annotation


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private keyboardChanged:Z

.field private keyboardHeight:I

.field private maybeStartTracking:Z

.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private rect:Landroid/graphics/Rect;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private y:F


# direct methods
.method public static synthetic $r8$lambda$-WIkxvFQFr0LVELqnjvvGDzkkMs(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->lambda$onLayout$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z6zqSyBAKh364FKKOwPSVaPr21Q(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->lambda$checkDismiss$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 246
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 232
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 p2, -0x1

    .line 235
    iput p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    const/4 p2, 0x0

    .line 236
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 237
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 238
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 240
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    .line 242
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 370
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    .line 247
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 248
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)I
    .locals 0

    .line 230
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 230
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 230
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private cancelCurrentAnimation()V
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private checkDismiss(FF)V
    .locals 9

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    .line 328
    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    cmpg-float v3, v0, v3

    const v4, 0x455ac000    # 3500.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v3, :cond_0

    cmpg-float v3, p2, v4

    if-ltz v3, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v3, p1

    if-ltz p1, :cond_1

    :cond_0
    cmpg-float p1, p2, v5

    if-gez p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_2

    :cond_1
    move p1, v6

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-nez p1, :cond_3

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$100(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$102(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p2, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$202(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 334
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$102(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z

    goto :goto_1

    .line 336
    :cond_3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 337
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 338
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 343
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-array v7, v6, [F

    aput v5, v7, v2

    const-string v8, "translationY"

    .line 344
    invoke-static {v4, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, p1, v2

    aput-object p2, p1, v6

    .line 343
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 347
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    const/high16 p2, 0x437a0000    # 250.0f

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v0, v6, [Ljava/lang/Object;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$checkDismiss$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLayout$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 543
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 648
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    if-ltz v2, :cond_0

    .line 649
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 651
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 656
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->shouldOverlayCameraViewOverNavBar()Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawNavigationBar(Landroid/graphics/Canvas;F)V

    .line 659
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    const/4 v4, 0x0

    if-ge v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_6

    .line 661
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-nez v2, :cond_4

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_3

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1100(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    .line 662
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 663
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 665
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 666
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 667
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v2, v5

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    add-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1400(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v2

    sub-float v7, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v1, v2

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v1, v0

    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 668
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 669
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 671
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 673
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->shouldOverlayCameraViewOverNavBar()Z

    move-result v0

    if-nez v0, :cond_8

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    if-eqz v1, :cond_7

    const v1, 0x3f333333    # 0.7f

    iget v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    mul-float v3, v0, v1

    :cond_7
    invoke-virtual {p0, p1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawNavigationBar(Landroid/graphics/Canvas;F)V

    .line 676
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v1, :cond_9

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$900(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    if-eqz v1, :cond_9

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_9

    .line 677
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v0, v2

    int-to-float v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v9, v0

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 680
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v1, :cond_a

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$900(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$900(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-le v0, v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    if-eqz v1, :cond_a

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_a

    const/4 v6, 0x0

    .line 681
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v0, v1

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v9, v0

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 684
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_c

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:I

    if-ltz v2, :cond_b

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    goto :goto_5

    :cond_b
    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColor:I

    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v0, v2

    int-to-float v3, v0

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 692
    instance-of v0, p2, Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->shouldOverlayCameraViewOverNavBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 694
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawNavigationBar(Landroid/graphics/Canvas;F)V

    .line 696
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 698
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawNavigationBar(Landroid/graphics/Canvas;F)V
    .locals 13

    .line 727
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 728
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    if-ltz v2, :cond_0

    .line 729
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1500(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 739
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$700(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1400(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_d

    .line 741
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 742
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v4, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-nez v4, :cond_7

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_6

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1100(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3

    .line 743
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    if-eqz v2, :cond_8

    int-to-float v2, v1

    .line 744
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1400(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3

    .line 746
    :cond_8
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 747
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 750
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 751
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1500(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 752
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    mul-float/2addr p2, v4

    .line 754
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1500(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    float-to-int v4, v4

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    :goto_4
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_b

    .line 756
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v7, v2

    mul-float/2addr v7, p2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 758
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v6, v4

    int-to-float v8, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1400(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v7

    sub-float v9, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v7, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v6, v7

    int-to-float v10, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v11, v6, v0

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 759
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 761
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1600(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 762
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1600(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-gez v5, :cond_c

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    mul-float/2addr v5, p2

    float-to-int p2, v5

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5

    :cond_c
    move v3, v0

    .line 768
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget p2, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v4, p2

    int-to-float v6, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    add-float/2addr p2, v3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1400(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v0

    sub-float v7, p2, v0

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr p2, v0

    int-to-float v8, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v9, p2, v3

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 769
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_d
    return-void
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_3

    .line 706
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1100(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    if-lez v0, :cond_1

    .line 707
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 708
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 710
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 711
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 712
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v4, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v2, v4

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    add-float/2addr v0, v3

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1400(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v2

    sub-float v6, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v0, v2

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v8, v0, v3

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 715
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 716
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    if-eqz v2, :cond_7

    .line 717
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v4, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:I

    if-ltz v4, :cond_4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    goto :goto_2

    :cond_4
    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColor:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 718
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    add-int/2addr v2, v3

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    sub-int/2addr v2, v3

    int-to-float v5, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    sub-int/2addr v2, v3

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v7, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v1

    :cond_6
    sub-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 720
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_8

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 627
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->processTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1

    .line 629
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 516
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1210(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    .line 517
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    const/16 v8, 0x15

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v1, :cond_7

    sub-int v2, p5, p3

    .line 518
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    .line 519
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_2

    .line 520
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v3

    add-int v3, p2, v3

    .line 521
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getRightInset()I

    move-result v4

    sub-int v4, p4, v4

    .line 522
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v6, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    if-eqz v6, :cond_0

    move v2, v10

    goto :goto_1

    :cond_0
    int-to-float v2, v2

    .line 525
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$600(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v11

    sub-float/2addr v6, v11

    mul-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v11, v6, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v11, :cond_1

    move v6, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v6

    :goto_0
    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float/2addr v2, v5

    float-to-int v2, v2

    const/16 v5, 0x1d

    if-lt v1, v5, :cond_3

    .line 527
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1100(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_2
    move/from16 v3, p2

    move/from16 v4, p4

    :cond_3
    :goto_1
    sub-int v1, v4, v3

    .line 531
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v1, v5

    div-int/2addr v1, v9

    .line 532
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_4

    .line 533
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v5

    add-int/2addr v1, v5

    .line 535
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v6, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    if-eqz v6, :cond_6

    iget-object v6, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-nez v6, :cond_6

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardChanged:Z

    if-eqz v6, :cond_6

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    if-eq v5, v2, :cond_6

    .line 536
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    sub-int/2addr v6, v2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 537
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 538
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 540
    :cond_5
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    new-array v6, v9, [F

    iget-object v11, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v11

    aput v11, v6, v10

    const/4 v11, 0x0

    aput v11, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1302(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 541
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 545
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView$2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v11, 0xfa

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget-object v6, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 553
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 555
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v11, v11, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v5, v1, v2, v6, v11}, Landroid/view/ViewGroup;->layout(IIII)V

    move v11, v3

    move v12, v4

    goto :goto_2

    :cond_7
    move/from16 v11, p2

    move/from16 v12, p4

    .line 558
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v13

    move v14, v10

    :goto_3
    if-ge v14, v13, :cond_11

    .line 560
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 561
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-ne v15, v2, :cond_8

    goto/16 :goto_9

    .line 564
    :cond_8
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v2

    goto :goto_4

    :cond_9
    move v2, v10

    :goto_4
    sub-int v6, p5, v2

    move-object v2, v15

    move v3, v11

    move/from16 v4, p3

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomLayout(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_10

    .line 565
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 567
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 568
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 573
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    const/16 v4, 0x33

    :cond_a
    and-int/lit8 v5, v4, 0x7

    and-int/lit8 v4, v4, 0x70

    and-int/lit8 v5, v5, 0x7

    if-eq v5, v7, :cond_c

    const/4 v6, 0x5

    if-eq v5, v6, :cond_b

    .line 590
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    :cond_b
    sub-int v5, v12, v2

    .line 586
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    :cond_c
    sub-int v5, v12, v11

    sub-int/2addr v5, v2

    .line 583
    div-int/2addr v5, v9

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_5
    sub-int/2addr v5, v6

    :goto_6
    const/16 v6, 0x10

    if-eq v4, v6, :cond_e

    const/16 v6, 0x50

    if-eq v4, v6, :cond_d

    .line 601
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_d
    sub-int v4, p5, p3

    sub-int/2addr v4, v3

    .line 598
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    :cond_e
    sub-int v4, p5, p3

    sub-int/2addr v4, v3

    .line 595
    div-int/2addr v4, v9

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_7
    sub-int v1, v4, v1

    .line 603
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_f

    .line 604
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v4

    add-int/2addr v5, v4

    :cond_f
    add-int/2addr v2, v5

    add-int/2addr v3, v1

    .line 606
    invoke-virtual {v15, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_10
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 609
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1200(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_12

    iget-boolean v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-nez v1, :cond_12

    .line 610
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 611
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    .line 614
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-eqz v2, :cond_14

    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v2, :cond_14

    .line 615
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_13

    .line 616
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 617
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 619
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iput-boolean v10, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    .line 621
    :cond_14
    iput-boolean v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardChanged:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 442
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 443
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 445
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 447
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    .line 448
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    const/16 v4, 0x14

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v3, v3

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$600(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v7

    sub-float v7, v5, v7

    mul-float/2addr v3, v7

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-float/2addr v2, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$600(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v3

    sub-float v3, v5, v3

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 450
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    sub-int/2addr v0, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    .line 451
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 452
    iput v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    .line 454
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$720(Lorg/telegram/ui/ActionBar/BottomSheet;I)I

    goto :goto_1

    .line 456
    :cond_2
    iput v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    .line 458
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_3

    .line 459
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardChanged:Z

    .line 461
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-le v0, v3, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v6

    :goto_2
    iput-boolean v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    const/16 v1, 0x1d

    const/16 v3, 0x15

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_7

    .line 463
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$702(Lorg/telegram/ui/ActionBar/BottomSheet;I)I

    .line 464
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v7

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$902(Lorg/telegram/ui/ActionBar/BottomSheet;I)I

    .line 465
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v7

    invoke-static {v4, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1002(Lorg/telegram/ui/ActionBar/BottomSheet;I)I

    if-lt v0, v1, :cond_5

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1100(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$712(Lorg/telegram/ui/ActionBar/BottomSheet;I)I

    .line 469
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->rect:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v7, :cond_6

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eqz v4, :cond_6

    .line 470
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->keyboardHeight:I

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$720(Lorg/telegram/ui/ActionBar/BottomSheet;I)I

    .line 472
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-nez v4, :cond_7

    .line 473
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v0

    sub-int v0, p2, v0

    goto :goto_3

    :cond_7
    move v0, p2

    .line 476
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_9

    .line 478
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$600(Lorg/telegram/ui/ActionBar/BottomSheet;)F

    move-result v7

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-lt v0, v1, :cond_8

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$1100(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v0

    add-int/2addr v4, v0

    :cond_8
    sub-int/2addr p2, v4

    .line 484
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_a

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getRightInset()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 487
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-ge p1, p2, :cond_b

    goto :goto_4

    :cond_b
    move v2, v6

    :goto_4
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    .line 489
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_e

    .line 490
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->fullWidth:Z

    const/high16 v4, -0x80000000

    if-nez v3, :cond_d

    .line 492
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 493
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_5

    .line 495
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isPortrait:Z

    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomSheetWidth(ZII)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 497
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->measure(II)V

    goto :goto_6

    .line 499
    :cond_d
    iget v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 502
    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_7
    if-ge v6, v0, :cond_11

    .line 504
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 505
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-ne v8, v3, :cond_f

    goto :goto_8

    .line 508
    :cond_f
    invoke-virtual {v1, v8, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomMeasure(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_10

    .line 509
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_10
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1

    .line 295
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    if-lez p3, :cond_2

    int-to-float v0, p3

    sub-float/2addr p1, v0

    const/4 v0, 0x1

    .line 302
    aput p3, p4, v0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    .line 306
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    if-eqz p5, :cond_2

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p1

    int-to-float p2, p5

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    .line 288
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 253
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BottomSheet;->nestedScrollChild:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_1

    .line 254
    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean p2, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    const/4 p1, 0x0

    .line 273
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->checkDismiss(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->processTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 7

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 379
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithTouchOutside()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 382
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    if-le v0, v3, :cond_3

    goto :goto_0

    .line 386
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->onScrollUpBegin(F)V

    .line 387
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 388
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 389
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 391
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    .line 383
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onDismissWithTouchOutside()V

    return v2

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v3, v4, :cond_9

    .line 394
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_6

    .line 395
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 397
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 399
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    add-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->onScrollUp(F)Z

    move-result v5

    .line 400
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 401
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$400(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v6, :cond_7

    cmpl-float v6, v4, v0

    if-lez v6, :cond_7

    const/high16 v6, 0x40400000    # 3.0f

    div-float v6, v4, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_7

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 403
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 404
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 405
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_3

    .line 406
    :cond_7
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-eqz v3, :cond_f

    .line 407
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    if-nez v5, :cond_8

    .line 409
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    .line 410
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingY:I

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    .line 414
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v3, v4, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_f

    .line 415
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_b

    .line 416
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 418
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->onScrollUpEnd(F)V

    .line 420
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez p1, :cond_d

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->y:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    goto :goto_1

    .line 423
    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    goto :goto_2

    .line 421
    :cond_d
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->checkDismiss(FF)V

    .line 425
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 427
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_e
    const/4 p1, -0x1

    .line 430
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTrackingPointerId:I

    :cond_f
    :goto_3
    if-nez p2, :cond_10

    .line 432
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-nez p1, :cond_11

    :cond_10
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    move v1, v2

    :cond_12
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 634
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 637
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
