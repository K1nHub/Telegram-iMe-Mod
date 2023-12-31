.class public Lorg/telegram/ui/Components/SendingFileDrawable;
.super Lorg/telegram/ui/Components/StatusDrawable;
.source "SendingFileDrawable.java"


# instance fields
.field currentPaint:Landroid/graphics/Paint;

.field private isChat:Z

.field private lastUpdateTime:J

.field private progress:F

.field private started:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 27
    invoke-direct {p0}, Lorg/telegram/ui/Components/StatusDrawable;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    .line 22
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentPaint:Landroid/graphics/Paint;

    .line 30
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 32
    iget-object p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentPaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 5

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 50
    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    const-wide/16 v0, 0x32

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v2, v0

    .line 54
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    long-to-float v1, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    .line 55
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    sub-float/2addr v0, v1

    .line 56
    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v7, v1, :cond_7

    const/high16 v2, 0x437f0000    # 255.0f

    if-nez v7, :cond_1

    .line 76
    iget v3, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v7, v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 78
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_2
    const/16 v2, 0xff

    .line 80
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    const/4 v2, 0x5

    .line 82
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v3, v7

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->progress:F

    mul-float/2addr v2, v4

    add-float v8, v3, v2

    .line 83
    iget-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    const/4 v9, 0x4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v9

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v8, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    const/4 v10, 0x7

    const/16 v11, 0x8

    if-eqz v1, :cond_4

    move v1, v10

    goto :goto_3

    :cond_4
    move v1, v11

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    move v2, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    goto :goto_4

    :cond_5
    const/16 v1, 0xc

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v8, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move v10, v11

    :goto_5
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    move v2, v8

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 87
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    if-eqz p1, :cond_8

    .line 88
    invoke-direct {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->update()V

    :cond_8
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0xe

    .line 114
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x12

    .line 109
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIsChat(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    .line 64
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    return-void
.end method
