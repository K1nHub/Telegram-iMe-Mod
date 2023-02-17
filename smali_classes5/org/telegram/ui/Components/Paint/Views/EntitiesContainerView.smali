.class public Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;
.super Landroid/widget/FrameLayout;
.source "EntitiesContainerView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

.field private gestureDetector:Landroid/view/ScaleGestureDetector;

.field private hasTransformed:Z

.field private previousAngle:F

.field private previousScale:F

.field private rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    .line 27
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->gestureDetector:Landroid/view/ScaleGestureDetector;

    .line 28
    new-instance p1, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;-><init>(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    .line 29
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    return-void
.end method


# virtual methods
.method public entitiesCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 36
    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/EntityView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 120
    instance-of v0, p1, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p5, p3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 123
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->shouldReceiveTouches()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRotation(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->getAngle()F

    move-result p1

    .line 108
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    sub-float/2addr v1, p1

    .line 109
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    .line 110
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    return-void
.end method

.method public onRotationBegin(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 0

    .line 100
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->getStartAngle()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousAngle:F

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    return-void
.end method

.method public onRotationEnd(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    div-float v0, p1, v0

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 81
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->previousScale:F

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onSelectedEntityRequest()Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 61
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->hasTransformed:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;

    if-eqz p1, :cond_3

    .line 62
    invoke-interface {p1}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;->onEntityDeselect()V

    :cond_3
    return v1

    .line 68
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->gestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->rotationGestureDetector:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2
.end method
