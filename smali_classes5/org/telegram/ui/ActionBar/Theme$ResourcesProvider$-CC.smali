.class public final synthetic Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;
.super Ljava/lang/Object;
.source "Theme.java"


# direct methods
.method public static $default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V
    .locals 0
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 3139
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->applyServiceShaderMatrix(IIFF)V

    return-void
.end method

.method public static $default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 3143
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method public static $default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 0
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 3111
    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1
.end method

.method public static $default$getCurrentColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I
    .locals 0
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 3115
    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1
.end method

.method public static $default$getDrawable(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public static $default$getPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 0
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 3125
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public static $default$hasGradientService(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$isDark(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 3135
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    return v0
.end method

.method public static $default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 0

    return-void
.end method
