.class public Lorg/telegram/ui/Components/UnreadCounterTextView;
.super Landroid/view/View;
.source "UnreadCounterTextView.java"


# instance fields
.field animatedFromBottom:Z

.field private circleWidth:I

.field counterColor:I

.field private currentCounter:I

.field private currentCounterString:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconOut:Landroid/graphics/drawable/Drawable;

.field public isOnlyTextClickable:Z

.field lastText:Ljava/lang/CharSequence;

.field private layoutPaint:Landroid/text/TextPaint;

.field private layoutTextWidth:I

.field private paint:Landroid/graphics/Paint;

.field panelBackgroundColor:I

.field private rect:Landroid/graphics/RectF;

.field replaceAnimator:Landroid/animation/ValueAnimator;

.field replaceProgress:F

.field private rippleColor:I

.field selectableBackground:Landroid/graphics/drawable/Drawable;

.field textColor:I

.field textColorKey:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textLayoutOut:Landroid/text/StaticLayout;

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I


# direct methods
.method public static synthetic $r8$lambda$0CryFaT0z2wuYc7FcMnCfYrGpPo(Lorg/telegram/ui/Components/UnreadCounterTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UnreadCounterTextView;->lambda$setText$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textPaint:Landroid/text/TextPaint;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->paint:Landroid/graphics/Paint;

    .line 35
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rect:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 49
    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    .line 56
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textColorKey:I

    .line 60
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xd

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 61
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textPaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    const/16 v1, 0xf

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private synthetic lambda$setText$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 89
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 126
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method protected getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTopOffset()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isTouchFullWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 217
    iget-object v2, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textColorKey:I

    goto :goto_0

    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 219
    iget v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textColor:I

    if-eq v4, v3, :cond_1

    .line 220
    iget-object v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    iput v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textColor:I

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 222
    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 223
    iget v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->panelBackgroundColor:I

    if-eq v4, v3, :cond_2

    .line 224
    iget-object v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textPaint:Landroid/text/TextPaint;

    iput v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->panelBackgroundColor:I

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 226
    :cond_2
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_goDownButtonCounterBackground:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 227
    iget v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->counterColor:I

    if-eq v4, v3, :cond_3

    .line 228
    iget-object v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->paint:Landroid/graphics/Paint;

    iput v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->counterColor:I

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 234
    iget v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rippleColor:I

    iget v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textColorKey:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_5

    :cond_4
    const/16 v6, 0x3c

    .line 235
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textColorKey:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rippleColor:I

    const/16 v8, 0x1a

    invoke-static {v7, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-static {v6, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    .line 236
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 238
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v6, v5

    const/16 v7, 0x14

    if-gtz v6, :cond_6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int v6, v5, v6

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_1
    add-int/2addr v5, v3

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-le v5, v8, :cond_7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 240
    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v3

    .line 240
    invoke-virtual {v7, v6, v8, v5, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x6

    if-eqz v3, :cond_12

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 248
    iget v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayoutOut:Landroid/text/StaticLayout;

    if-eqz v3, :cond_f

    .line 249
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getAlpha()I

    move-result v3

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getTopOffset()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    :cond_9
    move v9, v4

    :goto_2
    int-to-float v9, v9

    iget-boolean v10, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->animatedFromBottom:Z

    if-eqz v10, :cond_a

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_3

    :cond_a
    move v10, v6

    :goto_3
    const/16 v12, 0x12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v10, v13

    iget v13, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    mul-float/2addr v10, v13

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_b

    .line 256
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    neg-int v10, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v10, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 257
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getHeight()I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v13, v14

    .line 258
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    neg-int v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 259
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getHeight()I

    move-result v15

    iget-object v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v15, v11

    div-int/lit8 v15, v15, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v15, v11

    .line 255
    invoke-virtual {v9, v10, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    int-to-float v10, v3

    iget v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    sub-float v11, v6, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 262
    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    :cond_b
    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    int-to-float v10, v3

    iget v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    sub-float v11, v6, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 265
    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v9, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x2

    iget v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/StaticLayout;->getHeight()I

    move-result v13

    sub-int/2addr v11, v13

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getTopOffset()F

    move-result v13

    add-float/2addr v11, v13

    invoke-virtual {v1, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v9, v7

    goto :goto_4

    :cond_c
    move v9, v4

    :goto_4
    int-to-float v7, v9

    iget-boolean v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->animatedFromBottom:Z

    if-eqz v9, :cond_d

    move v11, v6

    goto :goto_5

    :cond_d
    const/high16 v11, -0x40800000    # -1.0f

    :goto_5
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v11, v9

    iget v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    sub-float/2addr v6, v9

    mul-float/2addr v11, v6

    invoke-virtual {v1, v7, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 271
    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_e

    .line 273
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 274
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    iget-object v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v9, v11

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    .line 275
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    neg-int v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 276
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getHeight()I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v12, v8

    .line 272
    invoke-virtual {v6, v7, v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    iget v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    iget v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    mul-float/2addr v10, v7

    float-to-int v7, v10

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 282
    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 285
    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    goto/16 :goto_7

    .line 287
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    iget v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_6

    :cond_10
    move v6, v4

    :goto_6
    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->getTopOffset()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11

    .line 290
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    neg-int v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 291
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v7, v9

    .line 292
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    neg-int v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 293
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v10, v8

    .line 289
    invoke-virtual {v3, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xff

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 296
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 301
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 304
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->currentCounterString:Ljava/lang/String;

    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    .line 306
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget v2, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 308
    iget-object v2, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0xa

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v4, v5, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 309
    iget-object v2, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 310
    iget-object v2, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->currentCounterString:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x41680000    # 14.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 156
    iget-boolean v2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->isOnlyTextClickable:Z

    if-eqz v2, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/16 v2, 0x60

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UnreadCounterTextView;->isTouchFullWidth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    .line 164
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    if-lez v2, :cond_3

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    const/16 v2, 0x30

    .line 165
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 169
    iget-object v3, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rect:Landroid/graphics/RectF;

    int-to-float v4, v2

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v7, v0

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    add-int/2addr v2, v0

    int-to-float v0, v2

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    .line 169
    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    return v1

    .line 179
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCounter(I)V
    .locals 2

    .line 198
    iget v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->currentCounter:I

    if-eq v0, p1, :cond_2

    .line 199
    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->currentCounter:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->currentCounterString:Ljava/lang/String;

    .line 202
    iput v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->currentCounterString:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textWidth:I

    const/16 p1, 0x14

    .line 206
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textWidth:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 207
    iget v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    if-eq v0, p1, :cond_1

    .line 208
    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->circleWidth:I

    .line 211
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 9

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    .line 101
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    iget v4, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 8

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->lastText:Ljava/lang/CharSequence;

    if-ne v0, p1, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->lastText:Ljava/lang/CharSequence;

    .line 72
    iput-boolean p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->animatedFromBottom:Z

    .line 73
    iget-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayoutOut:Landroid/text/StaticLayout;

    .line 74
    iget-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    iget-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    const/4 p2, 0x0

    .line 77
    iput-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    .line 78
    new-instance p2, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayoutOut:Landroid/text/StaticLayout;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->iconOut:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 83
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceProgress:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 87
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceAnimator:Landroid/animation/ValueAnimator;

    .line 88
    new-instance p2, Lorg/telegram/ui/Components/UnreadCounterTextView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/UnreadCounterTextView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UnreadCounterTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->replaceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTextColorKey(I)V
    .locals 0

    .line 316
    iput p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textColorKey:I

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextInfo(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 9

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    .line 118
    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    .line 119
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    iget v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 120
    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextInfo(Ljava/lang/CharSequence;)V
    .locals 10

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    .line 109
    iput-object v1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->icon:Landroid/graphics/drawable/Drawable;

    .line 110
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->layoutTextWidth:I

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->textLayout:Landroid/text/StaticLayout;

    .line 111
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/UnreadCounterTextView;->selectableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_1

    .line 135
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 137
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
