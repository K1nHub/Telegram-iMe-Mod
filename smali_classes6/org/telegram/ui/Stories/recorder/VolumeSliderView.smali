.class public Lorg/telegram/ui/Stories/recorder/VolumeSliderView;
.super Landroid/view/View;
.source "VolumeSliderView.java"


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field private h:I

.field private lastTouchX:F

.field private maxVolume:F

.field private minVolume:F

.field private onValueChange:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private pressTime:J

.field private r:F

.field private final speaker1Paint:Landroid/graphics/Paint;

.field private final speaker1Path:Landroid/graphics/Path;

.field private final speaker2Paint:Landroid/graphics/Paint;

.field private final speaker2Path:Landroid/graphics/Path;

.field private final speakerWave1Paint:Landroid/graphics/Paint;

.field private final speakerWave1Path:Landroid/graphics/Path;

.field private final speakerWave2Paint:Landroid/graphics/Paint;

.field private final speakerWave2Path:Landroid/graphics/Path;

.field private final text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private final textPaint:Landroid/text/TextPaint;

.field private value:F

.field private valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private valueIsAnimated:Z

.field private w:I

.field private final wave1Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final wave2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v7, p0

    .line 50
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    iput v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->minVolume:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 35
    iput v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->maxVolume:F

    .line 38
    new-instance v8, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v8, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 41
    new-instance v8, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->whitePaint:Landroid/graphics/Paint;

    .line 42
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Paint:Landroid/graphics/Paint;

    .line 43
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Paint:Landroid/graphics/Paint;

    .line 44
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Paint:Landroid/graphics/Paint;

    .line 45
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    .line 47
    new-instance v15, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v0, 0x0

    invoke-direct {v15, v0, v10, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v15, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 87
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->clipPath:Landroid/graphics/Path;

    .line 88
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    .line 89
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Path:Landroid/graphics/Path;

    .line 90
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Path:Landroid/graphics/Path;

    .line 91
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Path:Landroid/graphics/Path;

    .line 93
    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v6

    move-object v10, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->wave1Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 94
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v10, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->wave2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 200
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xf

    .line 52
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string v0, "fonts/rmedium.ttf"

    .line 53
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x3e99999a    # 0.3f

    const-wide/16 v4, 0x28

    move-object v0, v15

    .line 54
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 55
    invoke-virtual {v15, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, -0x1

    .line 56
    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const-string v1, ""

    .line 57
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private updateText(F)V
    .locals 8

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    .line 193
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueIsAnimated:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x140

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x28

    :goto_0
    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 98
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->h:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->clipPath:Landroid/graphics/Path;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->r:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 106
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueIsAnimated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 108
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    int-to-float v7, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->h:I

    int-to-float v8, v1

    const/16 v9, 0xff

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v2, 0x2a

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->h:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->maxVolume:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->minVolume:F

    sub-float v5, v1, v2

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    sub-float/2addr v1, v2

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    goto :goto_1

    :cond_1
    move v2, v3

    .line 117
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->wave1Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    float-to-double v5, v2

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    cmpl-double v2, v5, v7

    const/4 v7, 0x0

    if-lez v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v2, 0x3ea8f5c3    # 0.33f

    .line 119
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v1

    mul-float/2addr v2, v9

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Paint:Landroid/graphics/Paint;

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->wave2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v5, v10

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v7

    :goto_3
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const v2, 0x3f28f5c3    # 0.66f

    .line 126
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    neg-float v2, v2

    sub-float/2addr v8, v1

    mul-float/2addr v2, v8

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 132
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    int-to-float v1, v1

    mul-float v6, v1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->h:I

    int-to-float v7, v0

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->whitePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 145
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->pressTime:J

    .line 152
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueIsAnimated:Z

    goto/16 :goto_3

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 154
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->maxVolume:F

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->minVolume:F

    sub-float v5, v2, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    sub-float/2addr v2, v4

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    goto :goto_0

    :cond_3
    move v4, v6

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->pressTime:J

    sub-long/2addr v7, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v9, p1

    cmp-long p1, v7, v9

    if-gez p1, :cond_4

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 158
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    int-to-float p1, p1

    div-float p1, v0, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    .line 159
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueIsAnimated:Z

    goto :goto_1

    .line 162
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->lastTouchX:F

    sub-float v2, v0, v2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    add-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v6}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    .line 163
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->valueIsAnimated:Z

    move v1, v3

    .line 165
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->maxVolume:F

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->minVolume:F

    sub-float v5, p1, v2

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_5

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    sub-float v6, p1, v2

    mul-float/2addr v5, v6

    add-float v6, v2, v5

    :cond_5
    if-eqz v1, :cond_9

    cmpg-float v1, v6, v2

    if-gtz v1, :cond_6

    cmpl-float v1, v4, v6

    if-gtz v1, :cond_7

    :cond_6
    cmpl-float p1, v6, p1

    if-ltz p1, :cond_8

    cmpg-float p1, v4, v6

    if-gez p1, :cond_8

    :cond_7
    const/4 p1, 0x3

    .line 169
    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_8
    const/high16 p1, 0x40a00000    # 5.0f

    mul-float/2addr v4, p1

    float-to-double v1, v4

    .line 172
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    mul-float/2addr p1, v6

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p1, v1, v4

    if-eqz p1, :cond_9

    const/16 p1, 0x9

    .line 174
    :try_start_1
    invoke-virtual {p0, p1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :catch_0
    :cond_9
    :goto_2
    invoke-direct {p0, v6}, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->updateText(F)V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->onValueChange:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_a

    .line 181
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 183
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 185
    :cond_b
    :goto_3
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->lastTouchX:F

    return v3
.end method

.method protected onMeasure(II)V
    .locals 7

    const p2, 0x40ca8f5c    # 6.33f

    .line 204
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->r:F

    .line 205
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 208
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->textPaint:Landroid/text/TextPaint;

    sget v0, Lorg/telegram/messenger/R$string;->StoryAudioRemove:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/16 v0, 0x58

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    const/16 p1, 0x30

    .line 209
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->h:I

    .line 210
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->w:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    const/16 p1, 0x19

    .line 212
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->h:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const v2, 0x3faa3d71    # 1.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    const v1, 0x410a8f5c    # 8.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, p1, v2

    const v3, 0x4039999a    # 2.9f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p2, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float v4, p1, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float v5, p2, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, p1, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, p1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker1Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const v2, 0x402a3d71    # 2.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Path:Landroid/graphics/Path;

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Path:Landroid/graphics/Path;

    const v1, 0x40ea8f5c    # 7.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, p2, v2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Path:Landroid/graphics/Path;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speaker2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 230
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, p1, v2

    const v3, 0x408a8f5c    # 4.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float v5, p1, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 231
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Path:Landroid/graphics/Path;

    const/high16 v3, -0x3d900000    # -60.0f

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 232
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave1Path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Paint:Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 237
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float v2, p1, v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p2, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    invoke-virtual {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->speakerWave2Path:Landroid/graphics/Path;

    const/high16 p2, -0x3d740000    # -70.0f

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-virtual {p1, v0, p2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/VolumeSliderView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;)",
            "Lorg/telegram/ui/Stories/recorder/VolumeSliderView;"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->onValueChange:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public setVolume(F)Lorg/telegram/ui/Stories/recorder/VolumeSliderView;
    .locals 3

    .line 77
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->minVolume:F

    sub-float v1, p1, v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->maxVolume:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->value:F

    .line 78
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->updateText(F)V

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/VolumeSliderView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

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
.end method
