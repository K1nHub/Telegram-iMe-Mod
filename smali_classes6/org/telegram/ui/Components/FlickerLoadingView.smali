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

    .line 124
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    .line 64
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    .line 77
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    .line 78
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    .line 80
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    .line 129
    iput-object p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 130
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private checkRtl(F)F
    .locals 1

    .line 850
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    .line 851
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

    .line 857
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 859
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

    .line 865
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/16 v1, 0x3c

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 866
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 869
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

    .line 913
    :pswitch_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 911
    :pswitch_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_3
    const/16 p1, 0x33

    .line 909
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 873
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

    .line 907
    :pswitch_5
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 905
    :pswitch_6
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 885
    :pswitch_7
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 903
    :pswitch_8
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_9
    const/16 p1, 0x6b

    .line 900
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_a
    const/16 p1, 0x67

    .line 898
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_b
    const/16 p1, 0x24

    .line 896
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 892
    :pswitch_c
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_d
    const/16 p1, 0x42

    .line 890
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_e
    const/16 p1, 0x3d

    .line 894
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    .line 871
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

    .line 888
    :pswitch_10
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_11
    const/16 p1, 0x50

    .line 883
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_12
    const/16 p1, 0x38

    .line 881
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    return p1

    :pswitch_13
    const/4 v0, 0x2

    .line 877
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

    .line 878
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 875
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

    .line 945
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

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 154
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    .line 155
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 158
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setParentSize(IIF)V

    .line 160
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, v1, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    :cond_1
    move-object v8, v1

    .line 163
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 166
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    .line 167
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->useHeaderOffset:Z

    const/16 v9, 0x20

    if-eqz v2, :cond_4

    .line 168
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v10, v1, v2

    .line 169
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    if-ltz v1, :cond_2

    .line 170
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 172
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

    .line 175
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

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 177
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    .line 178
    div-int/2addr v2, v10

    const/16 v3, 0x12

    .line 179
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 180
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 181
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 182
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 183
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 184
    div-int/lit8 v10, v1, 0x4

    .line 185
    div-int/lit8 v11, v1, 0x2

    .line 186
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

    .line 198
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v3

    int-to-float v2, v2

    int-to-float v5, v5

    invoke-virtual {v7, v3, v2, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v5, v14

    int-to-float v6, v6

    int-to-float v10, v10

    int-to-float v13, v15

    invoke-virtual {v3, v5, v6, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 201
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 202
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    move/from16 v6, v16

    int-to-float v6, v6

    invoke-virtual {v7, v3, v6, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 204
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v4

    int-to-float v10, v11

    int-to-float v9, v9

    invoke-virtual {v3, v5, v4, v10, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 205
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 206
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v3, v6, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    .line 208
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v1

    int-to-float v3, v12

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_21

    .line 212
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v3, 0x7

    const/16 v5, 0xa

    const/16 v14, 0x2e

    const/16 v15, 0x26

    const/16 v16, 0x4c

    const/16 v6, 0x1c

    const/16 v17, 0x32

    const/16 v10, 0x18

    const/16 v19, 0x0

    const/16 v4, 0xc

    const/4 v12, 0x1

    if-ne v2, v3, :cond_9

    .line 214
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    .line 216
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 217
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    shr-int/2addr v2, v12

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v7, v9, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 219
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    const/16 v18, 0x94

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    add-int v5, v1, v18

    int-to-float v5, v5

    invoke-virtual {v2, v3, v9, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 220
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 221
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0x10c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 224
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 225
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 227
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_6

    .line 228
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v5, 0x36

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0xdc

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v9, 0x3e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 229
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 230
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 233
    :cond_6
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_7

    .line 234
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

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

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 236
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 239
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 241
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_8

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_8

    goto/16 :goto_21

    :cond_8
    move/from16 v19, v2

    const/16 v5, 0xa

    const/16 v6, 0x1c

    goto/16 :goto_1

    .line 245
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    if-ne v2, v10, :cond_d

    .line 247
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    const/16 v2, 0xe

    .line 248
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    .line 249
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    int-to-float v3, v6

    int-to-float v2, v2

    invoke-virtual {v7, v5, v3, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    .line 252
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0x94

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 254
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 255
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0x10c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 259
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 261
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_a

    .line 262
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v5, 0x36

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0xdc

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v9, 0x3e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 264
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 267
    :cond_a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_b

    .line 268
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

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

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 269
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 270
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 272
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 276
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_c

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_c

    goto/16 :goto_21

    :cond_c
    move/from16 v19, v2

    goto/16 :goto_2

    .line 280
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x12

    const/16 v6, 0x19

    const/16 v21, 0x8c

    const/16 v22, 0x14

    if-ne v2, v3, :cond_10

    move v10, v1

    .line 282
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v10, v1, :cond_4f

    .line 283
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 284
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v3, 0x9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {v7, v2, v3, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    rem-int/lit8 v1, v19, 0x2

    if-nez v1, :cond_e

    const/16 v1, 0x34

    goto :goto_4

    :cond_e
    const/16 v1, 0x48

    .line 288
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x4c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v11, 0x1c

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v10

    int-to-float v11, v12

    invoke-virtual {v2, v3, v4, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 289
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 290
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 292
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x8

    add-int/2addr v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x54

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v11, 0x1c

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 293
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 294
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 296
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x2a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 297
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 298
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 300
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v1, p1

    move v12, v11

    move v11, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v10, v1

    add-int/lit8 v1, v19, 0x1

    .line 304
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v1, v2, :cond_f

    goto/16 :goto_21

    :cond_f
    move/from16 v19, v1

    move v6, v11

    goto/16 :goto_3

    :cond_10
    move v2, v6

    const/16 v3, 0x1c

    .line 308
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_13

    move v9, v1

    .line 310
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v9, v1, :cond_4f

    .line 311
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 312
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

    .line 315
    rem-int/lit8 v1, v19, 0x2

    if-nez v1, :cond_11

    const/16 v1, 0x5c

    goto :goto_6

    :cond_11
    const/16 v1, 0x80

    .line 316
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

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 317
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 318
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 320
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

    .line 321
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 322
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 324
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

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v9, v1

    add-int/lit8 v1, v19, 0x1

    .line 328
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_12

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v1, v2, :cond_12

    goto/16 :goto_21

    :cond_12
    move/from16 v19, v1

    goto/16 :goto_5

    .line 332
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v6, 0x104

    const/16 v20, 0x44

    if-ne v5, v12, :cond_16

    .line 334
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-gt v1, v5, :cond_4f

    .line 335
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v9, 0x9

    .line 336
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/16 v10, 0x4e

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    shr-int/2addr v10, v12

    add-int/2addr v10, v1

    int-to-float v10, v10

    int-to-float v5, v5

    invoke-virtual {v7, v9, v10, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 338
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v5, v9, v10, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 339
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 340
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 342
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/16 v10, 0x2a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v5, v9, v10, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 343
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 344
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 346
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v5, :cond_14

    .line 347
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v11, v14

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v5, v9, v10, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 348
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 349
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 352
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v19, 0x1

    .line 354
    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_15

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v9, :cond_15

    goto/16 :goto_21

    :cond_15
    move/from16 v19, v5

    goto/16 :goto_7

    .line 358
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/4 v14, 0x2

    if-eq v5, v14, :cond_49

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0x1b

    if-ne v5, v14, :cond_17

    goto/16 :goto_1d

    .line 376
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/4 v14, 0x3

    if-ne v5, v14, :cond_1a

    .line 378
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 379
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v5, v9

    const/16 v9, 0x34

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/16 v10, 0x30

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 380
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 381
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 383
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 384
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 385
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 387
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v5, 0x22

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/16 v10, 0x2a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 388
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 389
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 391
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_18

    .line 392
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 393
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 394
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 397
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 399
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_19

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_19

    goto/16 :goto_21

    :cond_19
    move/from16 v19, v2

    goto/16 :goto_8

    .line 403
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    if-ne v5, v13, :cond_1d

    .line 405
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    const/16 v2, 0x2c

    .line 406
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    shr-int/2addr v2, v12

    .line 407
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v3

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v9, v2

    int-to-float v5, v9

    int-to-float v2, v2

    invoke-virtual {v7, v3, v5, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 410
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 411
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 413
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v5, 0x22

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/16 v10, 0x2a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 414
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 415
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 417
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_1b

    .line 418
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual {v2, v3, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 419
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 420
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 423
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 425
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_1c

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_1c

    goto/16 :goto_21

    :cond_1c
    move/from16 v19, v2

    goto/16 :goto_9

    .line 429
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/4 v14, 0x5

    if-ne v5, v14, :cond_20

    .line 431
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 432
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v3, v5

    const/16 v5, 0xb

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0x3e

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v9, 0x3f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 433
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 434
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 436
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 437
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 438
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 440
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v5, 0x22

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0x10c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v9, 0x2a

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 441
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 442
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 444
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v5, 0x36

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/16 v6, 0xbc

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v9, 0x3e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 445
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 446
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 448
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_1e

    .line 449
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v5, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 450
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 451
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 454
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 456
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_1f

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_1f

    goto/16 :goto_21

    :cond_1f
    move/from16 v19, v2

    goto/16 :goto_a

    .line 460
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/4 v14, 0x6

    if-eq v5, v14, :cond_46

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0xa

    if-ne v5, v14, :cond_21

    goto/16 :goto_1b

    .line 486
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0x8

    if-ne v5, v14, :cond_24

    .line 488
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-gt v1, v5, :cond_4f

    const/16 v5, 0x17

    .line 489
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 490
    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v10, 0xb

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/16 v10, 0x40

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    shr-int/2addr v10, v12

    add-int/2addr v10, v1

    int-to-float v10, v10

    int-to-float v5, v5

    invoke-virtual {v7, v9, v10, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 492
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/16 v10, 0x11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v11, v14

    int-to-float v11, v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v5, v9, v10, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 493
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 494
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 496
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/16 v10, 0x27

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v11, v14

    int-to-float v11, v11

    const/16 v14, 0x2f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v5, v9, v10, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 497
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 498
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 500
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v5, :cond_22

    .line 501
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v11, v14

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v5, v9, v10, v11, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 502
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 503
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 506
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v19, 0x1

    .line 508
    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_23

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v9, :cond_23

    goto/16 :goto_21

    :cond_23
    move/from16 v19, v5

    goto/16 :goto_b

    .line 512
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0x9

    if-ne v5, v14, :cond_27

    .line 514
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    .line 516
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v5, 0x2

    div-int/2addr v3, v5

    const/16 v5, 0x23

    .line 517
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    shr-int/2addr v2, v12

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v7, v5, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 519
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

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 520
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 521
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 523
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x48

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const/16 v14, 0x2e

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v14, v1, v16

    int-to-float v14, v14

    invoke-virtual {v2, v3, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 524
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 525
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 527
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_25

    .line 528
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

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

    move-result v14

    sub-int/2addr v6, v14

    int-to-float v6, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v5, v6, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 529
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 530
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 533
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 535
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_26

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_26

    goto/16 :goto_21

    :cond_26
    move/from16 v19, v2

    goto/16 :goto_c

    .line 539
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0xb

    if-ne v5, v14, :cond_29

    move/from16 v2, v19

    .line 541
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gt v1, v3, :cond_4f

    .line 542
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

    .line 543
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 544
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 546
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

    .line 547
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 548
    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v2, v12

    .line 556
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_28

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_28

    goto/16 :goto_21

    .line 560
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    if-ne v5, v4, :cond_2c

    const/16 v2, 0xe

    .line 562
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 563
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 564
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

    .line 567
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

    .line 568
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v5, 0x7

    .line 570
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

    .line 571
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v4, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v5, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v4, v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v5, v14

    invoke-virtual {v6, v9, v12, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 572
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v6, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 574
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 576
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_2a

    goto/16 :goto_21

    .line 580
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0xd

    if-ne v5, v14, :cond_2e

    .line 581
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 583
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

    .line 584
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 586
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2d

    .line 587
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    .line 588
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2d
    move/from16 v2, v19

    :goto_e
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4f

    .line 592
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

    .line 593
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

    .line 595
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0xe

    const/16 v9, 0x15

    if-eq v5, v14, :cond_42

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0x11

    if-ne v5, v14, :cond_2f

    goto/16 :goto_17

    .line 634
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0xf

    if-ne v5, v14, :cond_31

    const/16 v2, 0x17

    .line 636
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 637
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 638
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-gt v1, v5, :cond_4f

    .line 639
    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    int-to-float v9, v2

    add-float/2addr v5, v9

    const/16 v10, 0x8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    add-int/2addr v11, v2

    int-to-float v10, v11

    invoke-virtual {v7, v5, v10, v9, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 641
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v10, 0x4a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v5, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 642
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 643
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v9, v3

    invoke-virtual {v7, v5, v9, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 645
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v11, 0x4a

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/16 v11, 0x24

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    iget v13, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/16 v14, 0x2a

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v5, v10, v11, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 646
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 647
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v5, v9, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 649
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v19, 0x1

    .line 651
    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_30

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v9, :cond_30

    goto/16 :goto_21

    :cond_30
    move/from16 v19, v5

    goto/16 :goto_f

    .line 655
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    if-eq v5, v11, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    const/16 v14, 0x17

    if-ne v5, v14, :cond_32

    goto/16 :goto_16

    .line 684
    :cond_32
    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    if-ne v5, v9, :cond_34

    .line 686
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    const/16 v2, 0x2e

    .line 687
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    shr-int/lit8 v2, v3, 0x1

    .line 688
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v3

    const/16 v4, 0x3a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    shr-int/2addr v4, v12

    add-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 690
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x4a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 691
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 692
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 694
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x4a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v9, 0x2e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v9, v14

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 695
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 696
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 700
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_33

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_33

    goto/16 :goto_21

    :cond_33
    move/from16 v19, v2

    goto/16 :goto_10

    :cond_34
    const/16 v14, 0x16

    if-ne v5, v14, :cond_36

    .line 706
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    const/16 v2, 0x30

    .line 707
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    shr-int/2addr v2, v12

    .line 708
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v3

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    int-to-float v4, v5

    int-to-float v2, v2

    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 710
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 711
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 712
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 714
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v9, 0x2e

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    invoke-virtual {v2, v3, v4, v5, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 715
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 716
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 720
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_35

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_35

    goto/16 :goto_21

    :cond_35
    move/from16 v19, v2

    goto/16 :goto_11

    :cond_36
    if-ne v5, v2, :cond_38

    .line 726
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 727
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    shr-int/2addr v2, v12

    const/16 v3, 0x11

    .line 728
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

    .line 730
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/16 v5, 0xdc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x1d

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 732
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 736
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_37

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_37

    goto/16 :goto_21

    :cond_37
    move/from16 v19, v2

    goto :goto_12

    :cond_38
    const/16 v14, 0x1a

    if-ne v5, v14, :cond_3b

    .line 742
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_4f

    .line 743
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    shr-int/2addr v2, v12

    .line 744
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    goto :goto_14

    :cond_39
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

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

    .line 746
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x3c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/16 v5, 0xbe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x1d

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 747
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 748
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 750
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x3e

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/16 v6, 0x1d

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 751
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 752
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v19, 0x1

    .line 756
    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_3a

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_3a

    goto/16 :goto_21

    :cond_3a
    move/from16 v19, v2

    goto/16 :goto_13

    .line 760
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v5

    if-ne v5, v3, :cond_4f

    .line 762
    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-gt v1, v5, :cond_4f

    .line 763
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 764
    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v11, 0xa

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/16 v14, 0x3a

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    shr-int/2addr v14, v12

    add-int/2addr v14, v1

    int-to-float v14, v14

    int-to-float v5, v5

    invoke-virtual {v7, v9, v14, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 766
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v9, v14

    int-to-float v9, v9

    const/16 v14, 0x11

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v11, v1, v16

    int-to-float v11, v11

    invoke-virtual {v5, v9, v14, v15, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 767
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 768
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v5, v9, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 770
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v9, v11

    int-to-float v9, v9

    const/16 v11, 0x27

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    iget v14, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/16 v15, 0x2f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v15, v15

    invoke-virtual {v5, v9, v11, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 771
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 772
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v5, v9, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 774
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v5, :cond_3c

    .line 775
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v15, v15

    invoke-virtual {v5, v9, v11, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 776
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 777
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v5, v9, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 780
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v19, 0x1

    .line 782
    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_3d

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v5, v9, :cond_3d

    goto/16 :goto_21

    :cond_3d
    move/from16 v19, v5

    goto/16 :goto_15

    :cond_3e
    :goto_16
    move/from16 v2, v19

    .line 657
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-gt v1, v5, :cond_41

    const/16 v5, 0x12

    .line 658
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 659
    iget v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v6, v11

    add-int/2addr v6, v5

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    int-to-float v5, v5

    invoke-virtual {v7, v6, v9, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 661
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v9, 0x3a

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v11

    const/16 v12, 0x35

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v5, v6, v9, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 662
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 663
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v6, 0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v6, v11

    invoke-virtual {v7, v5, v9, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-ge v2, v13, :cond_40

    .line 666
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    sub-int/2addr v6, v5

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    int-to-float v5, v5

    invoke-virtual {v7, v6, v9, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 670
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    .line 672
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v5, :cond_3f

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v5, :cond_3f

    .line 676
    :cond_41
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v4, v6, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 678
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 680
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

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

    .line 681
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 682
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

    .line 596
    :cond_42
    :goto_17
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x4d

    .line 597
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 598
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 599
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x29

    .line 600
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    .line 602
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v1, v6, :cond_4f

    .line 604
    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_43

    .line 605
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    .line 607
    :cond_43
    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 609
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-int v14, v1, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int v15, v14, v15

    int-to-float v15, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    sub-int v12, v16, v17

    int-to-float v12, v12

    invoke-virtual {v6, v10, v11, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v10, 0x6

    .line 610
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7, v6, v11, v12, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 612
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_44

    const/16 v11, 0x8

    .line 613
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/16 v11, 0x16

    .line 614
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v11, v3

    int-to-float v11, v11

    .line 615
    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v15, v1

    add-float/2addr v11, v15

    add-float v10, v11, v5

    add-float v9, v6, v4

    invoke-virtual {v12, v11, v6, v10, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 616
    iget-object v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v9, 0x5

    .line 617
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    .line 618
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    add-float/2addr v6, v10

    .line 619
    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    add-float/2addr v15, v9

    add-float v9, v15, v5

    add-float v11, v6, v4

    invoke-virtual {v10, v15, v6, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 620
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

    .line 621
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v9

    const/16 v10, 0x11

    if-ne v9, v10, :cond_45

    const/4 v9, 0x5

    .line 622
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/16 v10, 0x20

    .line 623
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

    .line 625
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v15, v13

    add-float/2addr v11, v12

    .line 626
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    add-int v13, v13, v18

    int-to-float v13, v13

    invoke-virtual {v6, v12, v15, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 627
    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v9, v9, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1a

    :cond_45
    :goto_19
    const/16 v10, 0x20

    .line 631
    :goto_1a
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v6, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v1, v14

    const/16 v9, 0x15

    const/4 v12, 0x1

    const/4 v13, 0x4

    goto/16 :goto_18

    .line 462
    :cond_46
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-gt v1, v5, :cond_4f

    const/16 v5, 0x17

    .line 463
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 464
    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/16 v10, 0x9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/16 v10, 0x40

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/4 v11, 0x1

    shr-int/2addr v10, v11

    add-int/2addr v10, v1

    int-to-float v10, v10

    int-to-float v5, v5

    invoke-virtual {v7, v9, v10, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 466
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/16 v10, 0x11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 467
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 468
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v9, v11

    invoke-virtual {v7, v5, v10, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 470
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/16 v10, 0x27

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/16 v12, 0x2f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 471
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 472
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v9, v11

    invoke-virtual {v7, v5, v10, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 474
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v5, :cond_47

    .line 475
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 476
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    .line 477
    iget-object v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v5, v10, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1c

    :cond_47
    const/4 v9, 0x4

    .line 480
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v5

    add-int/2addr v1, v5

    const/4 v5, 0x1

    add-int/lit8 v10, v19, 0x1

    .line 482
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v5, :cond_48

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v10, v5, :cond_48

    goto/16 :goto_21

    :cond_48
    move/from16 v19, v10

    goto/16 :goto_1b

    .line 359
    :cond_49
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

    .line 360
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_4a

    int-to-float v2, v9

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    goto :goto_1e

    :cond_4a
    move v10, v9

    :goto_1e
    move v11, v1

    move/from16 v12, v19

    .line 362
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lt v11, v1, :cond_4c

    iget-boolean v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v1, :cond_4f

    :cond_4c
    move/from16 v13, v19

    .line 363
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v1

    if-ge v13, v1, :cond_4e

    if-nez v12, :cond_4d

    .line 364
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->skipDrawItemsCount:I

    if-ge v13, v1, :cond_4d

    goto :goto_20

    :cond_4d
    const/4 v1, 0x2

    .line 367
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

    .line 368
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    :cond_4e
    const/4 v1, 0x2

    .line 370
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v10

    add-int/2addr v11, v2

    add-int/lit8 v12, v12, 0x1

    .line 372
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_4b

    if-lt v12, v1, :cond_4b

    .line 787
    :cond_4f
    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 135
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v0, :cond_2

    .line 136
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->ignoreHeightCheck:Z

    if-eqz v3, :cond_0

    .line 137
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

    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 139
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

    .line 141
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

    .line 144
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setColors(III)V
    .locals 0

    .line 117
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    .line 118
    iput p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    .line 119
    iput p3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setIgnoreHeightCheck(Z)V
    .locals 0

    .line 963
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->ignoreHeightCheck:Z

    return-void
.end method

.method public setIsSingleCell(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    return-void
.end method

.method public setItemsCount(I)V
    .locals 0

    .line 941
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .line 936
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    .line 937
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 931
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    .line 932
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setParentSize(IIF)V
    .locals 0

    .line 953
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentWidth:I

    .line 954
    iput p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentHeight:I

    .line 955
    iput p3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    return-void
.end method

.method public setUseHeaderOffset(Z)V
    .locals 0

    .line 923
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->useHeaderOffset:Z

    return-void
.end method

.method public setViewType(I)V
    .locals 5

    .line 93
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 95
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 96
    iput-object v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 98
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

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showDate(Z)V
    .locals 0

    .line 919
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    return-void
.end method

.method public skipDrawItemsCount(I)V
    .locals 0

    .line 927
    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->skipDrawItemsCount:I

    return-void
.end method

.method public updateColors()V
    .locals 26

    move-object/from16 v0, p0

    .line 831
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v1, :cond_0

    .line 832
    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    return-void

    .line 835
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v1

    .line 836
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v2

    .line 837
    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color1:I

    if-ne v3, v2, :cond_1

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color0:I

    if-eq v3, v1, :cond_4

    .line 838
    :cond_1
    iput v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color0:I

    .line 839
    iput v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color1:I

    .line 840
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

    .line 843
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

    .line 841
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

    .line 845
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

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    return-void

    .line 795
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 796
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

    .line 803
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentWidth:I

    if-nez v4, :cond_3

    .line 805
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 807
    :cond_3
    iget v5, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentHeight:I

    if-nez v5, :cond_4

    .line 809
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 811
    :cond_4
    iput-wide v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->lastUpdateTime:J

    .line 812
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

    .line 819
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

    .line 821
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    .line 823
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    iget v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    .line 813
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

    .line 815
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    .line 817
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 825
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_9

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_9
    return-void
.end method
