.class Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
.super Landroid/view/View;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoriesTabsView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;
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

.field private progress:F

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrolling:Z

.field private scrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final selectPaint:Landroid/graphics/Paint;

.field private final tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

.field final synthetic this$0:Lorg/telegram/ui/Components/MediaActivity;

.field private touchDown:Z

.field private value:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 1365
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    .line 1366
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    .line 1261
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    .line 1357
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->selectPaint:Landroid/graphics/Paint;

    .line 1363
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xd2

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->scrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1367
    iput-object p3, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1369
    new-instance p2, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    sget p3, Lorg/telegram/messenger/R$raw;->msg_stories_saved:I

    sget v1, Lorg/telegram/messenger/R$string;->ProfileMyStoriesTab:I

    const-string v2, "ProfileMyStoriesTab"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2, p3, v1}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;-><init>(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;IILjava/lang/CharSequence;)V

    aput-object p2, p1, v2

    .line 1370
    new-instance p2, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    sget p3, Lorg/telegram/messenger/R$raw;->msg_stories_archive:I

    sget v1, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveTab:I

    const-string v3, "ProfileStoriesArchiveTab"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p0, v0, p3, v1}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;-><init>(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;IILjava/lang/CharSequence;)V

    aput-object p2, p1, v0

    .line 1371
    new-instance p2, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    sget p3, Lorg/telegram/messenger/R$raw;->fork_stories_settings:I

    sget v0, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v1, "Settings"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1, p3, v0}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;-><init>(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;IILjava/lang/CharSequence;)V

    aput-object p2, p1, v1

    const/16 p1, 0xc

    .line 1373
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p2, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 1375
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->setProgress(FZ)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 1258
    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private setProgress(FZ)V
    .locals 4

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->progress:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->value:I

    const/4 p1, 0x0

    move v0, p1

    .line 1392
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1393
    aget-object v1, v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->value:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    aget-object v3, v3, v0

    invoke-static {v3}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->access$2300(Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;)Z

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
    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->setActive(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1395
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1405
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1407
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

    .line 1409
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v2, v2

    div-int/2addr v1, v2

    const/16 v2, 0x40

    .line 1410
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1412
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->scrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->scrolling:Z

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

    .line 1415
    iget v5, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->progress:F

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v4, v15

    iget v15, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->progress:F

    float-to-double v6, v15

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    add-double/2addr v4, v11

    .line 1416
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->selectPaint:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v11, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

    .line 1417
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    iget v6, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->progress:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v7, v5, v10

    add-float/2addr v6, v7

    iget v11, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->progress:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v5, v11

    add-float/2addr v5, v7

    iget v7, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->progress:F

    float-to-int v11, v7

    int-to-float v11, v11

    sub-float/2addr v7, v11

    invoke-static {v6, v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    add-float/2addr v4, v5

    .line 1418
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v6, v2

    div-float/2addr v6, v10

    sub-float v7, v4, v6

    .line 1420
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v6

    const/16 v6, 0x29

    .line 1422
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v6, v12

    .line 1418
    invoke-virtual {v5, v7, v11, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1424
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->selectPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object v11, v7

    :goto_0
    const/4 v5, 0x0

    .line 1427
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 1428
    aget-object v6, v6, v5

    .line 1429
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    mul-int v12, v5, v1

    add-int/2addr v7, v12

    .line 1430
    iget-object v12, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    int-to-float v13, v7

    add-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15, v7, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1432
    iget v7, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->progress:F

    int-to-float v12, v5

    sub-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    sub-float v7, v12, v7

    .line 1433
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    iget-object v14, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v13, v4, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->setColor(I)V

    .line 1435
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v13, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    .line 1436
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    int-to-float v15, v2

    div-float/2addr v15, v10

    sub-float/2addr v13, v15

    float-to-int v13, v13

    .line 1437
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iget-object v8, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    .line 1438
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    add-float/2addr v8, v15

    float-to-int v8, v8

    const/16 v15, 0x29

    .line 1439
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 1435
    invoke-virtual {v4, v13, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1441
    iget-object v8, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->nonscrollingT:Lorg/telegram/ui/Components/AnimatedFloat;

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

    .line 1443
    iget-object v8, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->selectPaint:Landroid/graphics/Paint;

    iget-object v9, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

    .line 1444
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v7, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/16 v8, 0x10

    .line 1445
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v12, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->selectPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v7, v9, v10, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    const/16 v8, 0x10

    .line 1448
    :goto_3
    iget-object v7, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1449
    iget-object v7, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/16 v7, 0x1d

    .line 1451
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 1452
    iget-object v9, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    .line 1453
    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    int-to-float v7, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    sub-float/2addr v9, v7

    float-to-int v9, v9

    const v10, 0x41c547ae    # 24.66f

    .line 1454
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    sub-float/2addr v12, v7

    float-to-int v12, v12

    iget-object v13, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    .line 1455
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    add-float/2addr v13, v7

    float-to-int v13, v13

    .line 1456
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    add-float/2addr v10, v7

    float-to-int v7, v10

    .line 1452
    invoke-virtual {v4, v9, v12, v13, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1459
    iget-object v7, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1460
    iget-object v4, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->drawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1462
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1463
    iget-object v4, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v7, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->layoutWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    sub-float/2addr v4, v7

    iget v7, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->layoutLeft:F

    sub-float/2addr v4, v7

    const/16 v7, 0x32

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    sub-float/2addr v7, v10

    invoke-virtual {v11, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1464
    iget-object v4, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v11}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1465
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

    .line 1520
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x40

    .line 1521
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 1519
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1473
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->touchDown:Z

    return v1

    .line 1475
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

    .line 1505
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    .line 1506
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    move p1, v3

    .line 1507
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v2, v0

    if-ge p1, v2, :cond_2

    .line 1508
    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v2, v3, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1511
    :cond_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->touchDown:Z

    return v1

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 1477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move v5, v3

    .line 1478
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v7, v6

    if-ge v5, v7, :cond_8

    .line 1479
    aget-object v7, v6, v5

    iget-object v7, v7, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_7

    aget-object v6, v6, v5

    iget-object v6, v6, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->clickRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_7

    if-eq v5, v2, :cond_4

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1482
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "stories"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return v3

    .line 1486
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 1487
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->touchDown:Z

    if-eqz v0, :cond_5

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    aget-object v0, v0, v5

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v4, v3, [I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1490
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    aget-object v0, v0, v5

    iget-object v0, v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

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

    .line 1496
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v4, v4

    if-ge v2, v4, :cond_b

    if-ne v2, v0, :cond_9

    .line 1497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_a

    .line 1498
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    new-array v5, v3, [I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    if-ltz v0, :cond_c

    .line 1501
    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->value:I

    if-eq v1, v0, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->onTabClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_c

    .line 1502
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1504
    :cond_c
    iput-boolean v3, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->touchDown:Z

    .line 1514
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

    .line 1400
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->onTabClick:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1387
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->setProgress(FZ)V

    return-void
.end method

.method public setScrolling(Z)V
    .locals 1

    .line 1379
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->scrolling:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1382
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->scrolling:Z

    .line 1383
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1527
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;->tabs:[Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1528
    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView$Tab;->ripple:Landroid/graphics/drawable/Drawable;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1532
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method
