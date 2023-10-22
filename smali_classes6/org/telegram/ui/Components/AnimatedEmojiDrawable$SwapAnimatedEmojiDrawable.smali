.class public Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedEmojiDrawable.java"

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedEmojiDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwapAnimatedEmojiDrawable"
.end annotation


# instance fields
.field private alpha:I

.field attached:Z

.field private cacheType:I

.field public center:Z

.field private changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private drawables:[Landroid/graphics/drawable/Drawable;

.field private invalidateParent:Z

.field private lastColor:Ljava/lang/Integer;

.field private overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private parentView:Landroid/view/View;

.field private secondParent:Landroid/view/View;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 929
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 937
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZI)V
    .locals 1

    const/4 v0, 0x7

    .line 933
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZII)V
    .locals 5

    .line 940
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 914
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    .line 917
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 918
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 919
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    .line 924
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    .line 941
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 942
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->size:I

    .line 943
    iput p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->cacheType:I

    .line 944
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidateParent:Z

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 4

    .line 1185
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1188
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    .line 1189
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    .line 1190
    aget-object v1, v1, v2

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1192
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v1, v0

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_2

    .line 1193
    aget-object v0, v1, v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_2
    return-void
.end method

.method public detach()V
    .locals 3

    .line 1172
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1175
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    .line 1176
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v1, v0

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_1

    .line 1177
    aget-object v0, v1, v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1179
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_2

    .line 1180
    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    .line 986
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 987
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v5, v3, v4

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    cmpg-float v5, v0, v1

    if-gez v5, :cond_2

    .line 988
    aget-object v3, v3, v4

    iget v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    int-to-float v5, v5

    sub-float v7, v1, v0

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 989
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v3, v4

    instance-of v5, v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_0

    .line 990
    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 991
    :cond_0
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    if-eqz v5, :cond_1

    .line 992
    aget-object v3, v3, v4

    .line 993
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    .line 994
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    .line 995
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 996
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 992
    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 999
    :cond_1
    aget-object v3, v3, v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 1001
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v4

    .line 1002
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 1003
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 999
    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1006
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1007
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1008
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1010
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_9

    .line 1011
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1012
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v3, v4

    instance-of v5, v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_5

    .line 1013
    aget-object v3, v3, v4

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1014
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    :cond_3
    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 1017
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1018
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1020
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 1021
    :cond_5
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->center:Z

    if-eqz v3, :cond_7

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 1023
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1024
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1026
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    .line 1027
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 1028
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 1029
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 1030
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 1026
    invoke-virtual {v0, v1, v3, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_7
    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    .line 1034
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1035
    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1037
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 1039
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v4

    .line 1040
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 1041
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 1037
    invoke-virtual {v0, v1, v3, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1044
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    iget v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1045
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1046
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1048
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 977
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1204
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->size:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1199
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->size:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public invalidate()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1223
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidateParent:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1226
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1229
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->secondParent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1230
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1232
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 953
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 955
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 957
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->access$200(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Lorg/telegram/messenger/ImageReceiver;)V

    .line 958
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    :cond_0
    return-void
.end method

.method public set(JIZ)V
    .locals 4

    .line 1061
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    .line 1065
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1066
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p4, v2

    if-eqz v3, :cond_2

    .line 1067
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz v3, :cond_1

    aget-object v3, p4, v2

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    .line 1068
    aget-object p4, p4, v2

    check-cast p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p4, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1070
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p4, v2

    .line 1072
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p4, v1

    aput-object v3, p4, v2

    .line 1073
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2, p3, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, p4, v1

    .line 1074
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p1, :cond_5

    .line 1075
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    goto :goto_0

    .line 1078
    :cond_3
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p4, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1079
    iget-boolean p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p4, :cond_4

    .line 1081
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 1083
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3, p3, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, v2, v1

    if-eqz p4, :cond_5

    .line 1085
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1088
    :cond_5
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    .line 1089
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1090
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 1091
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return-void
.end method

.method public set(JZ)V
    .locals 1

    .line 1057
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->cacheType:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JIZ)V

    return-void
.end method

.method public set(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 1145
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1146
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    .line 1147
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz v3, :cond_1

    aget-object v3, p2, v2

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    .line 1148
    aget-object p2, p2, v2

    check-cast p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p2, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1150
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, v2

    .line 1152
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p2, v1

    aput-object v3, p2, v2

    .line 1153
    aput-object p1, p2, v1

    goto :goto_0

    .line 1155
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1156
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p2, :cond_4

    .line 1158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 1160
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v2, v1

    if-eqz p2, :cond_5

    .line 1162
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1165
    :cond_5
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    .line 1166
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1167
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 1168
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Document;IZ)V
    .locals 6

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    .line 1103
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1104
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p3, v2

    if-eqz v3, :cond_2

    .line 1105
    aget-object v3, p3, v2

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    .line 1106
    aget-object p3, p3, v2

    check-cast p3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 1108
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p3, v2

    .line 1110
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, p3, v1

    aput-object v3, p3, v2

    if-eqz p1, :cond_3

    .line 1112
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2, p2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, p3, v1

    .line 1113
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p1, :cond_7

    .line 1114
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    goto :goto_1

    .line 1117
    :cond_3
    aput-object v0, p3, v1

    goto :goto_1

    .line 1120
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v3, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1121
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attached:Z

    if-eqz p3, :cond_5

    .line 1123
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_5
    if-eqz p1, :cond_6

    .line 1126
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3, p2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    aput-object p1, v2, v1

    goto :goto_0

    .line 1128
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->drawables:[Landroid/graphics/drawable/Drawable;

    aput-object v0, p1, v1

    :goto_0
    if-eqz p3, :cond_7

    .line 1131
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1134
    :cond_7
    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    .line 1135
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1136
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 1137
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->invalidate()V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 1

    .line 1095
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->cacheType:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1209
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->alpha:I

    return-void
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 2

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 970
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->lastColor:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 971
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->changeProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 949
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->parentView:Landroid/view/View;

    return-void
.end method

.method public setSecondParent(Landroid/view/View;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->secondParent:Landroid/view/View;

    return-void
.end method
