.class public Lorg/telegram/ui/Components/BottomPagerTabs;
.super Landroid/view/View;
.source "BottomPagerTabs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BottomPagerTabs$Tab;
    }
.end annotation


# instance fields
.field private onTabClick:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private progress:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrolling:Z

.field private scrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final selectPaint:Landroid/graphics/Paint;

.field private final tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

.field private touchDown:Z

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 8

    .line 156
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->selectPaint:Landroid/graphics/Paint;

    .line 153
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xd2

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->scrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 157
    iput-object p3, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 158
    iput-object p2, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 160
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomPagerTabs;->createTabs()[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    const/16 p1, 0xc

    .line 162
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 164
    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/BottomPagerTabs;->setProgress(FZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BottomPagerTabs;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BottomPagerTabs;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BottomPagerTabs;)[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    return-object p0
.end method

.method private setProgress(FZ)V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->progress:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->value:I

    const/4 p1, 0x0

    move v0, p1

    .line 185
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 186
    aget-object v1, v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->value:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->access$300(Lorg/telegram/ui/Components/BottomPagerTabs$Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_0
    const v3, 0x3eb33333    # 0.35f

    :goto_1
    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move v2, p1

    :goto_2
    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->setActive(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public createTabs()[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 199
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v2, v2

    div-int/2addr v1, v2

    const/16 v2, 0x40

    .line 204
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 206
    iget-object v3, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->scrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->scrolling:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    const/16 v8, 0x9

    const/16 v9, 0x10

    const/high16 v10, 0x40000000    # 2.0f

    if-lez v5, :cond_0

    const-wide v11, 0x3fd99999a0000000L    # 0.4000000059604645

    const-wide v13, 0x3ff3333340000000L    # 1.2000000476837158

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    .line 209
    iget v5, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->progress:F

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v4, v15

    iget v15, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->progress:F

    float-to-double v6, v15

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    add-double/2addr v4, v11

    .line 210
    iget-object v6, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->selectPaint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v11, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const-wide/high16 v11, 0x4032000000000000L    # 18.0

    mul-double/2addr v4, v11

    float-to-double v11, v3

    mul-double/2addr v4, v11

    double-to-int v4, v4

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    iget v6, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->progress:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v7, v5, v10

    add-float/2addr v6, v7

    iget v11, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->progress:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v5, v11

    add-float/2addr v5, v7

    iget v7, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->progress:F

    float-to-int v11, v7

    int-to-float v11, v11

    sub-float/2addr v7, v11

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    add-float/2addr v4, v5

    .line 212
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v6, v2

    div-float/2addr v6, v10

    sub-float v7, v4, v6

    .line 214
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v6

    const/16 v6, 0x29

    .line 216
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v6, v12

    .line 212
    invoke-virtual {v5, v7, v11, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 218
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->selectPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object v11, v7

    :goto_0
    const/4 v5, 0x0

    .line 221
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 222
    aget-object v6, v6, v5

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    mul-int v12, v5, v1

    add-int/2addr v7, v12

    .line 224
    iget-object v12, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    int-to-float v13, v7

    add-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    iget v7, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->progress:F

    int-to-float v12, v5

    sub-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    sub-float v7, v12, v7

    .line 227
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    iget-object v14, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v4, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v13, v4, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->setColor(I)V

    .line 229
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v13, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    .line 230
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    int-to-float v15, v2

    div-float/2addr v15, v10

    sub-float/2addr v13, v15

    float-to-int v13, v13

    .line 231
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iget-object v8, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    .line 232
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    add-float/2addr v8, v15

    float-to-int v8, v8

    const/16 v15, 0x29

    .line 233
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 229
    invoke-virtual {v4, v13, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    iget-object v8, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->nonscrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

    const v9, 0x3f19999a    # 0.6f

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v7

    cmpg-float v8, v3, v12

    if-gez v8, :cond_2

    .line 237
    iget-object v8, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->selectPaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    const/high16 v10, 0x41900000    # 18.0f

    mul-float/2addr v7, v10

    sub-float/2addr v12, v3

    mul-float/2addr v7, v12

    float-to-int v7, v7

    invoke-static {v9, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v7, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/16 v8, 0x10

    .line 239
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v12, v0, Lorg/telegram/ui/Components/BottomPagerTabs;->selectPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v7, v9, v10, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    const/16 v8, 0x10

    .line 242
    :goto_3
    iget-object v7, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 243
    iget-object v7, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v7, 0x1d

    .line 245
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 246
    iget-object v9, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    .line 247
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    int-to-float v7, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    sub-float/2addr v9, v7

    float-to-int v9, v9

    const v10, 0x41c547ae    # 24.66f

    .line 248
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    sub-float/2addr v12, v7

    float-to-int v12, v12

    iget-object v13, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    .line 249
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    add-float/2addr v13, v7

    float-to-int v13, v13

    .line 250
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v10, v7

    float-to-int v7, v10

    .line 246
    invoke-virtual {v4, v9, v12, v13, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    iget-object v7, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 254
    iget-object v4, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    iget-object v4, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v7, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->layoutWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    sub-float/2addr v4, v7

    iget v7, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->layoutLeft:F

    sub-float/2addr v4, v7

    const/16 v7, 0x32

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    sub-float/2addr v7, v10

    invoke-virtual {v11, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    iget-object v4, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    move v10, v9

    move v9, v8

    const/16 v8, 0x9

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 314
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x40

    .line 315
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 313
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 267
    iput-boolean v1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->touchDown:Z

    return v1

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 300
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    move p1, v3

    .line 301
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 302
    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v2, v3, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 305
    :cond_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->touchDown:Z

    return v1

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v5, v3

    .line 272
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v7, v6

    if-ge v5, v7, :cond_8

    .line 273
    aget-object v7, v6, v5

    iget-object v7, v7, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_7

    aget-object v6, v6, v5

    iget-object v6, v6, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->clickRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_7

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/Components/MediaActivity;

    if-eqz v0, :cond_4

    if-eq v5, v2, :cond_4

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "stories"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return v3

    .line 280
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 281
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->touchDown:Z

    if-eqz v0, :cond_5

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    aget-object v0, v0, v5

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v4, v3, [I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 284
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    aget-object v0, v0, v5

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    move v0, v5

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    move v2, v3

    .line 290
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v4, v4

    if-ge v2, v4, :cond_b

    if-ne v2, v0, :cond_9

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_a

    .line 292
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v5, v3, [I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    if-ltz v0, :cond_c

    .line 295
    iget v1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->value:I

    if-eq v1, v0, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->onTabClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_c

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 298
    :cond_c
    iput-boolean v3, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->touchDown:Z

    .line 308
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->onTabClick:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/BottomPagerTabs;->setProgress(FZ)V

    return-void
.end method

.method public setScrolling(Z)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->scrolling:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 175
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->scrolling:Z

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    .line 321
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/BottomPagerTabs;->tabs:[Lorg/telegram/ui/Components/BottomPagerTabs$Tab;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 322
    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/Components/BottomPagerTabs$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
