.class public Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundVideoPlayingDrawable.java"


# instance fields
.field alpha:I

.field public colorProgress:F

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private parentView:Landroid/view/View;

.field private progress1:F

.field private progress1Direction:I

.field private progress2:F

.field private progress2Direction:I

.field private progress3:F

.field private progress3Direction:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private started:Z

.field public timeColor:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    const v0, 0x3ef0a3d7    # 0.47f

    .line 28
    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    const v0, 0x3ea3d70a    # 0.32f

    .line 30
    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    .line 31
    iput v1, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    .line 32
    iput v1, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    const/16 v0, 0xff

    .line 37
    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->alpha:I

    .line 43
    iput-object p2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 44
    iput-object p1, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->parentView:Landroid/view/View;

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private update()V
    .locals 8

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 50
    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    const-wide/16 v0, 0x32

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v2, v0

    .line 54
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    long-to-float v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float v2, v1, v2

    iget v3, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v5

    if-lez v6, :cond_1

    .line 56
    iput v3, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    .line 57
    iput v5, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    goto :goto_0

    :cond_1
    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 59
    iput v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1Direction:I

    .line 60
    iput v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    .line 63
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    const/high16 v6, 0x439b0000    # 310.0f

    div-float v6, v1, v6

    iget v7, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    int-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    cmpl-float v6, v0, v5

    if-lez v6, :cond_3

    .line 65
    iput v3, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    .line 66
    iput v5, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    goto :goto_1

    :cond_3
    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 68
    iput v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2Direction:I

    .line 69
    iput v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    .line 72
    :cond_4
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    const/high16 v6, 0x43a00000    # 320.0f

    div-float/2addr v1, v6

    iget v6, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    int-to-float v6, v6

    mul-float v1, v1, v6

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    cmpl-float v1, v0, v5

    if-lez v1, :cond_5

    .line 74
    iput v3, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    .line 75
    iput v5, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    goto :goto_2

    :cond_5
    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 77
    iput v2, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3Direction:I

    .line 78
    iput v4, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    .line 81
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 102
    iget-object v1, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    const-string v2, "chat_serviceText"

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->timeColor:I

    iget v4, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->colorProgress:F

    invoke-static {v2, v3, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget v1, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->alpha:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 104
    iget-object v2, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    const/4 v4, 0x2

    .line 109
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v6, v4

    iget v4, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress1:F

    const/high16 v11, 0x40e00000    # 7.0f

    mul-float v4, v4, v11

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v4, v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v7, v4

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v8, v4

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v9, v5

    iget-object v10, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x5

    .line 110
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v14, v5

    iget v5, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress2:F

    mul-float v5, v5, v11

    add-float/2addr v5, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v15, v5

    const/4 v5, 0x7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v5, 0x8

    .line 111
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v14, v5

    iget v5, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->progress3:F

    mul-float v5, v5, v11

    add-float/2addr v5, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v15, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v16, v5

    move/from16 v17, v4

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 113
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    if-eqz v1, :cond_2

    .line 114
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->update()V

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0xc

    .line 140
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0xc

    .line 135
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

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RoundVideoPlayingDrawable;->started:Z

    return-void
.end method
