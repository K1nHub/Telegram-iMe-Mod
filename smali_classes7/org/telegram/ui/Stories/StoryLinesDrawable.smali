.class public Lorg/telegram/ui/Stories/StoryLinesDrawable;
.super Ljava/lang/Object;
.source "StoryLinesDrawable.java"


# instance fields
.field bufferingProgress:F

.field incrementBuffering:Z

.field lastPosition:I

.field private final sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V
    .locals 7

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    .line 26
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xe6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIFIFFZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    if-gtz v4, :cond_0

    return-void

    .line 48
    :cond_0
    iget v5, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->lastPosition:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v3, :cond_1

    .line 49
    iput v6, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    .line 50
    iput-boolean v7, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    .line 52
    :cond_1
    iput v3, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->lastPosition:I

    .line 54
    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iget-object v8, v5, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->barPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v5, v5, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->selectedBarPaint:Landroid/graphics/Paint;

    const/16 v9, 0x64

    const/4 v10, 0x2

    if-le v4, v9, :cond_2

    move v9, v7

    goto :goto_0

    :cond_2
    const/16 v9, 0x32

    if-lt v4, v9, :cond_3

    .line 62
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_0

    .line 64
    :cond_3
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    :goto_0
    const/16 v11, 0xa

    .line 66
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int v11, v2, v11

    add-int/lit8 v12, v4, -0x1

    mul-int/2addr v12, v9

    sub-int/2addr v11, v12

    int-to-float v11, v11

    int-to-float v12, v4

    div-float/2addr v11, v12

    const/4 v12, 0x5

    .line 68
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v11, v13

    .line 71
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v14, v14, p7

    mul-float v14, v14, p6

    float-to-int v14, v14

    .line 72
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v4, :cond_c

    const/high16 v16, -0x80000000

    .line 74
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float v7, v7, v16

    mul-int v12, v9, v15

    int-to-float v12, v12

    add-float/2addr v7, v12

    int-to-float v12, v15

    mul-float/2addr v12, v11

    add-float/2addr v7, v12

    int-to-float v12, v2

    cmpl-float v12, v7, v12

    if-gtz v12, :cond_b

    add-float v12, v7, v11

    cmpg-float v17, v12, v6

    if-gez v17, :cond_4

    goto/16 :goto_6

    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    if-gt v15, v3, :cond_8

    if-ne v15, v3, :cond_8

    .line 83
    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14, v7, v6, v12, v2}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p8, :cond_7

    .line 86
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    const v12, 0x3cda740e

    if-eqz v2, :cond_5

    .line 87
    iget v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    add-float/2addr v2, v12

    iput v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    const/high16 v12, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v12

    if-lez v2, :cond_6

    const/4 v2, 0x0

    .line 89
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    goto :goto_2

    .line 92
    :cond_5
    iget v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    sub-float/2addr v2, v12

    iput v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    const/high16 v12, -0x41000000    # -0.5f

    cmpg-float v2, v2, v12

    if-gez v2, :cond_6

    const/4 v2, 0x1

    .line 94
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->incrementBuffering:Z

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const/high16 v12, 0x424c0000    # 51.0f

    mul-float v12, v12, p7

    mul-float v12, v12, p6

    .line 97
    iget v2, v0, Lorg/telegram/ui/Stories/StoryLinesDrawable;->bufferingProgress:F

    mul-float/2addr v12, v2

    float-to-int v2, v12

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    const/high16 v12, 0x42aa0000    # 85.0f

    mul-float v12, v12, p7

    mul-float v12, v12, p6

    float-to-int v12, v12

    add-int/2addr v12, v2

    .line 99
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    invoke-virtual {v1, v14, v13, v13, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v18, p4

    .line 108
    :cond_8
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    mul-float v18, v18, v11

    add-float v12, v7, v18

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v2, v7, v6, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    if-le v15, v3, :cond_9

    const/16 v7, 0x55

    int-to-float v7, v7

    mul-float v7, v7, p7

    mul-float v7, v7, p6

    float-to-int v7, v7

    .line 111
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    if-gt v15, v3, :cond_a

    move-object v7, v5

    goto :goto_5

    :cond_a
    move-object v7, v8

    .line 113
    :goto_5
    invoke-virtual {v1, v2, v13, v13, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_b
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    const/4 v7, 0x1

    const/4 v12, 0x5

    goto/16 :goto_1

    :cond_c
    return-void
.end method
