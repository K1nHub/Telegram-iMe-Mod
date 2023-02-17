.class public Lorg/telegram/ui/Components/Paint/Views/EntityView;
.super Landroid/widget/FrameLayout;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;,
        Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    }
.end annotation


# static fields
.field private static final STICKY_ANGLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private angleAnimator:Landroid/animation/ValueAnimator;

.field private announcedSelection:Z

.field private currentStickyAngle:I

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

.field private fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

.field private fromStickyAnimatedAngle:F

.field private fromStickyToAngle:F

.field private fromStickyX:F

.field private fromStickyY:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasFromStickyXAnimation:Z

.field private hasFromStickyYAnimation:Z

.field private hasPanned:Z

.field private hasReleased:Z

.field private hasStickyAngle:Z

.field private hasStickyX:Z

.field private hasStickyY:Z

.field private hasTransformed:Z

.field private position:Lorg/telegram/ui/Components/Point;

.field private previousLocationX:F

.field private previousLocationY:F

.field private recognizedLongPress:Z

.field protected selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

.field private stickyAnimatedAngle:F

.field private stickyXAnimator:Landroid/animation/ValueAnimator;

.field private stickyYAnimator:Landroid/animation/ValueAnimator;

.field private uuid:Ljava/util/UUID;


# direct methods
.method public static synthetic $r8$lambda$BjVtIjLWv8gVLJCyzD81d3KWGKw(Lorg/telegram/ui/Components/Paint/Views/EntityView;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$rotate$2(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PzboxVsQK9X7twGgdeV5C-EKFWc(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$runStickyXAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QAv5JcGExNMKuCJXyd4gt5w5SWA(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$runStickyYAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SBeUMphWascZdbPL_krBWycgDmY(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$rotate$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, -0x5a

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->STICKY_ANGLES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 47
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 48
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    .line 49
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 50
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    .line 62
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    .line 79
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    .line 80
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 82
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .locals 0

    .line 25
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .locals 0

    .line 25
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .locals 0

    .line 25
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .locals 0

    .line 25
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .locals 0

    .line 25
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/Views/EntityView;FF)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/view/GestureDetector;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$rotate$2(FLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 419
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    .line 420
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotateInternal(F)V

    return-void
.end method

.method private synthetic lambda$rotate$3(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 450
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAnimatedAngle:F

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyToAngle:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotateInternal(F)V

    return-void
.end method

.method private synthetic lambda$runStickyXAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 241
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$runStickyYAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method private onTouchMove(FF)Z
    .locals 8

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 133
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    sub-float v2, p1, v2

    div-float/2addr v2, v0

    .line 134
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    sub-float v3, p2, v3

    div-float/2addr v3, v0

    float-to-double v4, v2

    float-to-double v6, v3

    .line 135
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 136
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41800000    # 16.0f

    :goto_0
    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 138
    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->pan(FF)V

    .line 139
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 140
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-eqz p2, :cond_3

    .line 144
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method private onTouchUp()V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    .line 157
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 158
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 160
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private rotateInternal(F)V
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 479
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method private varargs runStickyXAnimator([F)V
    .locals 2

    .line 239
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    .line 240
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private varargs runStickyYAnimator([F)V
    .locals 2

    .line 256
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    .line 257
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public deselect()V
    .locals 3

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public getPosition()Lorg/telegram/ui/Components/Point;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method protected getPositionX()F
    .locals 4

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 356
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 358
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 359
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyX:F

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 360
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    if-eqz v2, :cond_1

    .line 361
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method protected getPositionY()F
    .locals 4

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 371
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 372
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyY:F

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 373
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-eqz v2, :cond_1

    .line 374
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    return v0
.end method

.method protected getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 2

    .line 483
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hasPanned()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    return v0
.end method

.method public final hasStickyX()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    return v0
.end method

.method public final hasStickyY()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    return v0
.end method

.method public final hasTouchDown()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-interface {v0, v3, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF)[F

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    goto :goto_1

    .line 220
    :cond_1
    aget v1, v0, v1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z

    move-result v1

    goto :goto_1

    .line 227
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 204
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v3, :cond_5

    .line 205
    invoke-interface {v3, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 206
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 208
    :cond_5
    aget v3, v0, v1

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 209
    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    .line 211
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-eqz v0, :cond_3

    .line 214
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 233
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    :goto_2
    return v1
.end method

.method public pan(FF)V
    .locals 8

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 274
    iget p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr p1, p2

    iput p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 276
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    if-eqz p2, :cond_0

    .line 277
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyX:F

    .line 279
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    if-eqz p2, :cond_1

    .line 280
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyY:F

    .line 283
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_d

    .line 285
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    const/4 v0, 0x3

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x42400000    # 48.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x2

    if-nez p2, :cond_4

    .line 286
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpg-float p2, p2, v7

    if-gtz p2, :cond_7

    .line 287
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    .line 289
    :try_start_0
    invoke-virtual {p0, v0, v6}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 291
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p2, :cond_2

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 295
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    .line 296
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 299
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyX:F

    .line 300
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    new-array p2, v6, [F

    .line 301
    fill-array-data p2, :array_0

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyXAnimator([F)V

    goto :goto_1

    .line 304
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpl-float p2, p2, v7

    if-lez p2, :cond_7

    .line 305
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    .line 306
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p2, :cond_5

    .line 307
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 310
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_6

    .line 311
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 313
    :cond_6
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    new-array p2, v6, [F

    .line 314
    fill-array-data p2, :array_1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyXAnimator([F)V

    .line 318
    :cond_7
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-nez p2, :cond_a

    .line 319
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_d

    .line 320
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    .line 322
    :try_start_1
    invoke-virtual {p0, v0, v6}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 324
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p1, :cond_8

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 328
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    .line 329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 331
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyY:F

    .line 332
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    new-array p1, v6, [F

    .line 333
    fill-array-data p1, :array_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyYAnimator([F)V

    goto :goto_3

    .line 336
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d

    .line 337
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    .line 338
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p1, :cond_b

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 342
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 345
    :cond_c
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    new-array p1, v6, [F

    .line 346
    fill-array-data p1, :array_3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyYAnimator([F)V

    .line 351
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public rotate(F)V
    .locals 7

    .line 400
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    const-wide/16 v1, 0x96

    const/4 v3, 0x2

    if-nez v0, :cond_3

    .line 401
    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->STICKY_ANGLES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v5, v4

    sub-float/2addr v5, p1

    .line 402
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 403
    iput v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    const/4 v0, 0x3

    .line 406
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 409
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 412
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-array v0, v3, [F

    .line 415
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    .line 416
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$4;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 436
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_6

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 438
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 441
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 442
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 445
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAnimatedAngle:F

    .line 446
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyToAngle:F

    new-array v0, v3, [F

    .line 448
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    .line 449
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$5;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    goto :goto_1

    .line 463
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    .line 464
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    goto :goto_1

    .line 466
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float p1, p1

    .line 470
    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 471
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyToAngle:F

    .line 472
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAnimatedAngle:F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    .line 474
    :cond_9
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotateInternal(F)V

    return-void

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
.end method

.method public scale(F)V
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v0

    mul-float v0, v0, p1

    const p1, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 395
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 396
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public select(Landroid/view/ViewGroup;)V
    .locals 4

    .line 501
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    move-result-object v0

    const/4 v1, 0x0

    .line 502
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const v1, 0x3f666666    # 0.9f

    .line 503
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 505
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 506
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 507
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    return-void
.end method

.method public setHasStickyX(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    return-void
.end method

.method public setHasStickyY(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    return-void
.end method

.method public setPosition(Lorg/telegram/ui/Components/Point;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 116
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public setSelectionVisibility(Z)V
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 532
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected updatePosition()V
    .locals 3

    .line 381
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 382
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 384
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 385
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public updateSelectionView()V
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    :cond_0
    return-void
.end method
