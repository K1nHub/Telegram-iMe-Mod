.class public Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# instance fields
.field private angle:F

.field private fX:F

.field private fY:F

.field private mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

.field private sX:F

.field private sY:F

.field private startAngle:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    return-void
.end method

.method private angleBetweenLines(FFFFFFFF)F
    .locals 2

    sub-float/2addr p2, p4

    float-to-double v0, p2

    sub-float/2addr p1, p3

    float-to-double p1, p1

    .line 84
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p6, p8

    float-to-double p2, p6

    sub-float/2addr p5, p7

    float-to-double p4, p5

    .line 85
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    double-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 86
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x43b40000    # 360.0f

    rem-float/2addr p1, p2

    const/high16 p3, -0x3ccc0000    # -180.0f

    cmpg-float p3, p1, p3

    if-gez p3, :cond_0

    add-float/2addr p1, p2

    :cond_0
    const/high16 p3, 0x43340000    # 180.0f

    cmpl-float p3, p1, p3

    if-lez p3, :cond_1

    sub-float/2addr p1, p2

    :cond_1
    return p1
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .line 20
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angle:F

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .line 24
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    iput v4, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    if-eqz p1, :cond_6

    .line 75
    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;->onRotationEnd(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 48
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 49
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 50
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 52
    iget v5, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fX:F

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fY:F

    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sX:F

    iget v8, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sY:F

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angleBetweenLines(FFFFFFFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angle:F

    .line 54
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    if-eqz p1, :cond_6

    .line 55
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angle:F

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    .line 57
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;->onRotationBegin(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;->onRotation(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V

    goto :goto_0

    .line 67
    :cond_4
    iput v4, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    goto :goto_0

    .line 38
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sX:F

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sY:F

    .line 40
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fX:F

    .line 41
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fY:F

    :cond_6
    :goto_0
    return v3
.end method
