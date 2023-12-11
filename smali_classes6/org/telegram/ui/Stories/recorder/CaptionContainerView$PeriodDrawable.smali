.class public Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CaptionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeriodDrawable"
.end annotation


# instance fields
.field private final fillPaint:Landroid/graphics/Paint;

.field private final fillT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private filled:Z

.field private final strokePaint:Landroid/graphics/Paint;

.field public final textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1038
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1026
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 1027
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 1028
    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v3}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable$1;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;ZZZ)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 1035
    iput-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->filled:Z

    .line 1036
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;)V

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x15e

    move-object v4, v1

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->fillT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1039
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x3fd47ae1    # 1.66f

    .line 1040
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1041
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v4, 0x3e99999a    # 0.3f

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xfa

    move-object v3, v2

    move-object v9, v11

    .line 1043
    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const-string v0, "fonts/num.otf"

    .line 1044
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 1045
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const/16 v0, 0x11

    .line 1046
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    const/4 v0, -0x1

    const v1, -0xe56301

    .line 1048
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->updateColors(II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1059
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    .line 1060
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a80000    # 21.0f

    .line 1062
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 1063
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->fillT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->filled:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    const/high16 v6, 0x437f0000    # 255.0f

    if-lez v5, :cond_0

    .line 1066
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->fillPaint:Landroid/graphics/Paint;

    mul-float v7, v3, v6

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const v5, 0x413547ae    # 11.33f

    .line 1067
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    mul-float/2addr v5, v3

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1070
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->strokePaint:Landroid/graphics/Paint;

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v3

    mul-float/2addr v7, v6

    float-to-int v3, v7

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1071
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v3, v0, v2

    sub-float v5, v1, v2

    add-float v6, v0, v2

    add-float/2addr v2, v1

    invoke-virtual {v7, v3, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v10, 0x0

    .line 1072
    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->strokePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const v2, 0x419a4925

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v3, v5, :cond_1

    .line 1081
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v5, 0x43870000    # 270.0f

    add-float v8, v2, v5

    const v9, 0x414db6dc

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->strokePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const v5, 0x4200924a

    add-float/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1085
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, -0x40800000    # -1.0f

    .line 1086
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1087
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    const/16 v3, 0x14

    .line 1088
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    .line 1089
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    float-to-int v5, v5

    .line 1090
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 1091
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1087
    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1095
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x18

    .line 1114
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x18

    .line 1119
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setValue(IZZ)V
    .locals 3

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 1100
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->filled:Z

    if-nez p3, :cond_0

    .line 1102
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->fillT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 1104
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public updateColors(II)V
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1053
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 1054
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
