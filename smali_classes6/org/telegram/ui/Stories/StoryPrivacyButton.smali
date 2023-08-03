.class public Lorg/telegram/ui/Stories/StoryPrivacyButton;
.super Landroid/view/View;
.source "StoryPrivacyButton.java"


# instance fields
.field private final arrowPaint:Landroid/graphics/Paint;

.field private final arrowPath:Landroid/graphics/Path;

.field private final backgroundPaint:[Landroid/graphics/Paint;

.field private bottomColor:I

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public draw:Z

.field private drawArrow:Z

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final icon:[Landroid/graphics/drawable/Drawable;

.field private iconResId:I

.field private final iconSize:[F

.field private topColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/graphics/Paint;

    .line 32
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    .line 33
    new-instance v8, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x104

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v8, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-array v1, p1, [Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    new-array p1, p1, [F

    .line 38
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    .line 44
    new-instance v2, Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;F)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 48
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 49
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v2, v0, v1

    .line 50
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 52
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, -0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private setIcon(IF)V
    .locals 5

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 116
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v4, v2, v1

    aput v4, v2, v3

    .line 117
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconResId:I

    if-eq p1, v2, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconResId:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v0, v1

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    aput p2, p1, v1

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setupGradient(II)V
    .locals 12

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    iget v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->topColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bottomColor:I

    if-eq v0, p2, :cond_1

    .line 128
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x17

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v8, v2

    const/4 v2, 0x2

    new-array v9, v2, [I

    iput p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->topColor:I

    aput p1, v9, v3

    iput p2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bottomColor:I

    aput p2, v9, v1

    new-array v10, v2, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getCenterX()F
    .locals 3

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    .line 144
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const v3, 0x41bd47ae    # 23.66f

    if-eqz v2, :cond_2

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 145
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    .line 146
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    div-float/2addr v7, v6

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    div-float/2addr v8, v6

    add-float/2addr v0, v8

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    .line 146
    invoke-virtual {v4, v5, v7, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3d99999a    # 0.075f

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    cmpl-float v1, v0, v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-lez v1, :cond_3

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v1, v1, v3

    const/16 v5, 0xff

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 160
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v3

    invoke-virtual {p1, v4, v1, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v1

    const/4 v7, 0x0

    if-gez v5, :cond_4

    .line 163
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v7

    const/high16 v8, 0x437f0000    # 255.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, v7

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v2, v0, v1

    .line 167
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v1

    .line 168
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    const v8, 0x416a8f5c    # 14.66f

    if-eqz v5, :cond_6

    cmpl-float v5, v0, v1

    if-lez v5, :cond_6

    .line 169
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v5, :cond_5

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v5, v9

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 170
    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v3

    iget-object v10, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v10, v10, v3

    div-float/2addr v10, v6

    mul-float/2addr v10, v2

    sub-float v10, v5, v10

    float-to-int v10, v10

    .line 172
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget-object v12, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v13, v12, v3

    div-float/2addr v13, v6

    mul-float/2addr v13, v2

    sub-float/2addr v11, v13

    float-to-int v11, v11

    aget v12, v12, v3

    div-float/2addr v12, v6

    mul-float/2addr v12, v2

    add-float/2addr v5, v12

    float-to-int v5, v5

    .line 174
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v13, v13, v3

    div-float/2addr v13, v6

    mul-float/2addr v13, v2

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 170
    invoke-virtual {v9, v10, v11, v5, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v5, v3

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    if-eqz v3, :cond_8

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 179
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v0, :cond_7

    iget v0, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 180
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v7

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v3, v3, v7

    div-float/2addr v3, v6

    mul-float/2addr v3, v2

    sub-float v3, v0, v3

    float-to-int v3, v3

    .line 182
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v9, v8, v7

    div-float/2addr v9, v6

    mul-float/2addr v9, v2

    sub-float/2addr v5, v9

    float-to-int v5, v5

    aget v8, v8, v7

    div-float/2addr v8, v6

    mul-float/2addr v8, v2

    add-float/2addr v0, v8

    float-to-int v0, v0

    .line 184
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->iconSize:[F

    aget v9, v9, v7

    div-float/2addr v9, v6

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v2, v8

    .line 180
    invoke-virtual {v1, v3, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->icon:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget v1, v4, Landroid/graphics/RectF;->right:F

    const v2, 0x417a8f5c    # 15.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const v3, 0x3faa3d71    # 1.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget v1, v4, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const v5, 0x40151eb8    # 2.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget v1, v4, Landroid/graphics/RectF;->right:F

    const v2, 0x41028f5c    # 8.16f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 197
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p1, 0x3c

    .line 208
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x28

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public set(ZLorg/telegram/tgnet/TLRPC$StoryItem;Z)Z
    .locals 4

    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 60
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    goto :goto_0

    .line 61
    :cond_0
    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    if-eqz v2, :cond_1

    .line 62
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_stories_closefriends:I

    const/high16 p2, 0x41700000    # 15.0f

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x7726c6

    const p2, -0xd249c5

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_0

    .line 65
    :cond_1
    iget-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->contacts:Z

    const v3, 0x418aa3d7    # 17.33f

    if-eqz v2, :cond_2

    .line 66
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_private:I

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x3b970e

    const p2, -0x69a306

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 68
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_0

    .line 69
    :cond_2
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->selected_contacts:Z

    if-eqz p2, :cond_3

    .line 70
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_groups:I

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const/16 p1, -0x48bd

    const p2, -0x971cc

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 74
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_channels:I

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0xe95a0e

    const p2, -0xee7f09

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_0

    .line 78
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    .line 80
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    return p1
.end method

.method public set(ZLorg/telegram/ui/Stories/StoriesController$UploadingStory;Z)Z
    .locals 3

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->drawArrow:Z

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 88
    iget-object p2, p2, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    if-nez p2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget p2, p2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    if-ne p2, v0, :cond_1

    .line 91
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_stories_closefriends:I

    const/high16 p2, 0x41700000    # 15.0f

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x7726c6

    const p2, -0xd249c5

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    const v2, 0x418aa3d7    # 17.33f

    if-ne p2, v0, :cond_2

    .line 95
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_private:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0x3b970e

    const p2, -0x69a306

    .line 96
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 99
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_groups:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const/16 p1, -0x48bd

    const p2, -0x971cc

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 101
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 103
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_channels:I

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setIcon(IF)V

    const p1, -0xe95a0e

    const p2, -0xee7f09

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryPrivacyButton;->setupGradient(II)V

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->crossfadeT:Lorg/telegram/ui/Components/AnimatedFloat;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    goto :goto_1

    .line 107
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    goto :goto_1

    .line 89
    :cond_5
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    .line 109
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 111
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->draw:Z

    return p1
.end method

.method public setPressed(Z)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryPrivacyButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method
