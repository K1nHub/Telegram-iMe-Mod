.class public Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;
.super Ljava/lang/Object;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeAccent"
.end annotation


# instance fields
.field public accentColor:I

.field public accentColor2:I

.field public account:I

.field public backgroundGradientOverrideColor1:J

.field public backgroundGradientOverrideColor2:J

.field public backgroundGradientOverrideColor3:J

.field public backgroundOverrideColor:J

.field public backgroundRotation:I

.field public id:I

.field public info:Lorg/telegram/tgnet/TLRPC$TL_theme;

.field public isDefault:Z

.field public myMessagesAccentColor:I

.field public myMessagesAnimated:Z

.field public myMessagesGradientAccentColor1:I

.field public myMessagesGradientAccentColor2:I

.field public myMessagesGradientAccentColor3:I

.field public overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

.field public parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field public pattern:Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

.field public patternIntensity:F

.field public patternMotion:Z

.field public patternSlug:Ljava/lang/String;

.field private tempHSV:[F

.field public uploadedFile:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadedThumb:Lorg/telegram/tgnet/TLRPC$InputFile;

.field public uploadingFile:Ljava/lang/String;

.field public uploadingThumb:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 1405
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const-string v0, ""

    .line 1406
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1787
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    return-void
.end method

.method private varargs averageColor(Ljava/util/HashMap;[Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1858
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 1859
    aget-object v6, p2, v1

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 1863
    :cond_0
    :try_start_0
    aget-object v6, p2, v1

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1864
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 1865
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 1866
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    const/16 p1, 0xff

    .line 1873
    div-int/2addr v3, v2

    div-int/2addr v4, v2

    div-int/2addr v5, v2

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private bubbleSelectedOverlay(II)I
    .locals 4

    .line 1802
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1803
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1804
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1805
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 1806
    aput v1, p1, v0

    .line 1808
    :cond_0
    aget v0, p1, p2

    const v1, 0x3f19999a    # 0.6f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, p2

    .line 1809
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x2

    aget v0, p1, p2

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, p2

    const/16 p1, 0x1e

    .line 1810
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private getHue(I)F
    .locals 1

    .line 1798
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1799
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method private linkSelectionBackground(IIZ)I
    .locals 4

    const/high16 v0, 0x3e800000    # 0.25f

    .line 1835
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1836
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v0, p1, p2

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, p2

    .line 1837
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x2

    aget v0, p1, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    aput p3, p1, p2

    const/16 p1, 0x33

    .line 1838
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private locationPlaceholderColor(FIZ)I
    .locals 5

    if-eqz p3, :cond_0

    const p1, 0x1effffff

    return p1

    .line 1844
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1845
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x1

    aget v0, p2, p3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-lez v0, :cond_2

    aget v0, p2, v3

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    aget v0, p2, v3

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1849
    :cond_1
    aget p1, p2, v1

    const v0, 0x3e6147ae    # 0.22f

    add-float/2addr p1, v0

    invoke-static {p1, v4, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    aput p1, p2, v1

    .line 1850
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, p3

    const v0, 0x3eb33333    # 0.35f

    sub-float/2addr p2, v0

    invoke-static {p2, v4, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, p3

    goto :goto_1

    .line 1846
    :cond_2
    :goto_0
    aput p1, p2, v1

    const p1, 0x3e4ccccd    # 0.2f

    .line 1847
    aput p1, p2, p3

    .line 1852
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, v3

    const p3, 0x3f266666    # 0.65f

    sub-float/2addr p2, p3

    invoke-static {p2, v4, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, v3

    const/16 p1, 0x5a

    .line 1853
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionBackground(ZII)I
    .locals 4

    .line 1813
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p3, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1814
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x0

    aget v0, p1, p3

    .line 1815
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1816
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v1, p1, p2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    aget v1, p1, p3

    const/high16 v3, 0x42340000    # 45.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    aget v1, p1, p3

    const/high16 v3, 0x42aa0000    # 85.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 1817
    :cond_0
    aput v0, p1, p3

    .line 1819
    :cond_1
    aget p3, p1, p2

    const/4 v0, 0x2

    aget v1, p1, v0

    const v3, 0x3f59999a    # 0.85f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_2
    const v1, 0x3ee66666    # 0.45f

    :goto_0
    add-float/2addr p3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    aput p3, p1, p2

    .line 1820
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, v0

    const p3, 0x3e19999a    # 0.15f

    sub-float/2addr p2, p3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v0

    const/16 p1, 0x50

    .line 1821
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionHandle(II)I
    .locals 6

    .line 1824
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1825
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1826
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1827
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    aget v3, p2, v0

    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    aget v3, p2, v0

    const/high16 v5, 0x42aa0000    # 85.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 1828
    :cond_0
    aput v1, p2, v0

    .line 1830
    :cond_1
    aget v0, p2, v2

    const v1, 0x3f19999a    # 0.6f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p2, v2

    .line 1831
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x2

    aget v2, p2, v0

    aget v3, p2, v0

    const v5, 0x3f333333    # 0.7f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    const/high16 v3, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3e000000    # 0.125f

    :goto_0
    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p2, v0

    const/16 p2, 0xff

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public fillAccentColors(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 1458
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->access$900(I)[F

    move-result-object v4

    const/4 v5, 0x2

    .line 1459
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->access$900(I)[F

    move-result-object v5

    .line 1461
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v6, v6, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    invoke-static {v6, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1462
    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-static {v6, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1463
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v6

    .line 1465
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v8, v8, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    if-ne v7, v8, :cond_0

    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v7, :cond_4

    .line 1466
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1467
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1000()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 1468
    new-instance v9, Ljava/util/HashSet;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 1469
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1470
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1471
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1100()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1473
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1474
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_2

    .line 1476
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 1477
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    if-nez v9, :cond_3

    .line 1482
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1000()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1485
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v4, v5, v10, v6}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZ)I

    move-result v10

    .line 1486
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v10, v9, :cond_1

    .line 1487
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1491
    :cond_4
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    const v8, 0x3f347ae1    # 0.705f

    const-string v9, "chat_outBubble"

    const/4 v10, 0x0

    if-nez v7, :cond_5

    .line 1492
    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v11, :cond_c

    :cond_5
    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v11, :cond_c

    if-eqz v7, :cond_6

    goto :goto_1

    .line 1493
    :cond_6
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 1494
    :goto_1
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_7

    .line 1496
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1000()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1498
    :cond_7
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v4, v5, v12, v6}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZ)I

    move-result v12

    .line 1499
    invoke-static {v7, v12}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v12

    .line 1500
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v7, v13}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v13

    .line 1503
    iget v14, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v14, :cond_a

    .line 1504
    iget v14, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v14

    .line 1505
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v14

    .line 1506
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v15, :cond_8

    .line 1507
    invoke-static {v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v14

    .line 1509
    :cond_8
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v14

    cmpl-float v14, v14, v8

    if-lez v14, :cond_9

    const/4 v14, 0x1

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    goto :goto_2

    .line 1511
    :cond_a
    iget v14, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->access$1200(II)Z

    move-result v14

    :goto_2
    if-eqz v14, :cond_b

    const v14, 0x88b8

    if-gt v12, v14, :cond_b

    if-gt v13, v14, :cond_b

    const/4 v12, 0x1

    goto :goto_3

    :cond_b
    const/4 v12, 0x0

    .line 1518
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v4, v11, v7}, Lorg/telegram/ui/ActionBar/Theme;->access$1300([FII)I

    move-result v7

    goto :goto_4

    :cond_c
    const/4 v12, 0x0

    :goto_4
    if-eqz v7, :cond_f

    .line 1521
    iget-object v11, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v11, v11, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    if-eqz v11, :cond_d

    if-ne v7, v11, :cond_e

    :cond_d
    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v11, :cond_f

    if-eq v11, v7, :cond_f

    :cond_e
    const/4 v11, 0x1

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_10

    .line 1522
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_1b

    .line 1523
    :cond_10
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_11

    .line 1524
    invoke-static {v13, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_6

    .line 1526
    :cond_11
    invoke-static {v7, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1529
    :goto_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1400()Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1530
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-nez v15, :cond_12

    .line 1532
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 1533
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    goto :goto_8

    :cond_12
    if-nez v15, :cond_13

    .line 1538
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1000()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/Integer;

    :cond_13
    if-nez v15, :cond_15

    :cond_14
    :goto_8
    const/4 v3, 0x1

    goto :goto_7

    .line 1543
    :cond_15
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v5, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZ)I

    move-result v3

    .line 1544
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v3, v15, :cond_14

    .line 1545
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_16
    if-eqz v11, :cond_1b

    .line 1550
    invoke-static {v7, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1551
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1500()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1552
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-nez v11, :cond_18

    .line 1554
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_18

    .line 1555
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_18

    goto :goto_9

    :cond_18
    if-nez v11, :cond_19

    .line 1560
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1000()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    :cond_19
    if-nez v11, :cond_1a

    goto :goto_9

    .line 1565
    :cond_1a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v4, v5, v13, v6}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZ)I

    move-result v13

    .line 1566
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v13, v11, :cond_17

    .line 1567
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1b
    const/4 v1, -0x1

    const-string v3, "chat_messageLinkOut"

    const-string v4, "chat_outLoader"

    if-nez v12, :cond_21

    .line 1573
    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v5, :cond_21

    .line 1578
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v7, :cond_1e

    .line 1579
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1580
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1581
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v7, :cond_1c

    .line 1582
    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1584
    :cond_1c
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_a

    :cond_1d
    const/4 v5, 0x0

    goto :goto_a

    .line 1586
    :cond_1e
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->access$1200(II)Z

    move-result v5

    :goto_a
    if-eqz v5, :cond_1f

    const v5, -0xdededf

    const v7, -0xaaaaab

    const/high16 v8, 0x4d000000    # 1.34217728E8f

    goto :goto_b

    :cond_1f
    const v7, -0x111112

    const v8, 0x4dffffff    # 5.3687088E8f

    const/4 v5, -0x1

    .line 1598
    :goto_b
    iget v11, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-nez v11, :cond_20

    .line 1599
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "chat_outAudioProgress"

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "chat_outAudioSelectedProgress"

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "chat_outAudioSeekbar"

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "chat_outAudioCacheSeekbar"

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "chat_outAudioSeekbarSelected"

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "chat_outAudioSeekbarFill"

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "chat_outVoiceSeekbar"

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outVoiceSeekbarSelected"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outVoiceSeekbarFill"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outForwardedNameText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outViaBotNameText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outReplyLine"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outReplyNameText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outPreviewLine"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outSiteNameText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outInstant"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outInstantSelected"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outPreviewInstantText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outPreviewInstantSelectedText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outViews"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outViewsSelected"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outAudioTitleText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outFileNameText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outContactNameText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outAudioPerfomerText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outAudioPerfomerSelectedText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outSentCheck"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outSentCheckSelected"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outSentCheckRead"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outSentCheckReadSelected"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outSentClock"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outSentClockSelected"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outMenu"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outMenuSelected"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outTimeText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outTimeSelectedText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outAudioDurationText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outAudioDurationSelectedText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outContactPhoneText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outContactPhoneSelectedText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outFileInfoText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outFileInfoSelectedText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "chat_outVenueInfoText"

    invoke-virtual {v2, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outVenueInfoSelectedText"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outLoaderSelected"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outFileProgress"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outFileProgressSelected"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outMediaIcon"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outMediaIconSelected"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    :cond_20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outReplyMessageText"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outReplyMediaMessageText"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outReplyMediaMessageSelectedText"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "chat_messageTextOut"

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    if-eqz v12, :cond_23

    .line 1676
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1677
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_c

    :cond_22
    const/4 v4, 0x0

    .line 1679
    :goto_c
    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v1

    const/16 v4, 0x1388

    if-ge v1, v4, :cond_23

    const/4 v12, 0x0

    .line 1683
    :cond_23
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz v1, :cond_25

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v4, :cond_25

    .line 1684
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "chat_outBubbleGradient"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v1, :cond_24

    .line 1687
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "chat_outBubbleGradient2"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v1, :cond_24

    .line 1689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "chat_outBubbleGradient3"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    :cond_24
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "chat_outBubbleGradientAnimated"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    :cond_25
    iget-wide v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v1, v4

    const-string v7, "chat_wallpaper"

    const-wide/16 v13, 0x0

    if-eqz v1, :cond_26

    .line 1696
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_26
    cmp-long v1, v4, v13

    if-eqz v1, :cond_27

    .line 1698
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    :cond_27
    :goto_d
    iget-wide v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v1, v4

    const-string v8, "chat_wallpaper_gradient_to"

    if-eqz v1, :cond_28

    .line 1702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_28
    cmp-long v1, v4, v13

    if-eqz v1, :cond_29

    .line 1704
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    :cond_29
    :goto_e
    iget-wide v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v1, v4

    const-string v11, "key_chat_wallpaper_gradient_to2"

    if-eqz v1, :cond_2a

    .line 1708
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2a
    cmp-long v1, v4, v13

    if-eqz v1, :cond_2b

    .line 1710
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    :cond_2b
    :goto_f
    iget-wide v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v1, v4

    const-string v15, "key_chat_wallpaper_gradient_to3"

    if-eqz v1, :cond_2c

    .line 1714
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_2c
    cmp-long v1, v4, v13

    if-eqz v1, :cond_2d

    .line 1716
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    :cond_2d
    :goto_10
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_2e

    .line 1719
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "chat_wallpaper_gradient_rotation"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    :cond_2e
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2f

    .line 1724
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2f
    const-string v4, "chat_inBubble"

    .line 1726
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_30

    .line 1728
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1731
    :cond_30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1732
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v4, :cond_33

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    if-eqz v4, :cond_33

    if-nez v6, :cond_33

    const-string v4, "chat_selectedBackground"

    .line 1733
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    filled-new-array {v8, v11, v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Ljava/util/HashMap;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_31

    .line 1736
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Ljava/util/HashMap;[Ljava/lang/String;)I

    move-result v4

    :cond_31
    if-nez v4, :cond_32

    .line 1739
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 1742
    :cond_32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v0, v7, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v4

    .line 1743
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outBubbleSelectedOverlay"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outBubbleGradientSelectedOverlay"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "chat_outBubbleSelected"

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v4

    .line 1748
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_inBubbleSelectedOverlay"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "chat_inBubbleSelected"

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    if-nez v6, :cond_34

    .line 1753
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v10, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "chat_inTextSelectionHighlight"

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    const/4 v8, 0x1

    invoke-direct {v0, v8, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "chat_outTextSelectionHighlight"

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionHandle(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "chat_outTextSelectionCursor"

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    const-string v4, "windowBackgroundWhiteBlueText"

    .line 1758
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getHue(I)F

    move-result v4

    .line 1759
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v0, v4, v7, v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "chat_outBubbleLocationPlaceholder"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v0, v4, v7, v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "chat_inBubbleLocationPlaceholder"

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "chat_messageLinkIn"

    .line 1762
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_35

    .line 1764
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1766
    :cond_35
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_36

    .line 1768
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1770
    :cond_36
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, v3, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "chat_linkSelectBackground"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v3, v1, v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "chat_outLinkSelectBackground"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "actionBarDefaultSubmenuBackground"

    .line 1773
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_37

    .line 1775
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1778
    :cond_37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 1779
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1780
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1781
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1777
    invoke-static {v1, v4, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "actionBarDefaultSubmenuSeparator"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    xor-int/2addr v1, v12

    return v1
.end method

.method public getPathToWallpaper()Ljava/io/File;
    .locals 8

    .line 1877
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-ge v0, v6, :cond_1

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    aput-object v2, v4, v1

    const-string v1, "%s_%d_%s_v5.jpg"

    invoke-static {v6, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-object v5

    .line 1880
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    aput-object v2, v4, v1

    const-string v1, "%s_%d_%s_v8_debug.jpg"

    invoke-static {v6, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    return-object v5
.end method

.method public saveToFile()Ljava/io/File;
    .locals 19

    move-object/from16 v1, p0

    .line 1885
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v0

    .line 1886
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1887
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1906
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v6, v5, v7

    .line 1887
    iget v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v5, v9

    const-string v6, "%s_%d.attheme"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1889
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1890
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1891
    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Ljava/util/HashMap;Ljava/util/HashMap;)Z

    .line 1895
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v6, "key_chat_wallpaper_gradient_to3"

    const-string v10, "key_chat_wallpaper_gradient_to2"

    const-string v11, "chat_wallpaper_gradient_to"

    const-string v12, "chat_wallpaper"

    if-nez v0, :cond_c

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    iget-boolean v13, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    if-eqz v13, :cond_0

    const-string v13, "motion"

    .line 1898
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    :cond_0
    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_1

    const/4 v13, -0x1

    .line 1902
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1904
    :cond_1
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-nez v14, :cond_2

    move-object v14, v8

    .line 1908
    :cond_2
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-nez v15, :cond_3

    move-object v15, v8

    .line 1912
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    if-nez v16, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v8, v16

    :goto_0
    const-string v3, "chat_wallpaper_gradient_rotation"

    .line 1916
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_5

    const/16 v3, 0x2d

    .line 1918
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/Object;

    .line 1920
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    shr-int/lit8 v4, v18, 0x10

    int-to-byte v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v7

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x1

    aput-object v4, v9, v17

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v13, 0x2

    aput-object v4, v9, v13

    const-string v4, "%02x%02x%02x"

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1921
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x3

    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v7, v18

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x1

    aput-object v13, v7, v17

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v7, v14

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    .line 1922
    :goto_1
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v14, v18

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x1

    aput-object v13, v14, v17

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v14, v15

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    .line 1923
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x0

    aput-object v15, v14, v18

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    shr-int/lit8 v15, v15, 0x8

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v15, 0x2

    aput-object v8, v14, v15

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-eqz v7, :cond_a

    if-eqz v13, :cond_a

    const-string v3, "~"

    if-eqz v4, :cond_9

    .line 1926
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 1928
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_a
    if-eqz v7, :cond_b

    .line 1931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1932
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&rotation="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1934
    :cond_b
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://attheme.org?slug="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&intensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v4, v4, v7

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&bg_color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1935
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 1936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&mode="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    .line 1940
    :cond_d
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1941
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "\n"

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1942
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 1944
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_6

    .line 1948
    :cond_f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1952
    :cond_10
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1953
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1954
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WLS="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1962
    :cond_11
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 1958
    :goto_7
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_12

    .line 1962
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 1965
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_12
    :goto_8
    return-object v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_9
    if-eqz v3, :cond_13

    .line 1962
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 1965
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1967
    :cond_13
    :goto_a
    throw v2
.end method
