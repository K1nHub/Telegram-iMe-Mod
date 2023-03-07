.class public Lorg/telegram/messenger/LiteMode;
.super Ljava/lang/Object;
.source "LiteMode.java"


# static fields
.field public static final ENABLED:I = 0x3ff

.field public static final FLAGS_ANIMATED_EMOJI:I = 0x1c

.field public static final FLAGS_ANIMATED_STICKERS:I = 0x3

.field public static final FLAGS_CHAT:I = 0x1e0

.field public static final FLAG_ANIMATED_EMOJI_CHAT:I = 0x10

.field public static final FLAG_ANIMATED_EMOJI_KEYBOARD:I = 0x4

.field public static final FLAG_ANIMATED_EMOJI_REACTIONS:I = 0x8

.field public static final FLAG_ANIMATED_STICKERS_CHAT:I = 0x2

.field public static final FLAG_ANIMATED_STICKERS_KEYBOARD:I = 0x1

.field public static final FLAG_AUTOPLAY_GIFS:I = 0x800

.field public static final FLAG_AUTOPLAY_VIDEOS:I = 0x400

.field public static final FLAG_CALLS_ANIMATIONS:I = 0x200

.field public static final FLAG_CHAT_BACKGROUND:I = 0x20

.field public static final FLAG_CHAT_BLUR:I = 0x100

.field public static final FLAG_CHAT_FORUM_TWOCOLUMN:I = 0x40

.field public static final FLAG_CHAT_SPOILER:I = 0x80

.field public static final PRESET_HIGH:I = 0xfff

.field public static final PRESET_LOW:I = 0x0

.field public static final PRESET_MEDIUM:I = 0xfff

.field public static final PRESET_POWER_SAVER:I

.field private static loaded:Z

.field private static powerSaverEnabled:Z

.field private static value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue()I
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result v0

    return v0
.end method

.method public static getValue(Z)I
    .locals 0

    .line 69
    sget-boolean p0, Lorg/telegram/messenger/LiteMode;->loaded:Z

    if-nez p0, :cond_0

    .line 70
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    const/4 p0, 0x1

    .line 71
    sput-boolean p0, Lorg/telegram/messenger/LiteMode;->loaded:Z

    .line 80
    :cond_0
    sget p0, Lorg/telegram/messenger/LiteMode;->value:I

    return p0
.end method

.method public static isEnabled(I)Z
    .locals 1

    .line 84
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getValue()I

    move-result v0

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnabledSetting(I)Z
    .locals 2

    const/4 v0, 0x1

    .line 88
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result v1

    and-int/2addr p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPowerSaverEnabled()Z
    .locals 1

    .line 175
    sget-boolean v0, Lorg/telegram/messenger/LiteMode;->powerSaverEnabled:Z

    return v0
.end method

.method public static loadPreference()V
    .locals 8

    .line 113
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    const/16 v1, 0xfff

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    const/16 v0, 0xfff

    .line 119
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "lite_mode"

    .line 120
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_d

    const-string v5, "light_mode"

    .line 121
    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 122
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v6

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    move v1, v0

    :cond_4
    :goto_3
    const-string v0, "loopStickers"

    .line 130
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 131
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    or-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_5
    and-int/lit8 v1, v1, -0x3

    :cond_6
    :goto_4
    const-string v0, "autoplay_video"

    .line 138
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 139
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "autoplay_video_liteforce"

    .line 140
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v1, -0x401

    goto :goto_6

    :cond_8
    :goto_5
    or-int/lit16 v1, v1, 0x400

    :cond_9
    :goto_6
    const-string v0, "autoplay_gif"

    .line 147
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 148
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    or-int/lit16 v0, v1, 0x800

    goto :goto_7

    :cond_a
    and-int/lit16 v0, v1, -0x801

    goto :goto_7

    :cond_b
    move v0, v1

    :goto_7
    const-string v1, "chatBlur"

    .line 155
    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 156
    invoke-interface {v3, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x100

    goto :goto_8

    :cond_c
    and-int/lit16 v0, v0, -0x101

    .line 165
    :cond_d
    :goto_8
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/telegram/messenger/LiteMode;->value:I

    const-string v0, "lite_mode_power_saver"

    .line 166
    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/LiteMode;->powerSaverEnabled:Z

    return-void
.end method

.method public static savePreference()V
    .locals 3

    .line 170
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/LiteMode;->value:I

    const-string v2, "lite_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/LiteMode;->powerSaverEnabled:Z

    const-string v2, "lite_mode_power_saver"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAllFlags(I)V
    .locals 2

    .line 100
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getValue()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p0

    and-int/lit8 v1, v0, 0x1c

    if-lez v1, :cond_0

    .line 102
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAll()V

    :cond_0
    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_1

    .line 105
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    .line 107
    :cond_1
    sput p0, Lorg/telegram/messenger/LiteMode;->value:I

    .line 108
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->savePreference()V

    return-void
.end method

.method public static setPowerSaverEnabled(Z)V
    .locals 0

    .line 179
    sput-boolean p0, Lorg/telegram/messenger/LiteMode;->powerSaverEnabled:Z

    .line 180
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->savePreference()V

    return-void
.end method

.method public static toggleFlag(I)V
    .locals 1

    .line 92
    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(IZ)V

    return-void
.end method

.method public static toggleFlag(IZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getValue()I

    move-result p1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getValue()I

    move-result p1

    not-int p0, p0

    and-int/2addr p0, p1

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->setAllFlags(I)V

    return-void
.end method
