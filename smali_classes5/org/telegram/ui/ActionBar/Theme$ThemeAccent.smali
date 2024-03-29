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

    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 1535
    iput v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const-string v0, ""

    .line 1536
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1919
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    return-void
.end method

.method private varargs averageColor(Landroid/util/SparseIntArray;[I)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 2007
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 2008
    aget v6, p2, v1

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    .line 2012
    :cond_0
    :try_start_0
    aget v6, p2, v1

    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 2013
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 2014
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 2015
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

    .line 2022
    div-int/2addr v3, v2

    div-int/2addr v4, v2

    div-int/2addr v5, v2

    invoke-static {p1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private bubbleSelectedOverlay(II)I
    .locals 4

    .line 1934
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1935
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1936
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1937
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 1938
    aput v1, p1, v0

    .line 1940
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

    .line 1941
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

    .line 1942
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private codeBackground(IZ)I
    .locals 6

    .line 1973
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    const/16 p2, 0x40

    .line 1977
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v4, v3, v0

    const v5, 0x3da3d70a    # 0.08f

    sub-float/2addr v4, v5

    invoke-static {v4, p1, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    aput p1, v3, v0

    .line 1978
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const v0, 0x3cf5c28f    # 0.03f

    aput v0, p1, v2

    goto :goto_2

    .line 1980
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v3, p2, v0

    cmpg-float v3, v3, v1

    if-lez v3, :cond_2

    aget v3, p2, v2

    cmpl-float v3, v3, p1

    if-gez v3, :cond_2

    aget v3, p2, v2

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_1

    goto :goto_0

    .line 1983
    :cond_1
    aget v3, p2, v0

    const v4, 0x3e8f5c29    # 0.28f

    add-float/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, p2, v0

    .line 1984
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v0, p2, v2

    const v3, -0x42333333    # -0.1f

    add-float/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p2, v2

    goto :goto_1

    .line 1981
    :cond_2
    :goto_0
    aget v0, p2, v2

    const v3, -0x41b33333    # -0.2f

    add-float/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p2, v2

    :goto_1
    const/16 p2, 0x20

    .line 1987
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private getHue(I)F
    .locals 1

    .line 1930
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1931
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method private linkSelectionBackground(IIZ)I
    .locals 4

    const/high16 v0, 0x3e800000    # 0.25f

    .line 1967
    invoke-static {p1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1968
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

    .line 1969
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p2, 0x2

    aget v0, p1, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    aput p3, p1, p2

    const/16 p1, 0x33

    .line 1970
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

    .line 1993
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1994
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x1

    aget v0, p2, p3

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-lez v0, :cond_2

    aget v0, p2, v4

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    aget v0, p2, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1998
    :cond_1
    aget p1, p2, v2

    const v0, 0x3e6147ae    # 0.22f

    add-float/2addr p1, v0

    invoke-static {p1, v1, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    aput p1, p2, v2

    .line 1999
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, p3

    const v0, 0x3eb33333    # 0.35f

    sub-float/2addr p2, v0

    invoke-static {p2, v1, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, p3

    goto :goto_1

    .line 1995
    :cond_2
    :goto_0
    aput p1, p2, v2

    const p1, 0x3e4ccccd    # 0.2f

    .line 1996
    aput p1, p2, p3

    .line 2001
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget p2, p1, v4

    const p3, 0x3f266666    # 0.65f

    sub-float/2addr p2, p3

    invoke-static {p2, v1, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    aput p2, p1, v4

    const/16 p1, 0x5a

    .line 2002
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionBackground(ZII)I
    .locals 4

    .line 1945
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p3, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1946
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 p3, 0x0

    aget v0, p1, p3

    .line 1947
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1948
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

    .line 1949
    :cond_0
    aput v0, p1, p3

    .line 1951
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

    .line 1952
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

    .line 1953
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private textSelectionHandle(II)I
    .locals 6

    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1957
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v0, 0x0

    aget v1, p2, v0

    .line 1958
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1959
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

    .line 1960
    :cond_0
    aput v1, p2, v0

    .line 1962
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

    .line 1963
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

    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {p2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 1588
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v4

    const/4 v5, 0x2

    .line 1589
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTempHsv(I)[F

    move-result-object v6

    .line 1591
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    invoke-static {v7, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1592
    iget v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-static {v7, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1593
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v7

    .line 1595
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v9, v9, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_0

    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v8, :cond_5

    :cond_0
    move v8, v11

    .line 1596
    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()[I

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_5

    .line 1598
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$1000()Ljava/util/HashSet;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    .line 1601
    :cond_1
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_3

    .line 1604
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Landroid/util/SparseIntArray;

    move-result-object v9

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ltz v9, :cond_2

    .line 1605
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_2

    goto :goto_2

    .line 1608
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()[I

    move-result-object v9

    aget v9, v9, v8

    goto :goto_1

    .line 1610
    :cond_3
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 1612
    :goto_1
    invoke-static {v4, v6, v9, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v12

    if-eq v12, v9, :cond_4

    .line 1614
    invoke-virtual {v2, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1618
    :cond_5
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    const v9, 0x3f347ae1    # 0.705f

    if-nez v8, :cond_6

    .line 1619
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v12, :cond_d

    :cond_6
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v12, :cond_d

    if-eqz v8, :cond_7

    goto :goto_3

    .line 1620
    :cond_7
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 1621
    :goto_3
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-nez v13, :cond_8

    .line 1623
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()[I

    move-result-object v13

    aget v13, v13, v12

    .line 1625
    :cond_8
    invoke-static {v4, v6, v13, v7, v13}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v12

    .line 1626
    invoke-static {v8, v12}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v12

    .line 1627
    iget v14, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v8, v14}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v14

    .line 1630
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v15, :cond_b

    .line 1631
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1632
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1633
    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v15, :cond_9

    .line 1634
    invoke-static {v5, v15}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v5

    .line 1636
    :cond_9
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v5

    cmpl-float v5, v5, v9

    if-lez v5, :cond_a

    move v5, v3

    goto :goto_4

    :cond_a
    move v5, v11

    goto :goto_4

    .line 1638
    :cond_b
    iget v5, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    iget v15, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->access$1100(II)Z

    move-result v5

    :goto_4
    if-eqz v5, :cond_c

    const v5, 0x88b8

    if-gt v12, v5, :cond_c

    if-gt v14, v5, :cond_c

    move v5, v3

    goto :goto_5

    :cond_c
    move v5, v11

    .line 1645
    :goto_5
    invoke-static {v4, v13, v8}, Lorg/telegram/ui/ActionBar/Theme;->access$1200([FII)I

    move-result v8

    goto :goto_6

    :cond_d
    move v5, v11

    :goto_6
    if-eqz v8, :cond_10

    .line 1647
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v12, v12, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->accentBaseColor:I

    if-eqz v12, :cond_e

    if-ne v8, v12, :cond_f

    :cond_e
    iget v12, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    if-eqz v12, :cond_10

    if-eq v12, v8, :cond_10

    :cond_f
    move v12, v3

    goto :goto_7

    :cond_10
    move v12, v11

    :goto_7
    if-nez v12, :cond_11

    .line 1648
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_1a

    .line 1649
    :cond_11
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-eqz v13, :cond_12

    .line 1650
    invoke-static {v13, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_8

    .line 1652
    :cond_12
    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1655
    :goto_8
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->myMessagesStartIndex:I

    :goto_9
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->myMessagesEndIndex:I

    if-ge v13, v14, :cond_16

    .line 1656
    invoke-virtual {v1, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v14

    if-gez v14, :cond_14

    .line 1659
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Landroid/util/SparseIntArray;

    move-result-object v14

    invoke-virtual {v14, v13, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-ltz v14, :cond_13

    .line 1660
    invoke-virtual {v1, v14, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-ltz v14, :cond_13

    goto :goto_b

    .line 1663
    :cond_13
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()[I

    move-result-object v14

    aget v14, v14, v13

    goto :goto_a

    .line 1665
    :cond_14
    invoke-virtual {v1, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 1667
    :goto_a
    invoke-static {v4, v6, v14, v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v15

    if-eq v15, v14, :cond_15

    .line 1669
    invoke-virtual {v2, v13, v15}, Landroid/util/SparseIntArray;->put(II)V

    :cond_15
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_16
    if-eqz v12, :cond_1a

    .line 1674
    invoke-static {v8, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1675
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesStartIndex:I

    :goto_c
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->myMessagesBubblesEndIndex:I

    if-ge v8, v12, :cond_1a

    .line 1676
    invoke-virtual {v1, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_18

    .line 1679
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$100()Landroid/util/SparseIntArray;

    move-result-object v12

    invoke-virtual {v12, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ltz v12, :cond_17

    .line 1680
    invoke-virtual {v1, v12, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-ltz v12, :cond_17

    goto :goto_e

    .line 1683
    :cond_17
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$900()[I

    move-result-object v12

    aget v12, v12, v8

    goto :goto_d

    .line 1685
    :cond_18
    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    .line 1687
    :goto_d
    invoke-static {v4, v6, v12, v7, v12}, Lorg/telegram/ui/ActionBar/Theme;->changeColorAccent([F[FIZI)I

    move-result v13

    if-eq v13, v12, :cond_19

    .line 1689
    invoke-virtual {v2, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    :cond_19
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1a
    if-nez v5, :cond_20

    .line 1695
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v1, :cond_20

    .line 1700
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v4, :cond_1d

    .line 1701
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    .line 1702
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    .line 1703
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v4, :cond_1b

    .line 1704
    invoke-static {v1, v4}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v1

    .line 1706
    :cond_1b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1c

    move v1, v3

    goto :goto_f

    :cond_1c
    move v1, v11

    goto :goto_f

    .line 1708
    :cond_1d
    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->access$1100(II)Z

    move-result v1

    :goto_f
    if-eqz v1, :cond_1e

    const v1, -0xdededf

    const v4, -0xaaaaab

    const/high16 v6, 0x4d000000    # 1.34217728E8f

    goto :goto_10

    :cond_1e
    const v4, -0x111112

    const v6, 0x4dffffff    # 5.3687088E8f

    move v1, v10

    .line 1720
    :goto_10
    iget v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor2:I

    if-nez v8, :cond_1f

    .line 1721
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioProgress:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSelectedProgress:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1723
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1724
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioCacheSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1725
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarSelected:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1726
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarFill:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1728
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbar:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1729
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarSelected:I

    invoke-virtual {v2, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1730
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarFill:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1732
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1733
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outForwardedNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1734
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViaBotNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1735
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1736
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1737
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1739
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewLine:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1740
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSiteNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1741
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstant:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstantSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1743
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1745
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViews:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1746
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViewsSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1748
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioTitleText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1749
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactNameText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerSelectedText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1758
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1761
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClock:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1762
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentClockSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1764
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenu:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenuSelected:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    invoke-virtual {v2, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1776
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1777
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1779
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1780
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoSelectedText:I

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoaderSelected:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgress:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgressSelected:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIcon:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIconSelected:I

    iget v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    :cond_1f
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1793
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1794
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_20
    if-eqz v5, :cond_22

    .line 1798
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_21

    .line 1799
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    goto :goto_11

    :cond_21
    move v1, v11

    .line 1801
    :goto_11
    invoke-static {v10, v1}, Lorg/telegram/messenger/AndroidUtilities;->getColorDistance(II)I

    move-result v1

    const/16 v4, 0x1388

    if-ge v1, v4, :cond_22

    move v5, v11

    .line 1805
    :cond_22
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAccentColor:I

    if-eqz v1, :cond_24

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    if-eqz v4, :cond_24

    .line 1806
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1807
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor1:I

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1808
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor2:I

    if-eqz v1, :cond_23

    .line 1809
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1810
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesGradientAccentColor3:I

    if-eqz v1, :cond_23

    .line 1811
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    :cond_23
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientAnimated:I

    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->myMessagesAnimated:Z

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1816
    :cond_24
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v1, v8

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_25

    .line 1818
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_12

    :cond_25
    cmp-long v1, v8, v12

    if-eqz v1, :cond_26

    .line 1820
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1822
    :cond_26
    :goto_12
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v1, v8

    if-eqz v1, :cond_27

    .line 1824
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_13

    :cond_27
    cmp-long v1, v8, v12

    if-eqz v1, :cond_28

    .line 1826
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1828
    :cond_28
    :goto_13
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v1, v8

    if-eqz v1, :cond_29

    .line 1830
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_14

    :cond_29
    cmp-long v1, v8, v12

    if-eqz v1, :cond_2a

    .line 1832
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1834
    :cond_2a
    :goto_14
    iget-wide v8, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v1, v8

    if-eqz v1, :cond_2b

    .line 1836
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_15

    :cond_2b
    cmp-long v1, v8, v12

    if-eqz v1, :cond_2c

    .line 1838
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1840
    :cond_2c
    :goto_15
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_2d

    .line 1841
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1844
    :cond_2d
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_2e

    .line 1846
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    .line 1848
    :cond_2e
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_2f

    .line 1850
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 1854
    :cond_2f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    const/4 v8, 0x3

    if-eqz v1, :cond_32

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    if-eqz v1, :cond_32

    if-nez v7, :cond_32

    .line 1855
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_selectedBackground:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    new-array v1, v8, [I

    .line 1856
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    aput v9, v1, v11

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    aput v9, v1, v3

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    const/4 v10, 0x2

    aput v9, v1, v10

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    if-nez v1, :cond_30

    new-array v1, v3, [I

    .line 1858
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    aput v9, v1, v11

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    :cond_30
    if-nez v1, :cond_31

    .line 1861
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    .line 1864
    :cond_31
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v1

    .line 1865
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelectedOverlay:I

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1866
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradientSelectedOverlay:I

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1867
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    invoke-static {v4, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1869
    iget v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->bubbleSelectedOverlay(II)I

    move-result v1

    .line 1870
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelectedOverlay:I

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1871
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    invoke-static {v6, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_32
    if-nez v7, :cond_33

    .line 1875
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v11, v6, v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v9

    invoke-virtual {v2, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1876
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionHighlight:I

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v3, v4, v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionBackground(ZII)I

    move-result v9

    invoke-virtual {v2, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1877
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTextSelectionCursor:I

    iget v9, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->accentColor:I

    invoke-direct {v0, v4, v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->textSelectionHandle(II)I

    move-result v9

    invoke-virtual {v2, v1, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1880
    :cond_33
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->getHue(I)F

    move-result v1

    .line 1881
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleLocationPlaceholder:I

    invoke-direct {v0, v1, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1882
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleLocationPlaceholder:I

    invoke-direct {v0, v1, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->locationPlaceholderColor(FIZ)I

    move-result v1

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1884
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-nez v9, :cond_34

    .line 1886
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    .line 1888
    :cond_34
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_35

    .line 1890
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    .line 1892
    :cond_35
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_linkSelectBackground:I

    invoke-direct {v0, v9, v6, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLinkSelectBackground:I

    invoke-direct {v0, v10, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->linkSelectionBackground(IIZ)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1895
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_36

    .line 1897
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 1899
    :cond_36
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    .line 1900
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 1901
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v10

    add-int/lit8 v10, v10, -0xa

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1902
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v12

    add-int/lit8 v12, v12, -0xa

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1903
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1899
    invoke-static {v9, v10, v12, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz v7, :cond_37

    .line 1906
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eqz v6, :cond_37

    new-array v4, v8, [I

    aput v1, v4, v11

    .line 1907
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    aput v1, v4, v3

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    const/4 v6, 0x2

    aput v1, v4, v6

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->averageColor(Landroid/util/SparseIntArray;[I)I

    move-result v1

    .line 1908
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {v1, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1909
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    aget v4, v1, v3

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    aput v4, v1, v3

    .line 1910
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    const/4 v4, 0x2

    aget v8, v1, v4

    const v9, 0x3f4ccccd    # 0.8f

    sub-float/2addr v8, v9

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v6

    aput v6, v1, v4

    .line 1911
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    const/16 v4, 0x40

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->tempHSV:[F

    invoke-static {v4, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_16

    .line 1913
    :cond_37
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outCodeBackground:I

    invoke-direct {v0, v4, v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->codeBackground(IZ)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_16
    xor-int/lit8 v1, v5, 0x1

    return v1
.end method

.method public getPathToWallpaper()Ljava/io/File;
    .locals 8

    .line 2026
    iget v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-ge v0, v6, :cond_1

    .line 2027
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

    .line 2029
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
    .locals 16

    move-object/from16 v1, p0

    .line 2034
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v0

    .line 2035
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2036
    new-instance v2, Ljava/io/File;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "%s_%d.attheme"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2038
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3, v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 2039
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    .line 2040
    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    .line 2044
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2046
    iget-boolean v6, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternMotion:Z

    if-eqz v6, :cond_0

    const-string v6, "motion"

    .line 2047
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    :cond_0
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, -0x1

    .line 2053
    :cond_1
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-nez v9, :cond_2

    move v9, v7

    .line 2057
    :cond_2
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_3

    move v10, v7

    .line 2061
    :cond_3
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v5, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    if-nez v11, :cond_4

    move v11, v7

    .line 2065
    :cond_4
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v5, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-nez v12, :cond_5

    const/16 v12, 0x2d

    :cond_5
    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    shr-int/lit8 v15, v6, 0x10

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    .line 2069
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    shr-int/lit8 v15, v6, 0x8

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v14, v4

    const-string v6, "%02x%02x%02x"

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    if-eqz v9, :cond_6

    new-array v15, v13, [Ljava/lang/Object;

    shr-int/lit8 v3, v9, 0x10

    int-to-byte v3, v3

    and-int/lit16 v3, v3, 0xff

    .line 2070
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v7

    shr-int/lit8 v3, v9, 0x8

    int-to-byte v3, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v8

    and-int/lit16 v3, v9, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v15, v4

    invoke-static {v6, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    if-eqz v10, :cond_7

    new-array v9, v13, [Ljava/lang/Object;

    shr-int/lit8 v15, v10, 0x10

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    .line 2071
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v7

    shr-int/lit8 v15, v10, 0x8

    int-to-byte v15, v15

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    if-eqz v11, :cond_8

    new-array v10, v13, [Ljava/lang/Object;

    shr-int/lit8 v13, v11, 0x10

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    .line 2072
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v7

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v8

    and-int/lit16 v8, v11, 0xff

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v10, v4

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-eqz v3, :cond_a

    if-eqz v9, :cond_a

    const-string v6, "~"

    if-eqz v4, :cond_9

    .line 2075
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 2077
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    .line 2080
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&rotation="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2083
    :cond_b
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://attheme.org?slug="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&intensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternIntensity:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&bg_color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2084
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 2085
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

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    .line 2089
    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2090
    :goto_5
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const-string v6, "\n"

    if-ge v7, v4, :cond_10

    .line 2091
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2092
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-eqz v3, :cond_e

    .line 2094
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-eq v9, v4, :cond_f

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    if-eq v9, v4, :cond_f

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    if-eq v9, v4, :cond_f

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    if-ne v9, v4, :cond_e

    goto :goto_6

    .line 2098
    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2102
    :cond_10
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2103
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WLS="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2112
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

    .line 2108
    :goto_7
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_12

    .line 2112
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 2115
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_12
    :goto_8
    return-object v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_9
    if-eqz v3, :cond_13

    .line 2112
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 2115
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2117
    :cond_13
    :goto_a
    throw v2
.end method
