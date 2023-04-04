.class public Lorg/telegram/ui/Components/TransformableLoginButtonView;
.super Landroid/view/View;
.source "TransformableLoginButtonView.java"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private buttonText:Ljava/lang/String;

.field private buttonWidth:F

.field private drawBackground:Z

.field private outlinePaint:Landroid/graphics/Paint;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private rippleDrawable:Landroid/graphics/drawable/Drawable;

.field private textPaint:Landroid/text/TextPaint;

.field private transformType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->backgroundPaint:Landroid/graphics/Paint;

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    .line 51
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->drawBackground:Z

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->transformType:I

    .line 56
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rect:Landroid/graphics/RectF;

    .line 61
    iget-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->backgroundPaint:Landroid/graphics/Paint;

    const-string v0, "chats_actionBackground"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 3

    .line 195
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 197
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 187
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 106
    iget-boolean v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->drawBackground:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 107
    iget v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->transformType:I

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v6, 0x41d00000    # 26.0f

    if-eqz v1, :cond_1

    .line 108
    iget v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 109
    iget-object v5, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v4, v4, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v5, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v1, v1, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 114
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->transformType:I

    sget v5, Lcom/iMe/common/IdFabric$CustomType;->TRANSFORMABLE_LOGIN_BUTTON_SEARCH:I

    const/4 v6, 0x2

    if-ne v1, v5, :cond_3

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_search_contact_30:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/2addr v3, v6

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/2addr v4, v6

    add-int v5, v3, v2

    add-int/2addr v2, v4

    .line 119
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "chats_actionIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 121
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_3
    const/high16 v9, 0x41100000    # 9.0f

    const/high16 v5, 0x41a80000    # 21.0f

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    goto/16 :goto_2

    .line 147
    :cond_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v13, v2

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v2, v12

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    mul-float/2addr v2, v3

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 153
    iget v3, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    mul-float/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v12

    invoke-virtual {v7, v3, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-float v2, v13, v1

    .line 155
    iget v3, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v14

    move v4, v13

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 157
    iget v2, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    .line 158
    iget v3, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    float-to-double v5, v13

    int-to-double v1, v1

    .line 160
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    sub-double v3, v5, v3

    double-to-float v4, v3

    move v12, v9

    float-to-double v8, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v1, v15

    add-double/2addr v1, v8

    double-to-float v3, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v15, v2

    move v2, v13

    move/from16 v16, v3

    move v3, v14

    move-wide/from16 v17, v5

    move/from16 v5, v16

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-double v1, v12

    .line 161
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    sub-double v5, v17, v3

    double-to-float v4, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    sub-double/2addr v8, v1

    double-to-float v5, v8

    iget-object v6, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 125
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->textPaint:Landroid/text/TextPaint;

    const v3, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_6

    iget-object v8, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->buttonText:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 126
    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 127
    iget-object v8, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->textPaint:Landroid/text/TextPaint;

    int-to-float v13, v1

    iget v14, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    div-float/2addr v14, v3

    sub-float/2addr v2, v14

    mul-float/2addr v13, v2

    float-to-int v2, v13

    invoke-virtual {v8, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 128
    iget-object v2, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->buttonText:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v13, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->buttonWidth:F

    sub-float/2addr v8, v13

    div-float/2addr v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    iget-object v14, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v14}, Landroid/text/TextPaint;->getTextSize()F

    move-result v14

    div-float/2addr v14, v12

    add-float/2addr v13, v14

    const/high16 v14, 0x3fe00000    # 1.75f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v8, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    iget-object v2, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 132
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v1, v2

    div-float v8, v1, v3

    cmpl-float v1, v8, v4

    if-eqz v1, :cond_7

    .line 134
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/2addr v3, v6

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float v13, v1, v2

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v12, v1, v12

    .line 136
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    move v4, v13

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-double v2, v13

    .line 139
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v8, v1

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-float v14, v2

    .line 140
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v8

    double-to-float v8, v1

    sub-float v5, v12, v8

    .line 142
    iget-object v6, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    move v3, v12

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v5, v12, v8

    .line 143
    iget-object v6, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    :cond_7
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_8

    .line 170
    iget-object v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 172
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setButtonText(Landroid/text/TextPaint;Ljava/lang/String;)V
    .locals 2

    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->textPaint:Landroid/text/TextPaint;

    .line 94
    iput-object p2, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->buttonText:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->buttonWidth:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->drawBackground:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->progress:F

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRippleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTransformType(I)V
    .locals 0

    .line 78
    iput p1, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->transformType:I

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/TransformableLoginButtonView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
