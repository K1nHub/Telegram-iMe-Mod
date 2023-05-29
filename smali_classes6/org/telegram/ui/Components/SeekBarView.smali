.class public Lorg/telegram/ui/Components/SeekBarView;
.super Landroid/widget/FrameLayout;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;
    }
.end annotation


# static fields
.field private static tmpPath:Landroid/graphics/Path;

.field private static tmpRadii:[F


# instance fields
.field private animatedThumbX:Lorg/telegram/ui/Components/AnimatedFloat;

.field private bufferedProgress:F

.field captured:Z

.field private currentRadius:F

.field private currentTimestamp:I

.field public delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

.field private hoverDrawable:Landroid/graphics/drawable/Drawable;

.field private innerPaint1:Landroid/graphics/Paint;

.field private lastCaption:Ljava/lang/CharSequence;

.field private lastDuration:J

.field private lastTimestampUpdate:J

.field private lastUpdateTime:J

.field lastValue:I

.field private lastWidth:F

.field private lineWidthDp:I

.field private outerPaint1:Landroid/graphics/Paint;

.field private pressed:Z

.field private pressedState:[I

.field private progressToSet:F

.field private rect:Landroid/graphics/RectF;

.field private reportChanges:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

.field private selectorWidth:I

.field private separatorsCount:I

.field sx:F

.field sy:F

.field private thumbDX:I

.field private thumbSize:I

.field private thumbX:I

.field private timestampChangeDirection:I

.field private timestampChangeT:F

.field private timestampLabel:[Landroid/text/StaticLayout;

.field private timestampLabelPaint:Landroid/text/TextPaint;

.field private timestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private timestampsAppearing:F

.field private transitionProgress:F

.field private transitionThumbX:I

.field private twoSided:Z


# direct methods
.method public static synthetic $r8$lambda$56chtvWnjt4wh2Bjl7Xz5jHHt98(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->lambda$updateTimestamps$1(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oAEUMHrVjfwBaMPCzXLE1BIp6lA(Lorg/telegram/ui/Components/SeekBarView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SeekBarView;->lambda$onTouch$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x50

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->animatedThumbX:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 p1, -0x3d380000    # -100.0f

    .line 69
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 77
    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressedState:[I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    const/4 v0, 0x3

    .line 81
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    const/4 v0, -0x1

    .line 497
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    .line 500
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 503
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lastWidth:F

    .line 505
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    .line 107
    iput-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 109
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    .line 111
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    .line 112
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p3, 0x20

    .line 114
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    const/16 p3, 0x18

    .line 115
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    const/4 p3, 0x6

    .line 116
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    .line 118
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_0

    .line 119
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result p3

    const/16 v1, 0x28

    invoke-static {p3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 121
    iget-object p3, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 124
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 125
    new-instance p1, Lorg/telegram/ui/Components/SeekBarView$1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/SeekBarView$1;-><init>(Lorg/telegram/ui/Components/SeekBarView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SeekBarView;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SeekBarView;ZF)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    return-void
.end method

.method private drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    .line 598
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    .line 599
    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_d

    .line 602
    :cond_0
    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    .line 603
    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v8, v9

    .line 605
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v9, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 606
    iget v9, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    .line 607
    sget-object v7, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    if-nez v7, :cond_1

    .line 608
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    sput-object v7, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    .line 610
    :cond_1
    sget-object v7, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/4 v7, 0x4

    .line 611
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float v12, v8, v6

    div-float/2addr v11, v12

    const/4 v13, 0x0

    .line 613
    :goto_0
    iget-object v14, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 614
    iget-object v14, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v11

    if-ltz v14, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, -0x1

    :goto_1
    if-gez v13, :cond_4

    const/4 v13, 0x0

    .line 622
    :cond_4
    iget-object v14, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    :goto_2
    if-ltz v14, :cond_6

    .line 623
    iget-object v15, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float v15, v10, v15

    cmpl-float v15, v15, v11

    if-ltz v15, :cond_5

    add-int/lit8 v15, v14, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    :cond_6
    const/4 v15, -0x1

    :goto_3
    if-gez v15, :cond_7

    .line 629
    iget-object v14, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    :cond_7
    move v14, v13

    :goto_4
    if-gt v14, v15, :cond_16

    const/16 v17, 0x0

    if-ne v14, v13, :cond_8

    move/from16 v4, v17

    goto :goto_5

    .line 633
    :cond_8
    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    add-int/lit8 v4, v14, -0x1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_5
    if-ne v14, v15, :cond_9

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_6

    .line 634
    :cond_9
    iget-object v10, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_6
    if-eq v14, v15, :cond_a

    if-eqz v14, :cond_a

    .line 635
    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v14, v7, :cond_a

    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v4

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_a

    add-int/lit8 v14, v14, 0x1

    .line 637
    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v7, 0x4

    goto :goto_6

    .line 640
    :cond_a
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v6, v8, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    if-lez v14, :cond_b

    move/from16 v20, v9

    goto :goto_7

    :cond_b
    move/from16 v20, v17

    :goto_7
    add-float v4, v4, v20

    iput v4, v7, Landroid/graphics/RectF;->left:F

    .line 641
    invoke-static {v6, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    if-ge v14, v15, :cond_c

    move/from16 v17, v9

    :cond_c
    sub-float v4, v4, v17

    iput v4, v7, Landroid/graphics/RectF;->right:F

    .line 644
    iget v10, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v10

    if-lez v4, :cond_d

    move/from16 v4, v16

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_e

    .line 645
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 647
    :cond_e
    iget v10, v7, Landroid/graphics/RectF;->right:F

    iget v12, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_f

    move/from16 v23, v6

    const/16 v18, 0x2

    goto/16 :goto_b

    .line 650
    :cond_f
    iget v10, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_10

    .line 651
    iput v12, v7, Landroid/graphics/RectF;->left:F

    .line 654
    :cond_10
    sget-object v10, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    if-nez v10, :cond_11

    const/16 v10, 0x8

    new-array v10, v10, [F

    .line 655
    sput-object v10, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    :cond_11
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0x6

    if-eq v14, v13, :cond_14

    if-eqz v4, :cond_12

    .line 657
    iget v12, v7, Landroid/graphics/RectF;->left:F

    iget v10, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v12, v10

    if-ltz v10, :cond_12

    goto :goto_9

    :cond_12
    if-lt v14, v15, :cond_13

    .line 661
    sget-object v10, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v12, v5

    move/from16 v23, v6

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float/2addr v12, v6

    aput v12, v10, v21

    aput v12, v10, v22

    aput v12, v10, v16

    const/4 v6, 0x0

    aput v12, v10, v6

    const/4 v6, 0x5

    .line 662
    aput v5, v10, v6

    const/4 v12, 0x4

    aput v5, v10, v12

    aput v5, v10, v20

    const/16 v18, 0x2

    aput v5, v10, v18

    move v6, v12

    goto :goto_a

    :cond_13
    move/from16 v23, v6

    const/4 v6, 0x5

    const/4 v12, 0x4

    const/16 v18, 0x2

    .line 664
    sget-object v10, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    const v19, 0x3f333333    # 0.7f

    mul-float v19, v19, v5

    iget v12, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float v12, v12, v19

    aput v12, v10, v6

    const/4 v6, 0x4

    aput v12, v10, v6

    aput v12, v10, v20

    aput v12, v10, v18

    aput v12, v10, v21

    aput v12, v10, v22

    aput v12, v10, v16

    const/4 v6, 0x0

    aput v12, v10, v6

    const/4 v6, 0x4

    const/16 v18, 0x2

    goto :goto_a

    :cond_14
    :goto_9
    move/from16 v23, v6

    const/4 v6, 0x0

    .line 658
    sget-object v10, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    aput v5, v10, v21

    aput v5, v10, v22

    aput v5, v10, v16

    aput v5, v10, v6

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v12, v5

    .line 659
    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float/2addr v12, v6

    const/4 v6, 0x5

    aput v12, v10, v6

    const/4 v6, 0x4

    aput v12, v10, v6

    aput v12, v10, v20

    const/16 v18, 0x2

    aput v12, v10, v18

    .line 667
    :goto_a
    sget-object v10, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    sget-object v12, Lorg/telegram/ui/Components/SeekBarView;->tmpRadii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v7, v12, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    if-eqz v4, :cond_15

    goto :goto_c

    :cond_15
    :goto_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v18

    move/from16 v6, v23

    const/4 v7, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 673
    :cond_16
    :goto_c
    sget-object v2, Lorg/telegram/ui/Components/SeekBarView;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_e

    .line 600
    :cond_17
    :goto_d
    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_e
    return-void
.end method

.method private drawTimestampLabel(Landroid/graphics/Canvas;)V
    .locals 14

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 682
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result v0

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-ltz v1, :cond_2

    .line 686
    iget-object v4, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 692
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-nez v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/StaticLayout;

    .line 693
    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    .line 696
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 697
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    .line 698
    iget-wide v6, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    if-lez v6, :cond_4

    const/16 v6, 0x24

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    int-to-float v6, v6

    sub-float/2addr v5, v6

    sub-float v5, v0, v5

    .line 699
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/16 v6, 0x42

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 701
    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->lastWidth:F

    const/4 v8, 0x0

    cmpl-float v9, v6, v8

    if-lez v9, :cond_6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v9, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_6

    .line 702
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v9, v6, v7

    if-eqz v9, :cond_5

    .line 703
    aget-object v9, v6, v7

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    float-to-int v10, v5

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/Components/SeekBarView;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v9

    aput-object v9, v6, v7

    .line 705
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v9, v6, v2

    if-eqz v9, :cond_6

    .line 706
    aget-object v9, v6, v2

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    float-to-int v10, v5

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/Components/SeekBarView;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v9

    aput-object v9, v6, v2

    .line 709
    :cond_6
    iput v5, p0, Lorg/telegram/ui/Components/SeekBarView;->lastWidth:F

    .line 711
    iget v6, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    if-eq v1, v6, :cond_e

    .line 712
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v9, v6, v7

    aput-object v9, v6, v2

    .line 713
    iget-boolean v6, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v6, :cond_7

    const/16 v6, 0x9

    .line 715
    :try_start_0
    invoke-virtual {p0, v6, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    const/4 v6, 0x0

    if-ltz v1, :cond_9

    .line 718
    iget-object v9, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 719
    iget-object v9, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    if-nez v9, :cond_8

    .line 721
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aput-object v6, v5, v7

    goto :goto_3

    .line 723
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    float-to-int v5, v5

    invoke-direct {p0, v9, v5}, Lorg/telegram/ui/Components/SeekBarView;->makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;

    move-result-object v5

    aput-object v5, v6, v7

    goto :goto_3

    .line 726
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aput-object v6, v5, v7

    .line 728
    :goto_3
    iput v8, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    if-ne v1, v3, :cond_a

    .line 730
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    goto :goto_4

    .line 731
    :cond_a
    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    if-ne v5, v3, :cond_b

    .line 732
    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    goto :goto_4

    :cond_b
    if-ge v1, v5, :cond_c

    .line 734
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    goto :goto_4

    :cond_c
    if-le v1, v5, :cond_d

    .line 736
    iput v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    .line 739
    :cond_d
    :goto_4
    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    .line 741
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    const-wide/16 v5, 0x11

    const/16 v9, 0x8

    if-gez v1, :cond_10

    .line 742
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampUpdate:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 743
    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v9, :cond_f

    const/high16 v1, 0x43200000    # 160.0f

    goto :goto_5

    :cond_f
    const/high16 v1, 0x435c0000    # 220.0f

    .line 744
    :goto_5
    iget v12, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    long-to-float v10, v10

    div-float/2addr v10, v1

    add-float/2addr v12, v10

    invoke-static {v12, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    .line 745
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 746
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampUpdate:J

    .line 748
    :cond_10
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/ui/Components/SeekBarView;->lastTimestampUpdate:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 750
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    long-to-float v5, v5

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    .line 751
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 754
    :cond_11
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeT:F

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    .line 756
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 757
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/16 v6, 0x19

    .line 758
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v2

    const/16 v5, 0x10

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v0, :cond_13

    .line 761
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 762
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    if-eqz v0, :cond_12

    .line 763
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    neg-int v11, v11

    mul-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v1

    add-float/2addr v0, v10

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 765
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    sub-float v10, v3, v1

    mul-float/2addr v10, v6

    iget v11, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 770
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v7

    if-eqz v0, :cond_15

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 772
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    if-eqz v0, :cond_14

    .line 773
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampChangeDirection:I

    mul-int/2addr v2, v5

    int-to-float v2, v2

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 775
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    mul-float/2addr v1, v6

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 778
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 780
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_16
    :goto_6
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$onTouch$0()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$updateTimestamps$1(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    .line 587
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 589
    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private makeStaticLayout(Ljava/lang/CharSequence;I)Landroid/text/StaticLayout;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v6, p2

    .line 784
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 785
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    const/16 v3, 0xc

    .line 786
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 788
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    if-nez p1, :cond_1

    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    .line 792
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/16 v5, 0x190

    if-lt v1, v4, :cond_2

    const/4 v1, 0x0

    .line 793
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    invoke-static {v3, v1, v4, v7, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 794
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 795
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 796
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 797
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    return-object v1

    .line 800
    :cond_2
    new-instance v13, Landroid/text/StaticLayout;

    const/4 v4, 0x0

    .line 803
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 811
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object v1, v13

    move-object v2, v3

    move v3, v4

    move v4, v7

    move-object v5, v8

    move/from16 v6, p2

    move-object v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move-object v11, v14

    move v12, v15

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v13
.end method

.method private setSeekBarDrag(ZF)V
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarDrag(ZF)V

    .line 322
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 323
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-nez p1, :cond_1

    .line 324
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lastValue:I

    if-eq p2, p1, :cond_1

    const/16 p1, 0x9

    .line 326
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :catch_0
    :cond_1
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarView;->lastValue:I

    :cond_2
    return-void
.end method


# virtual methods
.method public clearTimestamps()V
    .locals 4

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 509
    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    const/4 v1, 0x0

    .line 510
    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    .line 511
    iget-object v1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 512
    aput-object v0, v1, v3

    aput-object v0, v1, v2

    .line 514
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->lastCaption:Ljava/lang/CharSequence;

    const-wide/16 v0, -0x1

    .line 515
    iput-wide v0, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    return-void
.end method

.method public getProgress()F
    .locals 3

    .line 334
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    return v0

    .line 337
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSeekBarAccessibilityDelegate()Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;
    .locals 1

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->seekBarAccessibilityDelegate:Lorg/telegram/ui/Components/SeekBarAccessibilityDelegate;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    return v0
.end method

.method public isTwoSided()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 402
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 403
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-nez v2, :cond_0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    if-le v2, v9, :cond_0

    .line 404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    int-to-float v3, v3

    sub-float/2addr v3, v8

    div-float/2addr v2, v3

    .line 405
    iget-object v3, v0, Lorg/telegram/ui/Components/SeekBarView;->animatedThumbX:Lorg/telegram/ui/Components/AnimatedFloat;

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    float-to-int v1, v1

    :cond_0
    move v10, v1

    .line 407
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v11, v1, 0x2

    .line 408
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 411
    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 412
    iget v5, v0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float v5, v1, v5

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v1, v6

    .line 414
    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 415
    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    invoke-direct {p0, v7, v4, v6}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 416
    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->bufferedProgress:F

    const/4 v12, 0x0

    cmpl-float v4, v4, v12

    if-lez v4, :cond_1

    .line 417
    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressCachedBackground:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/SeekBarView;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->bufferedProgress:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    iget v14, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v2, v13

    add-float/2addr v6, v2

    invoke-virtual {v4, v3, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 419
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    invoke-direct {p0, v7, v2, v4}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 421
    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    const/4 v13, 0x6

    if-eqz v2, :cond_3

    .line 422
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 423
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v10, v1, :cond_2

    .line 424
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v10

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 426
    :cond_2
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 429
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v10

    int-to-float v4, v4

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 430
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-direct {p0, v7, v1, v2}, Lorg/telegram/ui/Components/SeekBarView;->drawProgressBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 433
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 434
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v10

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 435
    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v3, v2

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x20

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 437
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    const/4 v1, 0x0

    .line 440
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v2, :cond_5

    const/16 v13, 0x8

    :cond_5
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 442
    iget-wide v5, v0, Lorg/telegram/ui/Components/SeekBarView;->lastUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12

    cmp-long v5, v3, v5

    if-lez v5, :cond_6

    const-wide/16 v3, 0x10

    .line 446
    :cond_6
    iget v5, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    int-to-float v2, v2

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_9

    cmpg-float v1, v5, v2

    const/high16 v6, 0x42700000    # 60.0f

    if-gez v1, :cond_7

    .line 448
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    long-to-float v13, v3

    div-float/2addr v13, v6

    mul-float/2addr v1, v13

    add-float/2addr v5, v1

    iput v5, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    cmpl-float v1, v5, v2

    if-lez v1, :cond_8

    .line 450
    iput v2, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    goto :goto_1

    .line 453
    :cond_7
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    long-to-float v13, v3

    div-float/2addr v13, v6

    mul-float/2addr v1, v13

    sub-float/2addr v5, v1

    iput v5, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    cmpg-float v1, v5, v2

    if-gez v1, :cond_8

    .line 455
    iput v2, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    :cond_8
    :goto_1
    move v1, v9

    .line 460
    :cond_9
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    cmpg-float v5, v2, v8

    if-gez v5, :cond_b

    long-to-float v3, v3

    const/high16 v4, 0x43610000    # 225.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 461
    iput v2, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_a

    goto :goto_2

    .line 465
    :cond_a
    iput v8, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    :cond_b
    move v9, v1

    .line 469
    :goto_2
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    cmpg-float v2, v1, v8

    if-gez v2, :cond_d

    .line 470
    sget-object v2, Lorg/telegram/ui/Components/Easings;->easeInQuad:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v8, v1

    .line 471
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    cmpl-float v2, v8, v12

    if-lez v2, :cond_c

    .line 473
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->transitionThumbX:I

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    mul-float/2addr v4, v8

    iget-object v5, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 475
    :cond_c
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v10, v2

    int-to-float v2, v10

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    int-to-float v3, v11

    iget v4, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    mul-float/2addr v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 477
    :cond_d
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v10, v1

    int-to-float v1, v10

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v11, v2

    int-to-float v2, v11

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarView;->currentRadius:F

    iget-object v4, v0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 480
    :goto_3
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/SeekBarView;->drawTimestampLabel(Landroid/graphics/Canvas;)V

    if-eqz v9, :cond_e

    .line 483
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 384
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 385
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    const/high16 p2, -0x3d380000    # -100.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 386
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 387
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    :cond_0
    return-void
.end method

.method onTouch(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->sx:F

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->sy:F

    return v1

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3c23d70a    # 0.01f

    const/16 v4, 0x15

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_1

    goto/16 :goto_3

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_17

    .line 253
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->captured:Z

    if-nez v0, :cond_7

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->sy:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    return v6

    .line 258
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->sx:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_17

    .line 259
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->captured:Z

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v5

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_17

    .line 263
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    add-int/2addr v3, v7

    add-int/2addr v3, v0

    int-to-float v0, v3

    cmpg-float v0, v2, v0

    if-lez v0, :cond_5

    .line 264
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/2addr v2, v5

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-gez v0, :cond_4

    .line 266
    iput v6, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_5

    .line 268
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 271
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    .line 272
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarPressed(Z)V

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 275
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->pressedState:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 278
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    .line 283
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v0, :cond_17

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-gez v0, :cond_8

    .line 286
    iput v6, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_1

    .line 287
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v7, v8

    if-le v0, v7, :cond_9

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 290
    :cond_9
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->reportChanges:Z

    if-eqz v0, :cond_c

    .line 291
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    if-eqz v0, :cond_b

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v7

    div-int/2addr v0, v5

    int-to-float v0, v0

    .line 293
    iget v5, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v7, v5

    cmpl-float v7, v7, v0

    if-ltz v7, :cond_a

    int-to-float v2, v5

    sub-float/2addr v2, v0

    div-float/2addr v2, v0

    .line 294
    invoke-direct {p0, v6, v2}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_2

    :cond_a
    int-to-float v5, v5

    sub-float v5, v0, v5

    div-float/2addr v5, v0

    sub-float/2addr v2, v5

    .line 296
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_2

    .line 299
    :cond_b
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    .line 302
    :cond_c
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 305
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    .line 213
    :cond_e
    :goto_3
    iput-boolean v6, p0, Lorg/telegram/ui/Components/SeekBarView;->captured:Z

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_12

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->sy:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_12

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    sub-int/2addr v0, v7

    div-int/2addr v0, v5

    .line 218
    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    sub-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    iget v9, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    add-int/2addr v8, v9

    add-int/2addr v8, v0

    int-to-float v0, v8

    cmpg-float v0, v7, v0

    if-lez v0, :cond_11

    .line 219
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbSize:I

    div-int/2addr v7, v5

    sub-int/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-gez v0, :cond_10

    .line 221
    iput v6, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_4

    .line 222
    :cond_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v7, v8

    if-le v0, v7, :cond_11

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v7

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 226
    :cond_11
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbDX:I

    .line 227
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    .line 230
    :cond_12
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    if-eqz v0, :cond_17

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_15

    .line 232
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    if-eqz p1, :cond_14

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v5

    int-to-float p1, p1

    .line 234
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float v5, v0

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_13

    int-to-float v0, v0

    sub-float/2addr v0, p1

    div-float/2addr v0, p1

    .line 235
    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_5

    :cond_13
    int-to-float v0, v0

    sub-float v0, p1, v0

    div-float/2addr v0, p1

    sub-float/2addr v2, v0

    .line 237
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    neg-float p1, p1

    invoke-direct {p0, v6, p1}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    goto :goto_5

    .line 240
    :cond_14
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/SeekBarView;->setSeekBarDrag(ZF)V

    .line 243
    :cond_15
    :goto_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_16

    .line 244
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 246
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    invoke-interface {p1, v6}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;->onSeekBarPressed(Z)V

    .line 247
    iput-boolean v6, p0, Lorg/telegram/ui/Components/SeekBarView;->pressed:Z

    .line 248
    new-instance p1, Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SeekBarView;)V

    const-wide/16 v2, 0x32

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    :cond_17
    return v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBufferedProgress(F)V
    .locals 0

    .line 378
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->bufferedProgress:F

    .line 379
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->delegate:Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;

    return-void
.end method

.method public setInnerColor(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->innerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineWidth(I)V
    .locals 0

    .line 314
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lineWidthDp:I

    return-void
.end method

.method public setOuterColor(I)V
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->outerPaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/16 v1, 0x28

    .line 183
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 4

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    return-void

    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    .line 349
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->progressToSet:F

    .line 351
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    .line 353
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    neg-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v0, p1

    float-to-double v2, v0

    .line 355
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    mul-float/2addr p1, v0

    add-float/2addr v0, p1

    float-to-double v2, v0

    .line 357
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    :goto_0
    double-to-int p1, v2

    .line 362
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-eq v0, p1, :cond_6

    if-eqz p2, :cond_3

    .line 364
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarView;->transitionThumbX:I

    .line 365
    iput v1, p0, Lorg/telegram/ui/Components/SeekBarView;->transitionProgress:F

    .line 367
    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 369
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    goto :goto_1

    .line 370
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_5

    .line 371
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/SeekBarView;->selectorWidth:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->thumbX:I

    .line 373
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_6
    return-void
.end method

.method public setReportChanges(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->reportChanges:Z

    return-void
.end method

.method public setSeparatorsCount(I)V
    .locals 0

    .line 157
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarView;->separatorsCount:I

    return-void
.end method

.method public setTwoSided(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarView;->twoSided:Z

    return-void
.end method

.method public updateTimestamps(Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V
    .locals 9

    if-nez p1, :cond_0

    .line 520
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->clearTimestamps()V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    if-nez p2, :cond_1

    .line 524
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p2

    int-to-long v2, p2

    mul-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_c

    .line 526
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto/16 :goto_1

    .line 530
    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 531
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isYouTubeVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 532
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 533
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    iput-object v2, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    .line 534
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->addUrlsByPattern(ZLjava/lang/CharSequence;ZIIZ)V

    .line 536
    :cond_3
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->youtubeDescription:Ljava/lang/CharSequence;

    .line 538
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->lastCaption:Ljava/lang/CharSequence;

    if-ne v2, p1, :cond_5

    iget-wide v3, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_5

    return-void

    .line 541
    :cond_5
    iput-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->lastCaption:Ljava/lang/CharSequence;

    .line 542
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/SeekBarView;->lastDuration:J

    .line 543
    instance-of p1, v2, Landroid/text/Spanned;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_7

    .line 544
    iput-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    .line 545
    iput v4, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    .line 546
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz p1, :cond_6

    .line 548
    aput-object v6, p1, v5

    aput-object v6, p1, v7

    :cond_6
    return-void

    .line 552
    :cond_7
    check-cast v2, Landroid/text/Spanned;

    .line 555
    :try_start_0
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result p1

    const-class v8, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-interface {v2, v7, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/URLSpanNoUnderline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    .line 567
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    .line 568
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_8

    .line 569
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    const/16 v3, 0xc

    .line 570
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 571
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    :cond_8
    move v2, v7

    .line 573
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_a

    .line 574
    aget-object v3, p1, v2

    if-eqz v3, :cond_9

    .line 575
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;->label:Ljava/lang/String;

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 576
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 577
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_9

    .line 578
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v0

    long-to-float v4, v4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v4, v5

    .line 579
    iget-object v3, v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;->label:Ljava/lang/String;

    .line 580
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    const/16 v6, 0xe

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5, v3, v6, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 582
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    sget-object p2, Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/SeekBarView$$ExternalSyntheticLambda1;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catch_0
    move-exception p1

    .line 557
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 558
    iput-object v6, p0, Lorg/telegram/ui/Components/SeekBarView;->timestamps:Ljava/util/ArrayList;

    .line 559
    iput v4, p0, Lorg/telegram/ui/Components/SeekBarView;->currentTimestamp:I

    .line 560
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampsAppearing:F

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarView;->timestampLabel:[Landroid/text/StaticLayout;

    if-eqz p1, :cond_b

    .line 562
    aput-object v6, p1, v5

    aput-object v6, p1, v7

    :cond_b
    return-void

    .line 527
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarView;->clearTimestamps()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 393
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarView;->hoverDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
