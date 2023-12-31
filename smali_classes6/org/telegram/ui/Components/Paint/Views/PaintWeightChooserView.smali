.class public Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;
.super Landroid/view/View;
.source "PaintWeightChooserView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;
    }
.end annotation


# instance fields
.field private animatedMax:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animatedMin:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animatedWeight:Lorg/telegram/ui/Components/AnimatedFloat;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private colorPaint:Landroid/graphics/Paint;

.field private colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

.field private drawCenter:Z

.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private hideProgress:F

.field private isPanTransitionInProgress:Z

.field private isTouchInProgress:Z

.field private isViewHidden:Z

.field private lastUpdate:J

.field private max:F

.field private min:F

.field private onUpdate:Ljava/lang/Runnable;

.field private path:Landroid/graphics/Path;

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private showPreview:Z

.field private showProgress:F

.field private touchRect:Landroid/graphics/RectF;

.field private valueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->backgroundPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->touchRect:Landroid/graphics/RectF;

    .line 43
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showPreview:Z

    .line 45
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->animatedWeight:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 46
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->animatedMin:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 47
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->animatedMax:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 51
    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3c896918

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 53
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->drawCenter:Z

    .line 65
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    new-instance v3, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)V

    invoke-direct {v0, p1, v3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x50000000

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->backgroundPaint:Landroid/graphics/Paint;

    const v0, 0x40ffffff    # 7.9999995f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x26000000

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)Landroid/graphics/RectF;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->touchRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isTouchInProgress:Z

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isTouchInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->valueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)F
    .locals 0

    .line 28
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->max:F

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)F
    .locals 0

    .line 28
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->min:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)Lorg/telegram/ui/Components/AnimatedFloat;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->animatedWeight:Lorg/telegram/ui/Components/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->onUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method private drawCircleWithShadow(Landroid/graphics/Canvas;FFFZ)V
    .locals 6

    if-eqz p5, :cond_0

    .line 279
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v1, p2, p4

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float v3, p3, p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    add-float v4, p2, p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float v5, p3, p4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x437f0000    # 255.0f

    .line 280
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz p5, :cond_1

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 203
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->lastUpdate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->lastUpdate:J

    .line 208
    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->animatedWeight:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->valueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;->get()F

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    iget-object v2, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->animatedMin:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->min:F

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->animatedMax:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->max:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    .line 210
    iget-boolean v4, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isViewHidden:Z

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    iget v11, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->hideProgress:F

    cmpl-float v12, v11, v9

    if-eqz v12, :cond_1

    long-to-float v4, v0

    div-float/2addr v4, v5

    add-float/2addr v11, v4

    .line 211
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->hideProgress:F

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 213
    iget v4, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->hideProgress:F

    cmpl-float v11, v4, v10

    if-eqz v11, :cond_2

    long-to-float v11, v0

    div-float/2addr v11, v5

    sub-float/2addr v4, v11

    .line 214
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->hideProgress:F

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 218
    :cond_2
    :goto_1
    iget-boolean v4, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isTouchInProgress:Z

    if-eqz v4, :cond_3

    iget v11, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    cmpl-float v12, v11, v9

    if-eqz v12, :cond_3

    long-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr v11, v0

    .line 219
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    .line 221
    iget v4, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    cmpl-float v11, v4, v10

    if-eqz v11, :cond_4

    long-to-float v0, v0

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    .line 222
    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 226
    :cond_4
    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->touchRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/16 v1, 0x10

    .line 227
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v4, 0x3

    .line 228
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 229
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 231
    iget-object v11, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    .line 232
    iget-object v11, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    invoke-virtual {v11, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    neg-int v12, v4

    neg-int v13, v1

    iget v14, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v12, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v14

    int-to-float v14, v14

    iget v15, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v4, v1, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v15

    int-to-float v15, v15

    iget v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v4, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v11, v14, v10, v15, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    iget-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    const/high16 v14, -0x3d4c0000    # -90.0f

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v9, v11, v14, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 235
    iget-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    iget v14, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v4, v5, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v9, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    neg-int v9, v5

    .line 236
    iget v14, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v12, v9, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v9

    int-to-float v9, v9

    mul-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    sub-float v14, v0, v14

    iget v15, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v4, v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v11, v9, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 237
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v0, v11, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 239
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    iget v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v12, v13, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v9

    int-to-float v9, v9

    int-to-float v14, v1

    invoke-virtual {v0, v9, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    iget v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v12, v13, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    iget v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v4, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v11, v0, v10, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v0, v11, v1, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 243
    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 245
    iget v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->hideProgress:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_5

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11, v10, v10, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x437f0000    # 255.0f

    .line 247
    iget v1, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->hideProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v9, v4, v1

    mul-float/2addr v9, v0

    float-to-int v0, v9

    const/16 v1, 0x1f

    invoke-virtual {v7, v11, v0, v1}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 250
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v0, 0x20

    .line 251
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v1, v9

    iget-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->touchRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->path:Landroid/graphics/Path;

    iget-object v9, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 257
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v4, v0, v1

    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->touchRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 259
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v9, v8, v2

    sub-float/2addr v3, v2

    div-float/2addr v9, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v9

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->touchRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v14

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v5

    .line 261
    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v0, v5

    .line 258
    invoke-static {v1, v2, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    const/16 v0, 0xc

    .line 263
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v14, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v2, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v9

    move v5, v11

    .line 255
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->drawCircleWithShadow(Landroid/graphics/Canvas;FFFZ)V

    .line 267
    iget-boolean v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->drawCenter:Z

    if-eqz v0, :cond_6

    iget v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showProgress:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_6

    iget-boolean v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showPreview:Z

    if-eqz v0, :cond_6

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    iget-object v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Paint/RenderView;->brushWeightForSize(F)F

    move-result v0

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Brush;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Brush;->getPreviewScale()F

    move-result v1

    mul-float v4, v0, v1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 269
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->drawCircleWithShadow(Landroid/graphics/Canvas;FFFZ)V

    .line 272
    :cond_6
    iget v0, v6, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->hideProgress:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_7

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 190
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isPanTransitionInProgress:Z

    if-nez p1, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 192
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->touchRect:Landroid/graphics/RectF;

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    sub-int/2addr p4, p1

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, v0

    invoke-virtual {p2, p3, p4, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isTouchInProgress:Z

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return v0
.end method

.method public setColorSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->colorSwatch:Lorg/telegram/ui/Components/Paint/Swatch;

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawCenter(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->drawCenter:Z

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinMax(FF)V
    .locals 0

    .line 166
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->min:F

    .line 167
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->max:F

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnUpdate(Ljava/lang/Runnable;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->onUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method public setRenderView(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-void
.end method

.method public setShowPreview(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->showPreview:Z

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setValueOverride(Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->valueOverride:Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView$ValueOverride;

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewHidden(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isViewHidden:Z

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stopPanTransition()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PaintWeightChooserView;->isPanTransitionInProgress:Z

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
