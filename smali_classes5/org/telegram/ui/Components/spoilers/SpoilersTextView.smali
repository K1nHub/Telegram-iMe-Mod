.class public Lorg/telegram/ui/Components/spoilers/SpoilersTextView;
.super Landroid/widget/TextView;
.source "SpoilersTextView.java"


# instance fields
.field private clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field private isSpoilersRevealed:Z

.field private path:Landroid/graphics/Path;

.field private spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private xRefPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$2jq_zmMBAai1yLniOJnh6uGqUv4(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$PVtmDFfYqRpKTaA9BrWmI3fq21s(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ci-9YSibjsepj7WoX9GM-esRL9g(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;ZLorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->lambda$new$2(ZLorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilersPool:Ljava/util/Stack;

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    .line 37
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;Z)V

    invoke-direct {p1, p0, v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    return-void
.end method

.method private invalidateSpoilers()V
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilersPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    .line 42
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->invalidateSpoilers()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 40
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2(ZLorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 4

    .line 38
    iget-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/spoilers/SpoilersTextView;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 46
    iget-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 47
    invoke-virtual {v0, p3, p4, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 55
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 82
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 83
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    int-to-float v8, v3

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 87
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 97
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRippleProgress()F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v8, v2

    const/4 v9, 0x0

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    iget-object v2, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 109
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 110
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_6

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 121
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->xRefPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 123
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 73
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->invalidateSpoilers()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->invalidateSpoilers()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->isSpoilersRevealed:Z

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
