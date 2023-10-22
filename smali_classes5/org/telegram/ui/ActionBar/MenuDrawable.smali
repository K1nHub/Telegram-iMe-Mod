.class public Lorg/telegram/ui/ActionBar/MenuDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MenuDrawable.java"


# static fields
.field public static TYPE_DEFAULT:I = 0x0

.field public static TYPE_UDPATE_AVAILABLE:I = 0x1

.field public static TYPE_UDPATE_DOWNLOADING:I = 0x2


# instance fields
.field private alpha:I

.field private animatedDownloadProgress:F

.field private backColor:I

.field private backPaint:Landroid/graphics/Paint;

.field private currentAnimationTime:I

.field private currentRotation:F

.field private downloadProgress:F

.field private downloadProgressAnimationStart:F

.field private downloadProgressTime:F

.field private downloadRadOffset:F

.field private finalRotation:F

.field private iconColor:I

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isUpdateAppItem:Z

.field private lastFrameTime:J

.field private miniIcon:Z

.field private paint:Landroid/graphics/Paint;

.field private previousType:I

.field private rect:Landroid/graphics/RectF;

.field private reverseAngle:Z

.field private rotateToBack:Z

.field private roundCap:Z

.field private type:I

.field private typeAnimationProgress:F

.field private updateAppDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    sget v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 87
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    .line 57
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->rotateToBack:Z

    .line 58
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->rect:Landroid/graphics/RectF;

    const/16 v0, 0xff

    .line 80
    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const v2, 0x3fd47ae1    # 1.66f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    sget v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_DEFAULT:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    .line 93
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 94
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 144
    iget-wide v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    sub-long v8, v1, v3

    .line 145
    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    cmpl-float v10, v5, v6

    const/high16 v11, 0x43480000    # 200.0f

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v10, :cond_3

    const-wide/16 v13, 0x0

    cmp-long v3, v3, v13

    if-eqz v3, :cond_2

    .line 147
    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    int-to-long v3, v3

    add-long/2addr v3, v8

    long-to-int v3, v3

    iput v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_0

    .line 149
    iput v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    goto :goto_0

    :cond_0
    cmpg-float v4, v5, v6

    if-gez v4, :cond_1

    .line 152
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v4, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    mul-float/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    goto :goto_0

    .line 154
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v4, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v12, v3

    iput v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    .line 158
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 160
    :cond_3
    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    cmpg-float v4, v3, v12

    if-gez v4, :cond_5

    long-to-float v4, v8

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    .line 161
    iput v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    cmpl-float v3, v3, v12

    if-lez v3, :cond_4

    .line 163
    iput v12, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    .line 165
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 167
    :cond_5
    iput-wide v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v10, 0x2

    div-int/2addr v1, v10

    const/16 v13, 0x9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v14, 0x1

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->iconColor:I

    if-nez v1, :cond_6

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    :cond_6
    move v15, v1

    .line 177
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backColor:I

    if-nez v1, :cond_7

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    :cond_7
    move v6, v1

    .line 181
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    sget v2, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_DEFAULT:I

    const/4 v3, 0x7

    const/4 v5, 0x0

    if-ne v1, v2, :cond_9

    .line 182
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    if-eq v1, v2, :cond_8

    .line 183
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    sub-float v2, v12, v2

    mul-float/2addr v1, v2

    .line 184
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    goto :goto_1

    :cond_8
    move v2, v5

    move/from16 v16, v2

    goto :goto_2

    .line 187
    :cond_9
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    if-ne v1, v2, :cond_a

    .line 188
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    mul-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v2, v12, v2

    mul-float/2addr v1, v2

    .line 189
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    mul-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    goto :goto_1

    .line 191
    :cond_a
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v2, v12, v2

    mul-float/2addr v1, v2

    .line 192
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    :goto_1
    sub-float v3, v12, v3

    mul-float/2addr v2, v3

    move/from16 v16, v1

    .line 196
    :goto_2
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->isUpdateAppItem:Z

    const/high16 v17, 0x40200000    # 2.5f

    const/16 v18, 0x11

    if-eqz v1, :cond_b

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setColor(I)V

    move v10, v5

    move v11, v10

    move v13, v11

    move/from16 v19, v13

    move v5, v6

    move/from16 v6, v19

    goto/16 :goto_8

    .line 200
    :cond_b
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->rotateToBack:Z

    const/high16 v19, 0x40400000    # 3.0f

    const/16 v20, 0x5

    const/16 v21, 0x12

    const/high16 v22, 0x3f000000    # 0.5f

    const/high16 v23, 0x40000000    # 2.0f

    if-eqz v1, :cond_10

    .line 201
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    if-eqz v3, :cond_c

    const/16 v3, -0xb4

    goto :goto_3

    :cond_c
    const/16 v3, 0xb4

    :goto_3
    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 202
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->roundCap:Z

    if-eqz v1, :cond_d

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float v3, v3, v23

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v4, v12, v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    move v3, v1

    goto :goto_4

    :cond_d
    move v3, v5

    :goto_4
    const/4 v4, 0x0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v13, v5

    sub-float/2addr v1, v13

    sub-float/2addr v1, v2

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->roundCap:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float v2, v2, v23

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v5, v12, v5

    mul-float/2addr v2, v5

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    :goto_5
    sub-float v5, v1, v2

    const/4 v13, 0x0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move v2, v3

    move v3, v4

    move v4, v5

    const/4 v11, 0x0

    move v5, v13

    move v13, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v12, v2

    mul-float/2addr v1, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 206
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 207
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40f00000    # 7.5f

    .line 208
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    .line 209
    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->roundCap:Z

    if-eqz v5, :cond_f

    .line 210
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float v5, v5, v23

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v6, v12, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 211
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    .line 212
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float v6, v6, v23

    iget v10, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v10, v12, v10

    mul-float/2addr v6, v10

    add-float/2addr v5, v6

    sub-float/2addr v2, v5

    const/high16 v5, 0x3f400000    # 0.75f

    .line 213
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    const/high16 v5, 0x3e800000    # 0.25f

    .line 214
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    :cond_f
    move v6, v1

    move/from16 v19, v2

    move v10, v4

    move v5, v13

    move v13, v3

    goto/16 :goto_8

    :cond_10
    move v11, v5

    move v10, v6

    .line 217
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    if-eqz v3, :cond_11

    const/16 v3, -0xe1

    goto :goto_6

    :cond_11
    const/16 v3, 0x87

    :goto_6
    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v3, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 218
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->miniIcon:Z

    if-eqz v1, :cond_12

    .line 219
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v12, v3

    mul-float/2addr v1, v3

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    const/4 v4, 0x0

    const/high16 v13, 0x41800000    # 16.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v5, v12, v5

    mul-float/2addr v1, v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    sub-float v5, v1, v2

    const/4 v6, 0x0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 222
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v12, v3

    mul-float/2addr v2, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 223
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v12, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 224
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 225
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v13, v1

    move v6, v2

    move/from16 v19, v3

    goto/16 :goto_7

    .line 227
    :cond_12
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 228
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 229
    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v10, v3, v4, v12}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v10

    .line 230
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v15, v1, v4, v12}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 232
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v3, v1

    const/4 v4, 0x0

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    sub-float v5, v1, v2

    const/4 v6, 0x0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v23, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 233
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v12, v2

    mul-float/2addr v1, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 234
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 235
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 236
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    move v6, v1

    move/from16 v19, v2

    move v13, v3

    :goto_7
    move v5, v10

    move v10, v4

    .line 240
    :goto_8
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->isUpdateAppItem:Z

    if-nez v1, :cond_14

    .line 241
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->miniIcon:Z

    if-eqz v1, :cond_13

    neg-float v3, v13

    neg-float v4, v6

    .line 242
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move v2, v10

    move/from16 v20, v4

    move/from16 v4, v19

    move v11, v5

    move/from16 v5, v20

    move/from16 v20, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move v3, v13

    move/from16 v5, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_13
    move v11, v5

    move/from16 v20, v6

    neg-float v3, v13

    sub-float v4, v19, v16

    neg-float v5, v6

    .line 245
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move v2, v10

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    move v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_14
    move v11, v5

    .line 248
    :goto_9
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    sget v2, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_DEFAULT:I

    if-eq v1, v2, :cond_15

    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    cmpl-float v1, v1, v12

    if-nez v1, :cond_16

    :cond_15
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    if-eq v1, v2, :cond_20

    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_20

    .line 249
    :cond_16
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v10, v1

    const/high16 v1, 0x40900000    # 4.5f

    .line 250
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 252
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->isUpdateAppItem:Z

    if-eqz v2, :cond_17

    .line 253
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :cond_17
    move v13, v1

    .line 256
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x40b00000    # 5.5f

    mul-float/2addr v1, v2

    .line 257
    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    sub-float v3, v12, v2

    sub-float v2, v12, v2

    invoke-virtual {v7, v3, v2, v10, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 258
    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    sget v3, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_DEFAULT:I

    if-ne v2, v3, :cond_18

    .line 259
    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    sub-float v2, v12, v2

    mul-float/2addr v1, v2

    .line 261
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 263
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v13, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    sget v2, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_UDPATE_AVAILABLE:I

    if-eq v1, v2, :cond_19

    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    if-ne v1, v2, :cond_1b

    .line 265
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const v3, 0x3fd47ae1    # 1.66f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    sget v2, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_UDPATE_AVAILABLE:I

    if-ne v1, v2, :cond_1a

    .line 267
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    sub-float v3, v12, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a

    .line 269
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_a
    const/4 v1, 0x2

    .line 271
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    sub-float v3, v13, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v4, v10

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v13

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 274
    :cond_1b
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    sget v2, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_UDPATE_DOWNLOADING:I

    if-eq v1, v2, :cond_1c

    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    if-ne v1, v2, :cond_20

    .line 275
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    sget v2, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_UDPATE_DOWNLOADING:I

    if-ne v1, v2, :cond_1d

    .line 277
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    sub-float/2addr v12, v3

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_b

    .line 279
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_b
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x43b40000    # 360.0f

    .line 281
    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->animatedDownloadProgress:F

    mul-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 282
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v10, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v13, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v10, v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v13, v2

    invoke-virtual {v1, v3, v5, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 283
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadRadOffset:F

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 285
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadRadOffset:F

    const-wide/16 v2, 0x168

    mul-long/2addr v2, v8

    long-to-float v2, v2

    const v3, 0x451c4000    # 2500.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadRadOffset:F

    .line 286
    invoke-static {v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCircleValue(F)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadRadOffset:F

    .line 288
    iget v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgress:F

    iget v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressAnimationStart:F

    sub-float v3, v1, v2

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1f

    .line 290
    iget v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressTime:F

    long-to-float v6, v8

    add-float/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressTime:F

    const/high16 v6, 0x43480000    # 200.0f

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_1e

    .line 292
    iput v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->animatedDownloadProgress:F

    .line 293
    iput v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressAnimationStart:F

    .line 294
    iput v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressTime:F

    goto :goto_c

    .line 296
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->animatedDownloadProgress:F

    .line 299
    :cond_1f
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 302
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 304
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->isUpdateAppItem:Z

    if-eqz v1, :cond_21

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->updateAppDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_21

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 307
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->updateAppDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 308
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->updateAppDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/2addr v5, v4

    .line 309
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->updateAppDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v6, v1, v3

    sub-int v8, v2, v5

    add-int/2addr v1, v3

    add-int/2addr v2, v5

    invoke-virtual {v4, v6, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->updateAppDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v15, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 311
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;->updateAppDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_21
    return-void
.end method

.method public getCurrentRotation()F
    .locals 1

    .line 102
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x18

    .line 358
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x18

    .line 353
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
    .locals 1

    .line 333
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 334
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->alpha:I

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBackColor(I)V
    .locals 0

    .line 366
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->backColor:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIconColor(I)V
    .locals 0

    .line 362
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->iconColor:I

    return-void
.end method

.method public setMiniIcon(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->miniIcon:Z

    return-void
.end method

.method public setRotateToBack(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->rotateToBack:Z

    return-void
.end method

.method public setRotation(FZ)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    .line 107
    iget v2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 108
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 110
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->reverseAngle:Z

    .line 112
    :cond_1
    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    if-eqz p2, :cond_3

    cmpg-float p2, v2, p1

    const/high16 v0, 0x43480000    # 200.0f

    if-gez p2, :cond_2

    mul-float/2addr v2, v0

    float-to-int p2, v2

    .line 115
    iput p2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    goto :goto_1

    :cond_2
    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    float-to-int p2, v3

    .line 117
    iput p2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentAnimationTime:I

    .line 119
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->lastFrameTime:J

    .line 120
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    goto :goto_2

    .line 122
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->currentRotation:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->finalRotation:F

    .line 124
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRoundCap()V
    .locals 2

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->roundCap:Z

    return-void
.end method

.method public setType(IZ)V
    .locals 1

    .line 128
    iget v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    if-ne v0, p1, :cond_0

    return-void

    .line 131
    :cond_0
    iput v0, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->previousType:I

    .line 132
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->type:I

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 136
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->typeAnimationProgress:F

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setUpdateAppItem(Landroid/content/Context;Z)V
    .locals 0

    .line 41
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->isUpdateAppItem:Z

    if-eqz p2, :cond_0

    .line 42
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->updateAppDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setUpdateDownloadProgress(FZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 318
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->animatedDownloadProgress:F

    .line 319
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressAnimationStart:F

    goto :goto_0

    .line 321
    :cond_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->animatedDownloadProgress:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_1

    .line 322
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->animatedDownloadProgress:F

    .line 324
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->animatedDownloadProgress:F

    iput p2, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressAnimationStart:F

    .line 326
    :goto_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgress:F

    const/4 p1, 0x0

    .line 327
    iput p1, p0, Lorg/telegram/ui/ActionBar/MenuDrawable;->downloadProgressTime:F

    .line 328
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
