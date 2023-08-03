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

.field private announcedDrag:Z

.field private announcedSelection:Z

.field private announcedTrash:Z

.field private bounce:Lorg/telegram/ui/Components/ButtonBounce;

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

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selecting:Z

.field protected selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

.field private stickyAnimatedAngle:F

.field private stickyXAnimator:Landroid/animation/ValueAnimator;

.field private stickyYAnimator:Landroid/animation/ValueAnimator;

.field private trashAnimator:Landroid/animation/ValueAnimator;

.field private trashScale:F

.field private uuid:Ljava/util/UUID;


# direct methods
.method public static synthetic $r8$lambda$1x9T4JFh1TcMqP8i3i8G8U0E4u8(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$updateTrash$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

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

.method public static synthetic $r8$lambda$U65szAWJFR0mIlshS_cFYDcUVg4(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$updateSelect$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, -0x5a

    .line 34
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

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->STICKY_ANGLES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 62
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 63
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    .line 64
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    .line 65
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 66
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    .line 67
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    .line 79
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    .line 543
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 740
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    .line 97
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 99
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/Views/EntityView;FF)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/view/GestureDetector;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$rotate$2(FLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 460
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    .line 461
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotateInternal(F)V

    return-void
.end method

.method private synthetic lambda$rotate$3(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 491
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

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$runStickyYAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 299
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$updateSelect$4(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 565
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_0

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 567
    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    mul-float/2addr v1, v4

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const v2, 0x3f4ccccd    # 0.8f

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTrash$5(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 750
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    .line 751
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 752
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz p1, :cond_0

    .line 753
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 754
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    mul-float/2addr v1, v4

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const v2, 0x3f4ccccd    # 0.8f

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 757
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private onTouchMove(FF)Z
    .locals 8

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 150
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    sub-float v2, p1, v2

    div-float/2addr v2, v0

    .line 151
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    sub-float v3, p2, v3

    div-float/2addr v3, v0

    float-to-double v4, v2

    float-to-double v6, v3

    .line 152
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 153
    iget-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-eqz v5, :cond_1

    const/high16 v5, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_1
    const/high16 v5, 0x41800000    # 16.0f

    :goto_0
    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 155
    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->pan(FF)V

    .line 156
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 157
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    const/4 v2, 0x1

    .line 158
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-eqz v3, :cond_3

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 164
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v3, :cond_4

    .line 165
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    .line 166
    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragStart()V

    .line 168
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v3, :cond_5

    .line 169
    invoke-interface {v3, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 170
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 173
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_8

    .line 174
    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    const/16 v6, 0x42

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    move v5, v1

    :goto_1
    invoke-interface {v3, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedTop(Z)V

    .line 175
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v6, 0x72

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedBottom(Z)V

    .line 178
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/16 v4, 0x4c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {p1, p2, v0, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    const/16 p2, 0x20

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    move p1, v2

    goto :goto_3

    :cond_9
    move p1, v1

    :goto_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateTrash(Z)V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v2

    :cond_a
    return v1
.end method

.method private onTouchUp()V
    .locals 3

    .line 188
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragEnd(Z)V

    .line 190
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    .line 192
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 195
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_2

    .line 196
    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedTop(Z)V

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedBottom(Z)V

    .line 199
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    .line 200
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 201
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 203
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method private rotateInternal(F)V
    .locals 0

    .line 519
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 520
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method private varargs runStickyXAnimator([F)V
    .locals 2

    .line 280
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    .line 281
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private varargs runStickyYAnimator([F)V
    .locals 2

    .line 297
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    .line 298
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateSelect(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 545
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    if-eq v0, p2, :cond_4

    .line 546
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 550
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 557
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    .line 558
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 559
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    .line 561
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 563
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    aput v2, p1, v0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 564
    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$6;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 582
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private updateTrash(Z)V
    .locals 3

    .line 743
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    if-eq v0, p1, :cond_2

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 746
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 748
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    .line 749
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 761
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 763
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_2

    .line 765
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragTrash(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public deselect()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 592
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelect(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 773
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 774
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 775
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 777
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v2, 0x4c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 779
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 780
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPosition()Lorg/telegram/ui/Components/Point;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method protected getPositionX()F
    .locals 4

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 397
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 399
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 400
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

    .line 401
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    if-eqz v2, :cond_1

    .line 402
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

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 410
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 412
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    .line 413
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

    .line 414
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-eqz v2, :cond_1

    .line 415
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

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    return v0
.end method

.method protected getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 2

    .line 524
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hasPanned()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    return v0
.end method

.method public final hasStickyX()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    return v0
.end method

.method public final hasStickyY()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    return v0
.end method

.method public final hasTouchDown()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 528
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-interface {v0, p1, v3, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(Landroid/view/MotionEvent;FF)[F

    move-result-object v0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 260
    :cond_1
    aget v3, v0, v1

    aget v0, v0, v2

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FF)Z

    move-result v0

    goto :goto_1

    .line 267
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp()V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    :goto_0
    move v0, v2

    goto :goto_1

    .line 247
    :cond_3
    aget v3, v0, v1

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 248
    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    .line 250
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-eqz v0, :cond_5

    .line 253
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 255
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    .line 274
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 276
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    :goto_2
    return v1
.end method

.method public pan(FF)V
    .locals 9

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 315
    iget p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr p1, p2

    iput p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 317
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    if-eqz p2, :cond_0

    .line 318
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyX:F

    .line 320
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    if-eqz p2, :cond_1

    .line 321
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyY:F

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_e

    .line 326
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    const/4 v0, 0x3

    const/16 v1, 0xb0

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    if-nez p2, :cond_4

    .line 327
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    sub-float/2addr p2, v8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpg-float p2, p2, v8

    if-gtz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v8, v1

    int-to-float v1, v8

    cmpg-float p2, p2, v1

    if-gez p2, :cond_8

    .line 328
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    .line 330
    :try_start_0
    invoke-virtual {p0, v0, v7}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :catch_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p2, :cond_2

    .line 333
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 336
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    .line 337
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 340
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyX:F

    .line 341
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    new-array p2, v7, [F

    .line 342
    fill-array-data p2, :array_0

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyXAnimator([F)V

    goto :goto_0

    .line 345
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    sub-float/2addr p2, v8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float p2, p2, v8

    if-gtz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v8, v1

    int-to-float v1, v8

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_8

    .line 346
    :cond_5
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    .line 347
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p2, :cond_6

    .line 348
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 351
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_7

    .line 352
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 354
    :cond_7
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyXAnimation:Z

    new-array p2, v7, [F

    .line 355
    fill-array-data p2, :array_1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyXAnimator([F)V

    .line 359
    :cond_8
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    if-nez p2, :cond_b

    .line 360
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_e

    .line 361
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    .line 363
    :try_start_1
    invoke-virtual {p0, v0, v7}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    :catch_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p1, :cond_9

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 369
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    .line 370
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 372
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p1, p1, Lorg/telegram/ui/Components/Point;->y:F

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyY:F

    .line 373
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    new-array p1, v7, [F

    .line 374
    fill-array-data p1, :array_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyYAnimator([F)V

    goto :goto_1

    .line 377
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_e

    .line 378
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    .line 379
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p1, :cond_c

    .line 380
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 383
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_d

    .line 384
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 386
    :cond_d
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasFromStickyYAnimation:Z

    new-array p1, v7, [F

    .line 387
    fill-array-data p1, :array_3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyYAnimator([F)V

    .line 392
    :cond_e
    :goto_1
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

    .line 441
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    const-wide/16 v1, 0x96

    const/4 v3, 0x2

    if-nez v0, :cond_3

    .line 442
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

    .line 443
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 444
    iput v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    const/4 v0, 0x3

    .line 447
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 453
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-array v0, v3, [F

    .line 456
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    .line 457
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$4;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 477
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_6

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 479
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 482
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 483
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 486
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAnimatedAngle:F

    .line 487
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyToAngle:F

    new-array v0, v3, [F

    .line 489
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    .line 490
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$5;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    goto :goto_0

    .line 504
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    .line 505
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    goto :goto_0

    .line 507
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float p1, p1

    .line 511
    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 512
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyToAngle:F

    .line 513
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAnimatedAngle:F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    .line 515
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

    .line 435
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v0

    mul-float/2addr v0, p1

    const p1, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 436
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public select(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    .line 588
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelect(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    return-void
.end method

.method public setHasStickyX(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyX:Z

    return-void
.end method

.method public setHasStickyY(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyY:Z

    return-void
.end method

.method public setPosition(Lorg/telegram/ui/Components/Point;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method public setSelectionVisibility(Z)V
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 599
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected updatePosition()V
    .locals 3

    .line 422
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 423
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 424
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 425
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 426
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public updateSelectionView()V
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    :cond_0
    return-void
.end method
