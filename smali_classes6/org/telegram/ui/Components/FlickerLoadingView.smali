.class public Lorg/telegram/ui/Components/FlickerLoadingView;
.super Landroid/view/View;
.source "FlickerLoadingView.java"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private color0:I

.field private color1:I

.field private colorKey1:I

.field private colorKey2:I

.field private colorKey3:I

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientWidth:I

.field private headerPaint:Landroid/graphics/Paint;

.field private ignoreHeightCheck:Z

.field private isSingleCell:Z

.field private itemsCount:I

.field private lastUpdateTime:J

.field private matrix:Landroid/graphics/Matrix;

.field private memberRequestButtonWidth:F

.field private paddingLeft:I

.field private paddingTop:I

.field private paint:Landroid/graphics/Paint;

.field private parentHeight:I

.field private parentWidth:I

.field private parentXOffset:F

.field randomParams:[F

.field private rectF:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showDate:Z

.field private skipDrawItemsCount:I

.field private totalTranslation:I

.field private useHeaderOffset:Z

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 130
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    .line 66
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    .line 79
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    .line 80
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    .line 82
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    .line 131
    iput-object p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 132
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private checkRtl(F)F
    .locals 1

    .line 858
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method private checkRtl(Landroid/graphics/RectF;)V
    .locals 2

    .line 865
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 867
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    return-void
.end method

.method private getCellHeight(I)I
    .locals 7

    .line 873
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/16 v1, 0x3c

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 874
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 877
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/16 v2, 0x30

    const/16 v3, 0x32

    const/16 v4, 0x40

    const/16 v5, 0x4e

    const/16 v6, 0x3a

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 921
    :pswitch_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 919
    :pswitch_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_3
    const/16 p1, 0x33

    .line 917
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 881
    :pswitch_4
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p1, :cond_2

    const/16 v4, 0x4c

    :cond_2
    add-int/lit8 v2, v4, 0x1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 915
    :pswitch_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 913
    :pswitch_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 893
    :pswitch_7
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 911
    :pswitch_8
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_9
    const/16 p1, 0x6b

    .line 908
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_a
    const/16 p1, 0x67

    .line 906
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_b
    const/16 p1, 0x24

    .line 904
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 900
    :pswitch_c
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_d
    const/16 p1, 0x42

    .line 898
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_e
    const/16 p1, 0x3d

    .line 902
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 879
    :pswitch_f
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p1, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    const/16 v2, 0x48

    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 896
    :pswitch_10
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_11
    const/16 p1, 0x50

    .line 891
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_12
    const/16 p1, 0x38

    .line 889
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_13
    const/4 v0, 0x2

    .line 885
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v1

    div-int/2addr p1, v1

    .line 886
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 883
    :pswitch_14
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_10
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getAdditionalHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnsCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 156
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    .line 157
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 160
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setParentSize(IIF)V

    .line 162
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, v1, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    :cond_1
    move-object v8, v1

    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 168
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    .line 169
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->useHeaderOffset:Z

    const/16 v9, 0x20

    if-eqz v2, :cond_4

    .line 170
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v10, v1, v2

    .line 171
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    if-ltz v1, :cond_2

    .line 172
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    if-ltz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    move-object v6, v1

    goto :goto_0

    :cond_3
    move-object v6, v8

    :goto_0
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v10

    .line 177
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x6

    const/4 v10, 0x2

    const/16 v11, 0x10

    const/16 v12, 0x8

    const/4 v13, 0x4

    if-ne v2, v3, :cond_5

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 179
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    .line 180
    div-int/2addr v2, v10

    const/16 v3, 0x12

    .line 181
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 182
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 183
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 184
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 185
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 186
    div-int/lit8 v10, v1, 0x4

    .line 187
    div-int/lit8 v11, v1, 0x2

    .line 188
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int v13, v3, v5

    mul-int/lit8 v14, v13, 0x2

    sub-int v15, v2, v4

    move/from16 v16, v6

    sub-int v6, v15, v9

    add-int/2addr v10, v14

    add-int/2addr v4, v2

    add-int/2addr v11, v14

    add-int/2addr v9, v4

    sub-int/2addr v1, v3

    sub-int/2addr v1, v12

    int-to-float v3, v13

    .line 200
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v3

    int-to-float v2, v2

    int-to-float v5, v5

    invoke-virtual {v7, v3, v2, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 202
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v5, v14

    int-to-float v6, v6

    int-to-float v10, v10

    int-to-float v13, v15

    invoke-virtual {v3, v5, v6, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 203
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 204
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    move/from16 v6, v16

    int-to-float v6, v6

    invoke-virtual {v7, v3, v6, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 206
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v10, v11

    int-to-float v9, v9

    invoke-virtual {v3, v5, v4, v10, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 208
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v3, v6, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    .line 210
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v1

    int-to-float v3, v12

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_21

    .line 214
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v3, 0x7

    const/16 v5, 0x3e

    const/16 v6, 0xa

    const/16 v14, 0x2e

    const/16 v15, 0x26

    const/16 v16, 0x4c

    const/16 v10, 0x1c

    const/16 v18, 0x32

    const/16 v12, 0x18

    const/16 v19, 0x0

    const/16 v4, 0xc

    const/4 v9, 0x1

    if-ne v2, v3, :cond_9

    .line 216
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    .line 218
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 219
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v10, v17, v3

    int-to-float v10, v10

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v10

    shr-int/2addr v2, v9

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v7, v10, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 221
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    const/16 v17, 0x94

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v9, v1, v17

    int-to-float v9, v9

    invoke-virtual {v2, v3, v10, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 222
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 223
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 225
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    const/16 v9, 0x10c

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 227
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 229
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_6

    .line 230
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v6, 0x36

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    const/16 v9, 0xdc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 231
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 232
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 235
    :cond_6
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_7

    .line 236
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 237
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 238
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v19, 0x1

    .line 243
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_8

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v3, v2, :cond_8

    goto/16 :goto_21

    :cond_8
    move/from16 v19, v3

    const/16 v6, 0xa

    const/4 v9, 0x1

    const/16 v10, 0x1c

    goto/16 :goto_1

    .line 247
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    if-ne v2, v12, :cond_d

    .line 249
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    const/16 v2, 0xe

    .line 250
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    .line 251
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v9, v2

    int-to-float v3, v9

    int-to-float v2, v2

    invoke-virtual {v7, v6, v3, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    .line 254
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 255
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    const/16 v9, 0x94

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 257
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 259
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    const/16 v9, 0x10c

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 260
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 261
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 263
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_a

    .line 264
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v6, 0x36

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    const/16 v9, 0xdc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 266
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 269
    :cond_a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_b

    .line 270
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 271
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 272
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 274
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v19, 0x1

    .line 278
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_c

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v3, v2, :cond_c

    goto/16 :goto_21

    :cond_c
    move/from16 v19, v3

    goto/16 :goto_2

    .line 282
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x12

    const/16 v9, 0x8c

    const/16 v10, 0x14

    if-ne v2, v3, :cond_10

    move v11, v1

    .line 284
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v11, v1, :cond_50

    const/16 v1, 0x19

    .line 285
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 286
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v3, 0x9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v2

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v11

    int-to-float v3, v4

    int-to-float v1, v1

    invoke-virtual {v7, v2, v3, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 289
    rem-int/lit8 v1, v19, 0x2

    if-nez v1, :cond_e

    const/16 v1, 0x34

    goto :goto_4

    :cond_e
    const/16 v1, 0x48

    .line 290
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v11

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x4c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x1c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v11

    int-to-float v6, v12

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 291
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 292
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 294
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x8

    add-int/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v11

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x54

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v5, 0x1c

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v11

    int-to-float v5, v6

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 296
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 298
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x2a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v11

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v11

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 299
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 300
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 302
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v11

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v11, v1

    add-int/lit8 v1, v19, 0x1

    .line 306
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v1, v2, :cond_f

    goto/16 :goto_21

    :cond_f
    move/from16 v19, v1

    goto/16 :goto_3

    .line 310
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_13

    move v9, v1

    .line 312
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v9, v1, :cond_50

    .line 313
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 314
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v3, 0x9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v2

    const/16 v3, 0x1d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {v7, v2, v3, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 317
    rem-int/lit8 v1, v19, 0x2

    if-nez v1, :cond_11

    const/16 v1, 0x5c

    goto :goto_6

    :cond_11
    const/16 v1, 0x80

    .line 318
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v9

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x4c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 319
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 320
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 322
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v3, v3

    const/16 v4, 0xf0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 323
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 326
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v9, v1

    add-int/lit8 v1, v19, 0x1

    .line 330
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v1, v2, :cond_12

    goto/16 :goto_21

    :cond_12
    move/from16 v19, v1

    goto/16 :goto_5

    .line 334
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x104

    const/16 v6, 0x44

    const/4 v14, 0x1

    if-ne v2, v14, :cond_16

    .line 336
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    const/16 v2, 0x19

    .line 337
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v5, 0x9

    .line 338
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/16 v11, 0x4e

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v12, 0x1

    shr-int/2addr v11, v12

    add-int/2addr v11, v1

    int-to-float v11, v11

    int-to-float v2, v2

    invoke-virtual {v7, v5, v11, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 340
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/16 v14, 0x1c

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v14, v15

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 341
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 342
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 344
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v11, 0x2a

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 345
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 346
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 348
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_14

    .line 349
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    const/16 v14, 0x1c

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v14, v15

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 350
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 351
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 354
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v5, v19, 0x1

    .line 356
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_15

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v2, :cond_15

    goto/16 :goto_21

    :cond_15
    move/from16 v19, v5

    goto/16 :goto_7

    .line 360
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v14, 0x2

    if-eq v2, v14, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0x1b

    if-ne v2, v14, :cond_17

    goto/16 :goto_1d

    .line 378
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v14, 0x3

    if-ne v2, v14, :cond_1a

    .line 380
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 381
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v11, 0x8

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v11, v12

    const/16 v12, 0x34

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/16 v14, 0x30

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 382
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 383
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 385
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 386
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 387
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 389
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v11, 0x22

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/16 v14, 0x2a

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 390
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 391
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 393
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_18

    .line 394
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 395
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 396
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 399
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v5, v19, 0x1

    .line 401
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_19

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v2, :cond_19

    goto/16 :goto_21

    :cond_19
    move/from16 v19, v5

    goto/16 :goto_8

    .line 405
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    if-ne v2, v13, :cond_1d

    .line 407
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    const/16 v2, 0x2c

    .line 408
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v5, 0x1

    shr-int/2addr v2, v5

    .line 409
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/4 v11, 0x6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v1

    add-int/2addr v12, v2

    int-to-float v11, v12

    int-to-float v2, v2

    invoke-virtual {v7, v5, v11, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 411
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 413
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 415
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v11, 0x22

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/16 v14, 0x2a

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 416
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 417
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 419
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_1b

    .line 420
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 421
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 422
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 425
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v5, v19, 0x1

    .line 427
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_1c

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v2, :cond_1c

    goto/16 :goto_21

    :cond_1c
    move/from16 v19, v5

    goto/16 :goto_9

    .line 431
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v14, 0x5

    if-ne v2, v14, :cond_20

    .line 433
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 434
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v3, v11

    const/16 v11, 0xb

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/16 v14, 0x3f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 435
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v3, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 438
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 440
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v3, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 442
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v11, 0x22

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    const/16 v12, 0x10c

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    const/16 v14, 0x2a

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 443
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 444
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v3, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 446
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v11, 0x36

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    const/16 v12, 0xbc

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 447
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 448
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v3, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 450
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_1e

    .line 451
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v3, v11

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 452
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 453
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v3, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 456
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v19, 0x1

    .line 458
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_1f

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v3, v2, :cond_1f

    goto/16 :goto_21

    :cond_1f
    move/from16 v19, v3

    goto/16 :goto_a

    .line 462
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v14, 0x6

    if-eq v2, v14, :cond_47

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0xa

    if-ne v2, v14, :cond_21

    goto/16 :goto_1b

    .line 488
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0x8

    if-ne v2, v14, :cond_24

    .line 490
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    const/16 v2, 0x17

    .line 491
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 492
    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v11, 0xb

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v5, v11

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/16 v11, 0x40

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    const/4 v12, 0x1

    shr-int/2addr v11, v12

    add-int/2addr v11, v1

    int-to-float v11, v11

    int-to-float v2, v2

    invoke-virtual {v7, v5, v11, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 494
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v5, v11

    int-to-float v5, v5

    const/16 v11, 0x11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v12, v14

    int-to-float v12, v12

    const/16 v14, 0x19

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 496
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v5, v11

    int-to-float v5, v5

    const/16 v11, 0x27

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    iget v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v12, v14

    int-to-float v12, v12

    const/16 v14, 0x2f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 499
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 500
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 502
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_22

    .line 503
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v5, v11

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    int-to-float v12, v12

    const/16 v14, 0x1c

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v14, v15

    invoke-virtual {v2, v5, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 504
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 505
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v5, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 508
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v5, v19, 0x1

    .line 510
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_23

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v2, :cond_23

    goto/16 :goto_21

    :cond_23
    move/from16 v19, v5

    goto/16 :goto_b

    .line 514
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0x9

    if-ne v2, v14, :cond_27

    .line 516
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 517
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    const/16 v3, 0x20

    .line 518
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v3, 0x2

    div-int/2addr v5, v3

    const/16 v3, 0x23

    .line 519
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v3

    const/4 v6, 0x1

    shr-int/2addr v2, v6

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v5, v5

    invoke-virtual {v7, v3, v2, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 521
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x48

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0x10c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 522
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 523
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 525
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x48

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v10, 0x2e

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v10, v14

    invoke-virtual {v2, v3, v5, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 526
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 527
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 529
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_25

    .line 530
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v6, v10

    int-to-float v6, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 532
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 535
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v19, 0x1

    .line 537
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_26

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v3, v2, :cond_26

    goto/16 :goto_21

    :cond_26
    move/from16 v19, v3

    goto/16 :goto_c

    .line 541
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0xb

    if-ne v2, v14, :cond_29

    move/from16 v2, v19

    .line 543
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gt v1, v3, :cond_50

    .line 544
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v4, 0x12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v6, v9

    const/high16 v9, 0x42200000    # 40.0f

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    aget v10, v10, v19

    mul-float/2addr v10, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/16 v10, 0x8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 546
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 548
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/16 v5, 0x12

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    const/high16 v9, 0x41a00000    # 20.0f

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    aget v10, v10, v19

    mul-float/2addr v10, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v6, v9

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/16 v10, 0x8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 549
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 550
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 558
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_28

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_28

    goto/16 :goto_21

    .line 562
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    if-ne v2, v4, :cond_2c

    const/16 v2, 0xe

    .line 564
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 565
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 566
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v13

    move/from16 v3, v19

    :goto_d
    if-ge v3, v13, :cond_2b

    mul-int v4, v2, v3

    int-to-float v4, v4

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x7

    .line 569
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0x38

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    const/high16 v6, 0x41e00000    # 28.0f

    .line 570
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v5, 0x7

    .line 572
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    const/16 v6, 0x38

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 573
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v4, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v4, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v5, v14

    invoke-virtual {v6, v9, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 574
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v6, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 576
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 578
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_2a

    goto/16 :goto_21

    .line 582
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0xd

    if-ne v2, v14, :cond_2e

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 585
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/16 v3, 0x28

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/16 v9, 0x78

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 586
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 588
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2d

    .line 589
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    .line 590
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2d
    move/from16 v2, v19

    :goto_e
    const/4 v3, 0x3

    if-ge v2, v3, :cond_50

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v5, 0x38

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    const/16 v5, 0xd

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/16 v5, 0x38

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    const/16 v5, 0xd

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v1, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 597
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0xe

    const/16 v6, 0x15

    if-eq v2, v14, :cond_43

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0x11

    if-ne v2, v14, :cond_2f

    goto/16 :goto_17

    .line 636
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v14, 0xf

    if-ne v2, v14, :cond_32

    const/16 v2, 0x17

    .line 638
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 639
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 640
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-gt v1, v11, :cond_50

    .line 641
    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, v2

    int-to-float v11, v11

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v11

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v1

    add-int/2addr v13, v2

    int-to-float v12, v13

    int-to-float v13, v2

    invoke-virtual {v7, v11, v12, v13, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 643
    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v13, 0x4a

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 644
    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 645
    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v12, v6

    invoke-virtual {v7, v11, v12, v12, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 647
    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v13, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v14, 0x4a

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/16 v14, 0x24

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    const/16 v16, 0x2a

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v4, v1, v16

    int-to-float v4, v4

    invoke-virtual {v11, v13, v14, v15, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 648
    iget-object v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 649
    iget-object v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v4, v12, v12, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 651
    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->memberRequestButtonWidth:F

    const/4 v11, 0x0

    cmpl-float v4, v4, v11

    if-lez v4, :cond_30

    .line 652
    iget-object v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v13, 0x49

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v15, 0x49

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->memberRequestButtonWidth:F

    add-float/2addr v14, v15

    const/16 v15, 0x5e

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v15, v15

    invoke-virtual {v4, v11, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 653
    iget-object v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 654
    iget-object v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v4, v12, v12, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 657
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x1

    add-int/lit8 v11, v19, 0x1

    .line 659
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v4, :cond_31

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v11, v4, :cond_31

    goto/16 :goto_21

    :cond_31
    move/from16 v19, v11

    const/16 v4, 0xc

    goto/16 :goto_f

    .line 663
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    if-eq v2, v11, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v4, 0x17

    if-ne v2, v4, :cond_33

    goto/16 :goto_16

    .line 692
    :cond_33
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    if-ne v2, v6, :cond_35

    .line 694
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    const/16 v2, 0x2e

    .line 695
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v2, 0x1

    shr-int/2addr v4, v2

    .line 696
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/16 v6, 0x3a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    shr-int/2addr v6, v2

    add-int/2addr v6, v1

    int-to-float v2, v6

    int-to-float v4, v4

    invoke-virtual {v7, v5, v2, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 698
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v4, 0x4a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v4, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 699
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 700
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 702
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v4, 0x4a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v14, 0x2e

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v14, v1, v16

    int-to-float v14, v14

    invoke-virtual {v2, v4, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 703
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 704
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v4, v19, 0x1

    .line 708
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_34

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v4, v2, :cond_34

    goto/16 :goto_21

    :cond_34
    move/from16 v19, v4

    goto/16 :goto_10

    :cond_35
    const/16 v4, 0x16

    if-ne v2, v4, :cond_37

    .line 714
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    const/16 v2, 0x30

    .line 715
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v4, 0x1

    shr-int/2addr v2, v4

    .line 716
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v4

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    int-to-float v2, v2

    invoke-virtual {v7, v4, v5, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 718
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v4, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 719
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 720
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 722
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v14, 0x2e

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    add-int v14, v1, v17

    int-to-float v14, v14

    invoke-virtual {v2, v4, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 723
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 724
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v4, v19, 0x1

    .line 728
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_36

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v4, v2, :cond_36

    goto/16 :goto_21

    :cond_36
    move/from16 v19, v4

    goto/16 :goto_11

    :cond_37
    const/16 v4, 0x19

    if-ne v2, v4, :cond_39

    .line 734
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 735
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    const/16 v3, 0x11

    .line 736
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    int-to-float v4, v5

    int-to-float v2, v2

    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 738
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/16 v5, 0xdc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v9, 0x1d

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 740
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v19, 0x1

    .line 744
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_38

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v3, v2, :cond_38

    goto/16 :goto_21

    :cond_38
    move/from16 v19, v3

    goto :goto_12

    :cond_39
    const/16 v4, 0x1a

    if-ne v2, v4, :cond_3c

    .line 750
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 751
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    .line 752
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    goto :goto_14

    :cond_3a
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    :goto_14
    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 754
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x3c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/16 v9, 0xbe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/16 v10, 0x1d

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 755
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 756
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 758
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/16 v10, 0x1d

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 759
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 760
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v19, 0x1

    .line 764
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_3b

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v3, v2, :cond_3b

    goto/16 :goto_21

    :cond_3b
    move/from16 v19, v3

    goto/16 :goto_13

    .line 768
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_50

    .line 770
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    .line 771
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 772
    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v4

    const/16 v6, 0x3a

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v11, 0x1

    shr-int/2addr v6, v11

    add-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-virtual {v7, v4, v6, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 774
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v6, 0x44

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v4, v11

    int-to-float v4, v4

    const/16 v6, 0x11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v11, v14

    int-to-float v11, v11

    const/16 v14, 0x19

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v4, v6, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 775
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 776
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v4, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 778
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v6, 0x44

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v4, v11

    int-to-float v4, v4

    const/16 v6, 0x27

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v11, v14

    int-to-float v11, v11

    const/16 v14, 0x2f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v4, v6, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 779
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 780
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v4, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 782
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_3d

    .line 783
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/16 v14, 0xc

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int/2addr v11, v15

    int-to-float v11, v11

    const/16 v14, 0x1c

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v14, v15

    invoke-virtual {v2, v4, v6, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 784
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 785
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v2, v4, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 788
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v4, v19, 0x1

    .line 790
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_3e

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v4, v2, :cond_3e

    goto/16 :goto_21

    :cond_3e
    move/from16 v19, v4

    goto/16 :goto_15

    :cond_3f
    :goto_16
    move/from16 v2, v19

    .line 665
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gt v1, v3, :cond_42

    const/16 v3, 0x12

    .line 666
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 667
    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    int-to-float v4, v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v4

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {v7, v4, v5, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 669
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v5, 0x3a

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    const/16 v9, 0x35

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    const/16 v9, 0x1c

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v9, v11

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 670
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 671
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v4, v6

    invoke-virtual {v7, v3, v5, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-ge v2, v13, :cond_41

    const/16 v3, 0xc

    .line 674
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v3

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v4, v4

    invoke-virtual {v7, v3, v5, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 678
    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    .line 680
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_40

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_40

    .line 684
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    const/16 v9, 0x1c

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 685
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 686
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 688
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/16 v4, 0x24

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/16 v6, 0x35

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/16 v6, 0x2c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 689
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 690
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v3, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_21

    :cond_43
    :goto_17
    move v1, v4

    .line 598
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x4d

    .line 599
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 600
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 601
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x29

    .line 602
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    .line 604
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v1, v9, :cond_50

    .line 606
    iget-object v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_44

    .line 607
    new-instance v9, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    .line 609
    :cond_44
    iget-object v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 611
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-int v14, v1, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v14, v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    sub-int v10, v16, v17

    int-to-float v10, v10

    invoke-virtual {v9, v11, v12, v15, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v10, 0x6

    .line 612
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7, v9, v11, v12, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_45

    const/16 v11, 0x8

    .line 615
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    const/16 v11, 0x16

    .line 616
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v3

    int-to-float v11, v11

    .line 617
    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v15, v1

    add-float/2addr v11, v15

    add-float v10, v11, v5

    add-float v6, v9, v4

    invoke-virtual {v12, v11, v9, v10, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 618
    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x5

    .line 619
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    .line 620
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    add-float/2addr v9, v10

    .line 621
    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    add-float/2addr v15, v6

    add-float v6, v15, v5

    add-float v11, v9, v4

    invoke-virtual {v10, v15, v9, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 622
    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_19

    .line 623
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v6

    const/16 v10, 0x11

    if-ne v6, v10, :cond_46

    const/4 v6, 0x5

    .line 624
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v10, 0x20

    .line 625
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v1

    int-to-float v15, v2

    sub-float/2addr v15, v11

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v15, v17

    add-float/2addr v12, v15

    const/16 v15, 0x15

    .line 627
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v15, v13

    add-float/2addr v11, v12

    .line 628
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    add-int v13, v13, v18

    int-to-float v13, v13

    invoke-virtual {v9, v12, v15, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 629
    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v6, v6, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1a

    :cond_46
    :goto_19
    const/16 v10, 0x20

    .line 633
    :goto_1a
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/16 v9, 0x14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v6, v11

    int-to-float v6, v6

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v6, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v1, v14

    const/16 v6, 0x15

    const/16 v10, 0x14

    const/4 v13, 0x4

    goto/16 :goto_18

    .line 464
    :cond_47
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_50

    const/16 v2, 0x17

    .line 465
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 466
    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v5, 0x9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v4

    const/16 v5, 0x40

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v6, 0x1

    shr-int/2addr v5, v6

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-virtual {v7, v4, v5, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 468
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v5, 0x44

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    const/16 v5, 0x11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v6, v10

    int-to-float v6, v6

    const/16 v10, 0x19

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v4, v5, v6, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 469
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 470
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v4, v6

    invoke-virtual {v7, v2, v5, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 472
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v5, 0x44

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    const/16 v6, 0x27

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/16 v11, 0x2f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v4, v6, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 473
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 474
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v4, v10

    invoke-virtual {v7, v2, v6, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 476
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_48

    .line 477
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/16 v12, 0xc

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    const/16 v13, 0x1c

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v4, v10, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 478
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 479
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v2, v10, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_48
    const/4 v4, 0x4

    const/16 v6, 0x14

    const/16 v12, 0xc

    const/16 v13, 0x1c

    .line 482
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v10, v19, 0x1

    .line 484
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_49

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v10, v2, :cond_49

    goto/16 :goto_21

    :cond_49
    move/from16 v19, v10

    goto/16 :goto_1b

    .line 361
    :cond_4a
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    mul-int/2addr v4, v3

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v3

    div-int v9, v2, v3

    .line 362
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_4b

    int-to-float v2, v9

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    goto :goto_1e

    :cond_4b
    move v10, v9

    :goto_1e
    move v11, v1

    move/from16 v12, v19

    .line 364
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lt v11, v1, :cond_4d

    iget-boolean v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v1, :cond_50

    :cond_4d
    move/from16 v13, v19

    .line 365
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v1

    if-ge v13, v1, :cond_4f

    if-nez v12, :cond_4e

    .line 366
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->skipDrawItemsCount:I

    if-ge v13, v1, :cond_4e

    goto :goto_20

    :cond_4e
    const/4 v1, 0x2

    .line 369
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v9

    mul-int/2addr v2, v13

    int-to-float v3, v2

    int-to-float v4, v11

    add-int/2addr v2, v9

    int-to-float v5, v2

    add-int v1, v11, v10

    int-to-float v6, v1

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v8

    .line 370
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    :cond_4f
    const/4 v1, 0x2

    .line 372
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v10

    add-int/2addr v11, v2

    add-int/lit8 v12, v12, 0x1

    .line 374
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_4c

    if-lt v12, v1, :cond_4c

    .line 795
    :cond_50
    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 137
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v0, :cond_2

    .line 138
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->ignoreHeightCheck:Z

    if-eqz v3, :cond_0

    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    mul-int/2addr p2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getAdditionalHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 140
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 141
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    mul-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getAdditionalHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getAdditionalHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setColors(III)V
    .locals 0

    .line 119
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    .line 120
    iput p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    .line 121
    iput p3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setIgnoreHeightCheck(Z)V
    .locals 0

    .line 971
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->ignoreHeightCheck:Z

    return-void
.end method

.method public setIsSingleCell(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    return-void
.end method

.method public setItemsCount(I)V
    .locals 0

    .line 949
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    return-void
.end method

.method public setMemberRequestButton(Z)V
    .locals 3

    .line 976
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 977
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v1, 0xe

    .line 978
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/16 v1, 0x22

    .line 979
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->AddToChannel:I

    const-string v2, "AddToChannel"

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AddToGroup:I

    const-string v2, "AddToGroup"

    :goto_0
    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v1, p1

    iput v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->memberRequestButtonWidth:F

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 944
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    .line 945
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 939
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    .line 940
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setParentSize(IIF)V
    .locals 0

    .line 961
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentWidth:I

    .line 962
    iput p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentHeight:I

    .line 963
    iput p3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    return-void
.end method

.method public setUseHeaderOffset(Z)V
    .locals 0

    .line 931
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->useHeaderOffset:Z

    return-void
.end method

.method public setViewType(I)V
    .locals 5

    .line 95
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 97
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 98
    iput-object v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 100
    iget-object v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showDate(Z)V
    .locals 0

    .line 927
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    return-void
.end method

.method public skipDrawItemsCount(I)V
    .locals 0

    .line 935
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->skipDrawItemsCount:I

    return-void
.end method

.method public updateColors()V
    .locals 26

    move-object/from16 v0, p0

    .line 839
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v1, :cond_0

    .line 840
    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    return-void

    .line 843
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v1

    .line 844
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v2

    .line 845
    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color1:I

    if-ne v3, v2, :cond_1

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color0:I

    if-eq v3, v1, :cond_4

    .line 846
    :cond_1
    iput v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color0:I

    .line 847
    iput v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color1:I

    .line 848
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    if-nez v3, :cond_3

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v9, 0xd

    if-eq v3, v9, :cond_3

    const/16 v9, 0xe

    if-eq v3, v9, :cond_3

    const/16 v9, 0x11

    if-ne v3, v9, :cond_2

    goto :goto_0

    .line 851
    :cond_2
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v9, 0x258

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    int-to-float v14, v9

    new-array v15, v8, [I

    aput v2, v15, v7

    aput v1, v15, v6

    aput v1, v15, v5

    aput v2, v15, v4

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v3

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    goto :goto_1

    .line 849
    :cond_3
    :goto_0
    new-instance v3, Landroid/graphics/LinearGradient;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v9, 0xc8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    int-to-float v9, v9

    const/16 v22, 0x0

    new-array v10, v8, [I

    aput v2, v10, v7

    aput v1, v10, v6

    aput v1, v10, v5

    aput v2, v10, v4

    new-array v1, v8, [F

    fill-array-data v1, :array_1

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v3

    move/from16 v21, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v1

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    .line 853
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateGradient()V
    .locals 8

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    return-void

    .line 803
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 804
    iget-wide v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->lastUpdateTime:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    const-wide/16 v2, 0x10

    :cond_1
    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const-wide/16 v2, 0x0

    .line 811
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentWidth:I

    if-nez v4, :cond_3

    .line 813
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 815
    :cond_3
    iget v5, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentHeight:I

    if-nez v5, :cond_4

    .line 817
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 819
    :cond_4
    iput-wide v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->lastUpdateTime:J

    .line 820
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    const/high16 v1, 0x43c80000    # 400.0f

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v6, 0xd

    if-eq v0, v6, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/16 v6, 0xe

    if-eq v0, v6, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/16 v6, 0x11

    if-ne v0, v6, :cond_5

    goto :goto_0

    .line 827
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v0, v0

    int-to-long v6, v5

    mul-long/2addr v2, v6

    long-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_6

    .line 829
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    .line 831
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    iget v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    .line 821
    :cond_7
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v0, v0

    int-to-long v5, v4

    mul-long/2addr v2, v5

    long-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_8

    .line 823
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    .line 825
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 833
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_9

    .line 834
    iget-object v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_9
    return-void
.end method
