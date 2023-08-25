.class public Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;
.super Ljava/lang/Object;
.source "StarParticlesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Particle"
.end annotation


# instance fields
.field private alpha:I

.field private drawingX:F

.field private drawingY:F

.field inProgress:F

.field public lifeTime:J

.field private randomRotate:F

.field private starIndex:I

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field private vecX:F

.field private vecY:F

.field private x:F

.field private x2:F

.field private y:F

.field private y2:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;)F
    .locals 0

    .line 381
    iget p0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;)F
    .locals 0

    .line 381
    iget p0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JF)V
    .locals 10

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 411
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    if-nez v1, :cond_0

    .line 412
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points1:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    mul-int/lit8 v4, v3, 0x2

    aget v4, v1, v4

    iput v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    .line 413
    aget v1, v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    add-int/2addr v3, v2

    .line 414
    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 416
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points2:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    mul-int/lit8 v4, v3, 0x2

    aget v4, v1, v4

    iput v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    .line 417
    aget v1, v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    add-int/2addr v3, v2

    .line 418
    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 420
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points3:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    mul-int/lit8 v4, v3, 0x2

    aget v4, v1, v4

    iput v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    .line 421
    aget v1, v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    add-int/2addr v3, v2

    .line 422
    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    goto :goto_0

    .line 425
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    .line 426
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 429
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    iget v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez v1, :cond_a

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 434
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingX:F

    iget v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->drawingY:F

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 435
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->randomRotate:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_5

    .line 436
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$200(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v6}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$200(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p1, v1, v4, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 438
    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    cmpg-float v4, v1, v0

    if-ltz v4, :cond_6

    sget v4, Lorg/telegram/ui/GLIconSettingsView;->smallStarsSize:F

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_7

    .line 439
    :cond_6
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v1

    sget v4, Lorg/telegram/ui/GLIconSettingsView;->smallStarsSize:F

    mul-float/2addr v1, v4

    .line 440
    invoke-virtual {p1, v1, v1, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 443
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkTime:Z

    if-eqz v1, :cond_8

    iget-wide v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    sub-long v6, v4, p2

    const-wide/16 v8, 0xc8

    cmp-long v1, v6, v8

    if-gez v1, :cond_8

    sub-long/2addr v4, p2

    long-to-float p2, v4

    const/high16 p3, 0x43160000    # 150.0f

    div-float/2addr p2, p3

    sub-float p2, v0, p2

    .line 445
    invoke-static {p2, v0, v3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    .line 447
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p3, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->overridePaint:Landroid/graphics/Paint;

    if-eqz p3, :cond_9

    goto :goto_1

    :cond_9
    iget-object p3, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paint:Landroid/graphics/Paint;

    .line 448
    :goto_1
    iget p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->alpha:I

    int-to-float p2, p2

    sub-float v1, v0, v3

    mul-float/2addr p2, v1

    mul-float/2addr p2, p4

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 449
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$200(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object p2

    iget p4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object p2, p2, p4

    iget-object p4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {p4}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$200(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object p4

    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object p4, p4, v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    shr-int/2addr p4, v2

    neg-int p4, p4

    int-to-float p4, p4

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$200(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    shr-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, p4, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 452
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    if-nez p1, :cond_b

    const/4 p1, 0x4

    .line 453
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)F

    move-result p2

    const/high16 p3, 0x44250000    # 660.0f

    div-float/2addr p2, p3

    mul-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget p3, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    mul-float/2addr p1, p3

    .line 454
    iget p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iget p4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecX:F

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    .line 455
    iget p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iget p4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecY:F

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    .line 457
    iget p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    cmpl-float p3, p1, v0

    if-eqz p3, :cond_b

    .line 458
    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$300(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)F

    move-result p2

    const/high16 p3, 0x43480000    # 200.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 460
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    :cond_b
    return-void
.end method

.method public genPosition(J)V
    .locals 10

    .line 467
    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->access$200(Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;)[Landroid/graphics/Bitmap;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-wide v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    add-long/2addr p1, v1

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->randLifeTime:I

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->lifeTime:J

    const/4 p1, 0x0

    .line 469
    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->randomRotate:F

    .line 471
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v0, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->distributionAlgorithm:Z

    if-eqz v0, :cond_5

    .line 473
    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, v0

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    rem-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_4

    .line 476
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v4, v4, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sget-object v5, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v6, v6, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    rem-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    .line 477
    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v5, v5, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sget-object v6, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    rem-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x4f000000

    move v7, v1

    .line 479
    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 482
    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean v9, v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->startFromCenter:Z

    if-eqz v9, :cond_0

    .line 483
    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v8, v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x2:F

    sub-float/2addr v8, v4

    .line 484
    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v9, v9, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v9, v9, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y2:F

    goto :goto_2

    .line 486
    :cond_0
    iget-object v8, v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v8, v8, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    sub-float/2addr v8, v4

    .line 487
    iget-object v9, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v9, v9, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->particles:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;

    iget v9, v9, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    :goto_2
    sub-float/2addr v9, v5

    mul-float/2addr v8, v8

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    cmpg-float v9, v8, v6

    if-gez v9, :cond_1

    move v6, v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    cmpl-float v7, v6, v3

    if-lez v7, :cond_3

    move p2, v4

    move v0, v5

    move v3, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 501
    :cond_4
    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    .line 502
    iput v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    goto/16 :goto_3

    .line 504
    :cond_5
    iget-boolean v0, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    if-eqz v0, :cond_6

    .line 505
    sget-object p2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    rem-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRadius:F

    sub-float/2addr v0, v1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    .line 506
    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    double-to-float p2, v6

    add-float/2addr v1, p2

    iput v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    .line 508
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    goto :goto_3

    .line 510
    :cond_6
    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    .line 511
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    .line 515
    :goto_3
    iget p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-double v0, p2

    iget p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr p2, v2

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 516
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p2, v2

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecX:F

    .line 517
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->vecY:F

    .line 518
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->svg:Z

    const/high16 v0, 0x42c80000    # 100.0f

    const/16 v1, 0x32

    if-eqz p2, :cond_7

    const/high16 p2, 0x42f00000    # 120.0f

    .line 519
    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->alpha:I

    goto :goto_4

    :cond_7
    const/high16 p2, 0x437f0000    # 255.0f

    .line 521
    sget-object v2, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->alpha:I

    .line 523
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    :cond_8
    const/16 v1, 0x9

    if-eq p2, v1, :cond_9

    const/4 v1, 0x3

    if-eq p2, v1, :cond_9

    const/4 v1, 0x7

    if-eq p2, v1, :cond_9

    const/16 v1, 0xb

    if-eq p2, v1, :cond_9

    const/4 v1, 0x4

    if-ne p2, v1, :cond_a

    :cond_9
    const/high16 p2, 0x42340000    # 45.0f

    .line 530
    sget-object v1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    div-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->randomRotate:F

    .line 532
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget v0, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_b

    .line 533
    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->inProgress:F

    .line 535
    :cond_b
    iget-boolean p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->startFromCenter:Z

    if-eqz p1, :cond_c

    .line 536
    iget p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x2:F

    .line 537
    iget p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y2:F

    .line 538
    iget-object p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    :cond_c
    return-void
.end method

.method public updatePoint()V
    .locals 6

    .line 394
    iget v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->starIndex:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points1:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    aput v5, v2, v4

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 396
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    aput v5, v2, v4

    add-int/2addr v3, v1

    .line 397
    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount1:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points2:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    aput v5, v2, v4

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 400
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    aput v5, v2, v4

    add-int/2addr v3, v1

    .line 401
    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount2:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->this$0:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->points3:[F

    iget v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->x:F

    aput v5, v2, v4

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 404
    iget v5, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable$Particle;->y:F

    aput v5, v2, v4

    add-int/2addr v3, v1

    .line 405
    iput v3, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->pointsCount3:I

    :cond_2
    :goto_0
    return-void
.end method
