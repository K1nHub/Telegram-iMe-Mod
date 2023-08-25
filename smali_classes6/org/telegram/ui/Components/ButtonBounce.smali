.class public Lorg/telegram/ui/Components/ButtonBounce;
.super Ljava/lang/Object;
.source "ButtonBounce.java"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private final durationMultiplier:F

.field private isPressed:Z

.field private final overshoot:F

.field private pressedT:F

.field private releaseDelay:J

.field private view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$9KQyFZTT4MhD-GZbOKAPQnhRoUk(Lorg/telegram/ui/Components/ButtonBounce;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->lambda$setPressed$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->releaseDelay:J

    .line 19
    iput-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->view:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    iput p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->durationMultiplier:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 21
    iput p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->overshoot:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FF)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->releaseDelay:J

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->view:Landroid/view/View;

    .line 26
    iput p2, p0, Lorg/telegram/ui/Components/ButtonBounce;->durationMultiplier:F

    .line 27
    iput p3, p0, Lorg/telegram/ui/Components/ButtonBounce;->overshoot:F

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ButtonBounce;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 11
    iget-object p0, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ButtonBounce;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 11
    iput-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ButtonBounce;F)F
    .locals 0

    .line 11
    iput p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->pressedT:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ButtonBounce;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/telegram/ui/Components/ButtonBounce;->invalidate()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setPressed$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->pressedT:F

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Components/ButtonBounce;->invalidate()V

    return-void
.end method


# virtual methods
.method public getScale(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 84
    iget v2, p0, Lorg/telegram/ui/Components/ButtonBounce;->pressedT:F

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method public isPressed()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->isPressed:Z

    return v0
.end method

.method public setPressed(Z)V
    .locals 3

    .line 44
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->isPressed:Z

    if-eq v0, p1, :cond_3

    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->isPressed:Z

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 51
    iget v2, p0, Lorg/telegram/ui/Components/ButtonBounce;->pressedT:F

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    .line 52
    new-instance v1, Lorg/telegram/ui/Components/ButtonBounce$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ButtonBounce$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ButtonBounce;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ButtonBounce$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ButtonBounce$1;-><init>(Lorg/telegram/ui/Components/ButtonBounce;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->isPressed:Z

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x42700000    # 60.0f

    iget v1, p0, Lorg/telegram/ui/Components/ButtonBounce;->durationMultiplier:F

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    iget v1, p0, Lorg/telegram/ui/Components/ButtonBounce;->overshoot:F

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x43af0000    # 350.0f

    iget v1, p0, Lorg/telegram/ui/Components/ButtonBounce;->durationMultiplier:F

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lorg/telegram/ui/Components/ButtonBounce;->releaseDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public setReleaseDelay(J)Lorg/telegram/ui/Components/ButtonBounce;
    .locals 0

    .line 31
    iput-wide p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->releaseDelay:J

    return-object p0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce;->view:Landroid/view/View;

    return-void
.end method
