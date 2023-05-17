.class Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
.super Ljava/lang/Object;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoProgressView"
.end annotation


# instance fields
.field private alphas:[F

.field private animAlphas:[F

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backgroundState:I

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private parent:Landroid/view/View;

.field private final playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

.field private final playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private previousBackgroundState:I

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private scale:F

.field private size:I

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/view/View;)V
    .locals 4

    .line 2302
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2282
    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    const/4 v2, 0x0

    .line 2283
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    .line 2284
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    .line 2285
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    .line 2286
    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    .line 2287
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    .line 2288
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 2289
    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    const/16 v1, 0x40

    .line 2291
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    const/4 v1, -0x2

    .line 2292
    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2293
    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    const/4 v2, 0x3

    new-array v3, v2, [F

    .line 2294
    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    new-array v3, v2, [F

    .line 2295
    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    .line 2296
    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    .line 2303
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7100()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2304
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7102(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    .line 2305
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7202(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2306
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7200()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2307
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7200()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2308
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7200()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2309
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7200()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2311
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    .line 2312
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->resetAlphas()V

    .line 2314
    new-instance p2, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v0, 0x1c

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v0, 0xc8

    .line 2315
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setDuration(I)V

    .line 2317
    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$5200(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->circle_big:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2318
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    return-void
.end method

.method static synthetic access$12000(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .locals 0

    .line 2280
    iget p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    return p0
.end method

.method static synthetic access$23300(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)[F
    .locals 0

    .line 2280
    iget-object p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    return-object p0
.end method

.method static synthetic access$25300(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .locals 0

    .line 2280
    iget p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    return p0
.end method

.method static synthetic access$30100(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .locals 0

    .line 2280
    iget p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    return p0
.end method

.method private calculateAlpha()F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 2441
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 2443
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_1

    .line 2445
    :cond_0
    aget v2, v2, v1

    :goto_1
    mul-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkVisibility()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2453
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2454
    aget v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 2459
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->visible:Z

    if-eq v0, v1, :cond_2

    .line 2460
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->visible:Z

    .line 2461
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onVisibilityChanged(Z)V

    :cond_2
    return-void
.end method

.method private updateAnimation(Z)V
    .locals 11

    .line 2322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2323
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    move-wide v2, v4

    .line 2327
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    const/4 v0, 0x0

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_6

    .line 2332
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_2

    .line 2333
    :cond_2
    :goto_0
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    const-wide/16 v7, 0x168

    mul-long/2addr v7, v2

    long-to-float v7, v7

    const v8, 0x453b8000    # 3000.0f

    div-float/2addr v7, v8

    add-float/2addr p1, v7

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    .line 2334
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    sub-float/2addr p1, v7

    .line 2335
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_4

    .line 2336
    iget-wide v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    add-long/2addr v7, v2

    iput-wide v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 2338
    iget p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    .line 2339
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    const-wide/16 v7, 0x0

    .line 2340
    iput-wide v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    goto :goto_1

    .line 2342
    :cond_3
    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7100()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v8

    iget-wide v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    long-to-float v9, v9

    const/high16 v10, 0x43960000    # 300.0f

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v8

    mul-float/2addr p1, v8

    add-float/2addr v7, p1

    iput v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    :cond_4
    :goto_1
    move p1, v5

    .line 2348
    :goto_2
    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    cmpl-float v8, v7, v6

    if-lez v8, :cond_7

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_7

    long-to-float p1, v2

    div-float/2addr p1, v1

    sub-float/2addr v7, p1

    .line 2349
    iput v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    cmpg-float p1, v7, v6

    if-gtz p1, :cond_5

    .line 2351
    iput v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    .line 2352
    iput v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    :cond_5
    move p1, v5

    goto :goto_3

    :cond_6
    move p1, v0

    .line 2358
    :cond_7
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    array-length v8, v7

    if-ge v0, v8, :cond_a

    .line 2359
    aget v8, v7, v0

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    aget v10, v9, v0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8

    .line 2360
    aget p1, v9, v0

    long-to-float v7, v2

    div-float/2addr v7, v1

    add-float/2addr p1, v7

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v9, v0

    :goto_4
    move p1, v5

    goto :goto_5

    .line 2362
    :cond_8
    aget v7, v7, v0

    aget v8, v9, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 2363
    aget p1, v9, v0

    long-to-float v7, v2

    div-float/2addr v7, v1

    sub-float/2addr p1, v7

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, v9, v0

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_b

    .line 2369
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_b
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 3

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getY()I
    .locals 3

    .line 2477
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7300(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 2478
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$7400(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2479
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x26

    .line 2480
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 2469
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->visible:Z

    return v0
.end method

.method protected onBackgroundStateUpdated(I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 2486
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2487
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->getX()I

    move-result v1

    .line 2488
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->getY()I

    move-result v2

    .line 2490
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->calculateAlpha()F

    move-result v3

    .line 2492
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/high16 v5, 0x437f0000    # 255.0f

    if-ltz v4, :cond_1

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_1

    .line 2494
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 2495
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    aget-object v4, v4, v6

    goto :goto_0

    .line 2497
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    :goto_0
    if-eqz v4, :cond_1

    .line 2500
    iget v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int v6, v1, v0

    add-int v7, v2, v0

    .line 2501
    invoke-virtual {v4, v1, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2502
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2506
    :cond_1
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    const/4 v6, -0x2

    if-ltz v4, :cond_4

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, 0x2

    if-ge v4, v7, :cond_4

    .line 2508
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 2509
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7500()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    aget-object v4, v4, v7

    goto :goto_1

    .line 2511
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playDrawable:Lorg/telegram/ui/Components/CombinedDrawable;

    :goto_1
    if-eqz v4, :cond_4

    .line 2514
    iget v7, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v7, v6, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2515
    iget v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v5

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    :cond_3
    mul-float v7, v3, v5

    float-to-int v7, v7

    .line 2517
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    add-int v7, v1, v0

    add-int v8, v2, v0

    .line 2519
    invoke-virtual {v4, v1, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2520
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2524
    :cond_4
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v7, :cond_6

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eqz v4, :cond_6

    if-ne v4, v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 2535
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->updateAnimation(Z)V

    goto :goto_5

    :cond_6
    :goto_3
    const/4 v4, 0x4

    .line 2525
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 2526
    iget v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v8, v6, :cond_7

    .line 2527
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7200()Landroid/graphics/Paint;

    move-result-object v6

    iget v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float/2addr v8, v5

    mul-float/2addr v8, v3

    float-to-int v3, v8

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    .line 2529
    :cond_7
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7200()Landroid/graphics/Paint;

    move-result-object v6

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2531
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int v6, v2, v4

    int-to-float v6, v6

    add-int/2addr v1, v0

    sub-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v2, v0

    sub-int/2addr v2, v4

    int-to-float v0, v2

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2532
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    add-float v10, v1, v0

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v12, 0x0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$7200()Landroid/graphics/Paint;

    move-result-object v13

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2533
    invoke-direct {p0, v7}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->updateAnimation(Z)V

    :goto_5
    return-void
.end method

.method protected onVisibilityChanged(Z)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public resetAlphas()V
    .locals 4

    const/4 v0, 0x0

    .line 2433
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2434
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2436
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->checkVisibility()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    .line 2414
    invoke-virtual {p0, v0, p1, v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setIndexedAlpha(IFZ)V

    return-void
.end method

.method public setBackgroundState(IZZ)V
    .locals 6

    .line 2386
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2389
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz p3, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    move p3, v3

    goto :goto_0

    :cond_2
    move p3, v5

    :goto_0
    if-ne p1, v4, :cond_3

    .line 2392
    invoke-virtual {v1, v5, p3}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    .line 2394
    invoke-virtual {v1, v3, p3}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 2396
    :cond_4
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setParent(Landroid/view/View;)V

    .line 2397
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2399
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    if-eqz p2, :cond_6

    .line 2400
    iget p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eq p2, p1, :cond_6

    .line 2401
    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2402
    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    goto :goto_2

    :cond_6
    const/4 p2, -0x2

    .line 2404
    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    .line 2406
    :goto_2
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onBackgroundStateUpdated(I)V

    .line 2407
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndexedAlpha(IFZ)V
    .locals 2

    .line 2422
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alphas:[F

    aget v1, v0, p1

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_1

    .line 2423
    aput p2, v0, p1

    if-nez p3, :cond_0

    .line 2425
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animAlphas:[F

    aput p2, p3, p1

    .line 2427
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->checkVisibility()V

    .line 2428
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setProgress(FZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 2375
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    .line 2376
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    goto :goto_0

    .line 2378
    :cond_0
    iget p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    .line 2380
    :goto_0
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    const-wide/16 p1, 0x0

    .line 2381
    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    .line 2382
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 2418
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    return-void
.end method
