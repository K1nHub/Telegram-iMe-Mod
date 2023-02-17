.class public Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;
.super Landroid/widget/FrameLayout;
.source "VoIPFloatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;
    }
.end annotation


# instance fields
.field private active:Z

.field public alwaysFloating:Z

.field public bottomOffset:I

.field bottomPadding:F

.field private delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

.field private floatingMode:Z

.field lastH:I

.field lastInsets:Landroid/view/WindowInsets;

.field lastW:I

.field leftPadding:F

.field public measuredAsFloatingMode:Z

.field moving:Z

.field mutedAnimator:Landroid/animation/ValueAnimator;

.field mutedDrawable:Landroid/graphics/drawable/Drawable;

.field mutedPaint:Landroid/graphics/Paint;

.field mutedProgress:F

.field private mutedUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private overrideCornerRadius:F

.field final path:Landroid/graphics/Path;

.field private progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final rectF:Landroid/graphics/RectF;

.field public relativePositionToSetX:F

.field relativePositionToSetY:F

.field rightPadding:F

.field public savedRelativePositionX:F

.field public savedRelativePositionY:F

.field private setedFloatingMode:Z

.field starX:F

.field starY:F

.field startMovingFromX:F

.field startMovingFromY:F

.field startTime:J

.field switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

.field private switchingToFloatingMode:Z

.field public switchingToPip:Z

.field tapListener:Landroid/view/View$OnClickListener;

.field toFloatingModeProgress:F

.field topPadding:F

.field touchSlop:F

.field private uiVisible:Z

.field public updatePositionFromX:F

.field public updatePositionFromY:F


# direct methods
.method public static synthetic $r8$lambda$gy1q_tQl_yINnr3zqFbNGU5kDoQ(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rectF:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    .line 55
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    .line 56
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    const/4 v2, 0x0

    .line 63
    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    .line 64
    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    .line 72
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->overrideCornerRadius:F

    .line 73
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    .line 84
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 96
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->touchSlop:F

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 113
    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 132
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x66

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    sget v0, Lorg/telegram/messenger/R$drawable;->calls_mute_mini:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)F
    .locals 0

    .line 34
    iget p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->overrideCornerRadius:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setRelativePositionInternal(FFIIZ)V
    .locals 6

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 346
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 350
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-lt v1, v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    add-float/2addr v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-lt v1, v3, :cond_4

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    add-float/2addr v2, v1

    .line 353
    :cond_4
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v3, v5

    int-to-float p3, p3

    sub-float/2addr v3, p3

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    .line 354
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v2

    sub-float/2addr p1, v4

    int-to-float p3, p4

    sub-float/2addr p1, p3

    mul-float p1, p1, p2

    add-float/2addr v4, p1

    const-wide/16 p1, 0x96

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p5, :cond_5

    .line 357
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 358
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 359
    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 360
    invoke-virtual {p3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 361
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 p4, 0x0

    .line 362
    invoke-virtual {p3, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 363
    invoke-virtual {p3, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 365
    :cond_5
    iget-boolean p5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->alwaysFloating:Z

    if-nez p5, :cond_6

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 367
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 368
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 371
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 372
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updatePadding()V
    .locals 2

    const/16 v0, 0x10

    .line 172
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    .line 173
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    .line 174
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    .line 175
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x64

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 268
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromX:F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 270
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromX:F

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 271
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromY:F

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 272
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 273
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 274
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 275
    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromX:F

    .line 276
    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePositionFromY:F

    .line 279
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 280
    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    .line 281
    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    .line 282
    iput v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    .line 286
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 289
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    if-eq v0, v2, :cond_2

    .line 290
    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setFloatingMode(ZZ)V

    .line 293
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    shr-int/2addr v0, v1

    .line 294
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    div-float v2, v3, v2

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    mul-float v2, v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    mul-float v2, v2, v4

    .line 297
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v4

    div-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    mul-float v3, v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    mul-float v3, v3, v4

    int-to-float v4, v0

    int-to-float v5, v1

    .line 298
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/16 v2, 0xe

    .line 300
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 301
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    .line 302
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    .line 301
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 307
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-eqz p1, :cond_3

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 141
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    .line 143
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const v0, 0x3e6b851f    # 0.23f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    goto :goto_0

    .line 148
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToPip:Z

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 150
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 153
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

    if-eqz v0, :cond_2

    .line 154
    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->measuredAsFloatingMode:Z

    invoke-interface {v0, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;->onChange(FZ)V

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 157
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastH:I

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastW:I

    if-eq p1, p2, :cond_3

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rectF:Landroid/graphics/RectF;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 165
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastH:I

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastW:I

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 192
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-eqz v1, :cond_c

    if-eq v1, v7, :cond_4

    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_4

    goto/16 :goto_2

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starX:F

    sub-float/2addr v1, v2

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starY:F

    sub-float/2addr v2, v3

    .line 208
    iget-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    mul-float v3, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->touchSlop:F

    mul-float v5, v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    if-eqz v0, :cond_2

    .line 210
    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 212
    :cond_2
    iput-boolean v7, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starX:F

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starY:F

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromX:F

    .line 216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromY:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 220
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    if-eqz p1, :cond_d

    .line 221
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromX:F

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 222
    iget p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startMovingFromY:F

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_2

    :cond_4
    if-eqz v0, :cond_b

    .line 227
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez p1, :cond_b

    .line 228
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 229
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->tapListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xc8

    cmp-long v5, v0, v3

    if-gez v5, :cond_5

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->tapListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 236
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 239
    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    .line 240
    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    .line 241
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v5, :cond_6

    .line 242
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    .line 243
    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 246
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 247
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 248
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    int-to-float v6, v0

    iget v8, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v6, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 252
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_9

    .line 253
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 254
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    int-to-float v3, v1

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sub-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_a
    :goto_1
    const-wide/16 v0, 0x96

    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 259
    :cond_b
    iput-boolean v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->moving:Z

    goto :goto_2

    .line 197
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v0, :cond_d

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->startTime:J

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starX:F

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->starY:F

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f866666    # 1.05f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_d
    :goto_2
    return v7

    :cond_e
    :goto_3
    return v2
.end method

.method public restoreRelativePosition()V
    .locals 6

    .line 557
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    .line 558
    iget v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-nez v0, :cond_0

    .line 559
    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 560
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    .line 561
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    :cond_0
    return-void
.end method

.method public saveRelativePosition()V
    .locals 7

    .line 538
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 539
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    add-float/2addr v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-lt v2, v3, :cond_4

    .line 544
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    add-float/2addr v2, v3

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x0

    .line 546
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v3, v5

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    .line 547
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    sub-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    .line 548
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    .line 549
    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    goto :goto_4

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 551
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionX:F

    .line 552
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->savedRelativePositionY:F

    :goto_4
    return-void
.end method

.method public setBottomOffset(IZ)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomOffset:I

    return-void

    .line 338
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomOffset:I

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 505
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->overrideCornerRadius:F

    .line 506
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 507
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->delegate:Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$VoIPFloatingLayoutDelegate;

    return-void
.end method

.method public setFloatingMode(ZZ)V
    .locals 11

    .line 377
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 381
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eq p2, p1, :cond_3

    .line 382
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    .line 383
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 384
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    .line 385
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 386
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_3

    .line 387
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    :cond_3
    return-void

    .line 392
    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    if-eqz p2, :cond_5

    .line 393
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    return-void

    :cond_5
    const/4 p2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_8

    .line 396
    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-nez v4, :cond_8

    .line 397
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    .line 398
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    .line 399
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    .line 400
    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    const p1, 0x3e6b851f    # 0.23f

    cmpl-float v4, v6, v2

    if-ltz v4, :cond_6

    .line 401
    iget v7, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    .line 402
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int v8, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int v9, v4

    const/4 v10, 0x0

    move-object v5, p0

    .line 401
    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    .line 404
    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    .line 405
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    .line 406
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    .line 407
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    .line 408
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 409
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 410
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 411
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_7

    .line 412
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 414
    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    aput v6, v2, v1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    .line 415
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchToFloatingModeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 418
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 419
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 420
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p1

    sub-float/2addr v1, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float v1, v4, v1

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 421
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p1

    sub-float/2addr v1, v7

    div-float/2addr v1, v6

    sub-float p1, v5, v1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 422
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 423
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 424
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$3;

    invoke-direct {v0, p0, v4, v5}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$3;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;FF)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 434
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    .line 435
    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v4, :cond_9

    .line 436
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    .line 437
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    .line 438
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    .line 439
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->updatePadding()V

    .line 440
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    .line 441
    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->switchingToFloatingMode:Z

    .line 442
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 443
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 444
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout$4;-><init>(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;FF)V

    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 479
    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->toFloatingModeProgress:F

    .line 480
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    .line 481
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setedFloatingMode:Z

    .line 482
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_2
    return-void
.end method

.method public setInsets(Landroid/view/WindowInsets;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->active:Z

    return-void
.end method

.method public setMuted(ZZ)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 488
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 491
    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    .line 492
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    .line 494
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    .line 495
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 497
    iget v3, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedProgress:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    .line 498
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 500
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->mutedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public setOnTapListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->tapListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRelativePosition(FF)V
    .locals 7

    .line 317
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 318
    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->floatingMode:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePositionInternal(FFIIZ)V

    goto :goto_1

    .line 319
    :cond_1
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetX:F

    .line 320
    iput p2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->relativePositionToSetY:F

    :goto_1
    return-void
.end method

.method public setRelativePosition(Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;)V
    .locals 7

    .line 516
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->topPadding:F

    add-float/2addr v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-lt v1, v2, :cond_4

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->lastInsets:Landroid/view/WindowInsets;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->bottomPadding:F

    add-float/2addr v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 524
    :goto_3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v2, v5

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->leftPadding:F

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->rightPadding:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v2, v5

    .line 525
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    sub-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v5, v0

    .line 527
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 528
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 530
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->setRelativePosition(FF)V

    return-void
.end method

.method public setUiVisible(Z)V
    .locals 1

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    return-void

    .line 332
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;->uiVisible:Z

    return-void
.end method
