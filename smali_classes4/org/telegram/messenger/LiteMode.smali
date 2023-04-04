.class public Lorg/telegram/messenger/LiteMode;
.super Ljava/lang/Object;
.source "LiteMode.java"


# static fields
.field private static BATTERY_HIGH:I = 0xa

.field private static BATTERY_LOW:I = 0xa

.field private static BATTERY_MEDIUM:I = 0xa

.field public static final FLAGS_ANIMATED_EMOJI:I = 0x701c

.field public static final FLAGS_ANIMATED_STICKERS:I = 0x3

.field public static final FLAGS_CHAT:I = 0x81e0

.field public static final FLAG_ANIMATED_EMOJI_CHAT:I = 0x1010

.field public static final FLAG_ANIMATED_EMOJI_CHAT_NOT_PREMIUM:I = 0x1000

.field public static final FLAG_ANIMATED_EMOJI_CHAT_PREMIUM:I = 0x10

.field public static final FLAG_ANIMATED_EMOJI_KEYBOARD:I = 0x4004

.field public static final FLAG_ANIMATED_EMOJI_KEYBOARD_NOT_PREMIUM:I = 0x4000

.field public static final FLAG_ANIMATED_EMOJI_KEYBOARD_PREMIUM:I = 0x4

.field public static final FLAG_ANIMATED_EMOJI_REACTIONS:I = 0x2008

.field public static final FLAG_ANIMATED_EMOJI_REACTIONS_NOT_PREMIUM:I = 0x2000

.field public static final FLAG_ANIMATED_EMOJI_REACTIONS_PREMIUM:I = 0x8

.field public static final FLAG_ANIMATED_STICKERS_CHAT:I = 0x2

.field public static final FLAG_ANIMATED_STICKERS_KEYBOARD:I = 0x1

.field public static final FLAG_AUTOPLAY_GIFS:I = 0x800

.field public static final FLAG_AUTOPLAY_VIDEOS:I = 0x400

.field public static final FLAG_CALLS_ANIMATIONS:I = 0x200

.field public static final FLAG_CHAT_BACKGROUND:I = 0x20

.field public static final FLAG_CHAT_BLUR:I = 0x100

.field public static final FLAG_CHAT_FORUM_TWOCOLUMN:I = 0x40

.field public static final FLAG_CHAT_SCALE:I = 0x8000

.field public static final FLAG_CHAT_SPOILER:I = 0x80

.field public static PRESET_HIGH:I = 0xffff

.field public static PRESET_LOW:I = 0x81c

.field public static PRESET_MEDIUM:I = 0x1e5f

.field public static PRESET_POWER_SAVER:I = 0x0

.field private static lastBatteryLevelCached:I = -0x1

.field private static lastBatteryLevelChecked:J

.field private static lastPowerSaverApplied:Z

.field private static loaded:Z

.field private static onPowerSaverAppliedListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static powerSaverLevel:I

.field private static value:I


# direct methods
.method public static synthetic $r8$lambda$ryc-2TrBzkjVZZ3EYpRWgbDZOUA(Z)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->lambda$onPowerSaverApplied$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 315
    sget-object v0, Lorg/telegram/messenger/LiteMode;->onPowerSaverAppliedListeners:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/telegram/messenger/LiteMode;->onPowerSaverAppliedListeners:Ljava/util/HashSet;

    .line 318
    :cond_0
    sget-object v0, Lorg/telegram/messenger/LiteMode;->onPowerSaverAppliedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getBatteryLevel()I
    .locals 4

    .line 117
    sget v0, Lorg/telegram/messenger/LiteMode;->lastBatteryLevelCached:I

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/messenger/LiteMode;->lastBatteryLevelChecked:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 118
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    sput v0, Lorg/telegram/messenger/LiteMode;->lastBatteryLevelCached:I

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/LiteMode;->lastBatteryLevelChecked:J

    .line 124
    :cond_1
    sget v0, Lorg/telegram/messenger/LiteMode;->lastBatteryLevelCached:I

    return v0
.end method

.method public static getPowerSaverLevel()I
    .locals 1

    .line 265
    sget-boolean v0, Lorg/telegram/messenger/LiteMode;->loaded:Z

    if-nez v0, :cond_0

    .line 266
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    .line 268
    :cond_0
    sget v0, Lorg/telegram/messenger/LiteMode;->powerSaverLevel:I

    return v0
.end method

.method public static getValue()I
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result v0

    return v0
.end method

.method public static getValue(Z)I
    .locals 1

    .line 95
    sget-boolean v0, Lorg/telegram/messenger/LiteMode;->loaded:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    :cond_0
    if-nez p0, :cond_3

    .line 98
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_3

    .line 99
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getBatteryLevel()I

    move-result p0

    sget v0, Lorg/telegram/messenger/LiteMode;->powerSaverLevel:I

    if-gt p0, v0, :cond_2

    if-lez v0, :cond_2

    .line 100
    sget-boolean p0, Lorg/telegram/messenger/LiteMode;->lastPowerSaverApplied:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 101
    sput-boolean p0, Lorg/telegram/messenger/LiteMode;->lastPowerSaverApplied:Z

    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->onPowerSaverApplied(Z)V

    .line 103
    :cond_1
    sget p0, Lorg/telegram/messenger/LiteMode;->PRESET_POWER_SAVER:I

    return p0

    .line 105
    :cond_2
    sget-boolean p0, Lorg/telegram/messenger/LiteMode;->lastPowerSaverApplied:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 106
    sput-boolean p0, Lorg/telegram/messenger/LiteMode;->lastPowerSaverApplied:Z

    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->onPowerSaverApplied(Z)V

    .line 109
    :cond_3
    sget p0, Lorg/telegram/messenger/LiteMode;->value:I

    return p0
.end method

.method public static isEnabled(I)Z
    .locals 1

    .line 141
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getValue()I

    move-result v0

    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->preprocessFlag(I)I

    move-result p0

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

    .line 145
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

.method public static isPowerSaverApplied()Z
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    .line 281
    sget-boolean v0, Lorg/telegram/messenger/LiteMode;->lastPowerSaverApplied:Z

    return v0
.end method

.method private static synthetic lambda$onPowerSaverApplied$0(Z)V
    .locals 3

    .line 292
    sget-object v0, Lorg/telegram/messenger/LiteMode;->onPowerSaverAppliedListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v1, :cond_0

    .line 296
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static loadPreference()V
    .locals 8

    .line 190
    sget v0, Lorg/telegram/messenger/LiteMode;->PRESET_HIGH:I

    sget v1, Lorg/telegram/messenger/LiteMode;->BATTERY_HIGH:I

    .line 191
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 192
    sget v0, Lorg/telegram/messenger/LiteMode;->PRESET_LOW:I

    .line 193
    sget v1, Lorg/telegram/messenger/LiteMode;->BATTERY_LOW:I

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 195
    sget v0, Lorg/telegram/messenger/LiteMode;->PRESET_MEDIUM:I

    .line 196
    sget v1, Lorg/telegram/messenger/LiteMode;->BATTERY_MEDIUM:I

    .line 199
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lite_mode2"

    .line 200
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "lite_mode"

    .line 201
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 202
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v5, 0xfff

    if-ne v0, v5, :cond_10

    .line 204
    sget v0, Lorg/telegram/messenger/LiteMode;->PRESET_HIGH:I

    goto/16 :goto_7

    :cond_2
    const-string v5, "light_mode"

    .line 207
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 208
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v3

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v7

    :goto_2
    if-eqz v0, :cond_5

    .line 210
    sget v0, Lorg/telegram/messenger/LiteMode;->PRESET_LOW:I

    goto :goto_3

    .line 212
    :cond_5
    sget v0, Lorg/telegram/messenger/LiteMode;->PRESET_HIGH:I

    :cond_6
    :goto_3
    const-string v5, "loopStickers"

    .line 216
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 217
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    or-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_7
    and-int/lit8 v0, v0, -0x3

    :cond_8
    :goto_4
    const-string v5, "autoplay_video"

    .line 224
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 225
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "autoplay_video_liteforce"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v7, v3

    :cond_a
    if-eqz v7, :cond_b

    or-int/lit16 v0, v0, 0x400

    goto :goto_5

    :cond_b
    and-int/lit16 v0, v0, -0x401

    :cond_c
    :goto_5
    const-string v5, "autoplay_gif"

    .line 232
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 233
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    or-int/lit16 v0, v0, 0x800

    goto :goto_6

    :cond_d
    and-int/lit16 v0, v0, -0x801

    :cond_e
    :goto_6
    const-string v5, "chatBlur"

    .line 240
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 241
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_f

    or-int/lit16 v0, v0, 0x100

    goto :goto_7

    :cond_f
    and-int/lit16 v0, v0, -0x101

    .line 251
    :cond_10
    :goto_7
    sget v5, Lorg/telegram/messenger/LiteMode;->value:I

    .line 252
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/telegram/messenger/LiteMode;->value:I

    .line 253
    sget-boolean v4, Lorg/telegram/messenger/LiteMode;->loaded:Z

    if-eqz v4, :cond_11

    .line 254
    invoke-static {v5, v0}, Lorg/telegram/messenger/LiteMode;->onFlagsUpdate(II)V

    :cond_11
    const-string v0, "lite_mode_battery_level"

    .line 256
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/telegram/messenger/LiteMode;->powerSaverLevel:I

    .line 257
    sput-boolean v3, Lorg/telegram/messenger/LiteMode;->loaded:Z

    return-void
.end method

.method private static onFlagsUpdate(II)V
    .locals 0

    not-int p0, p0

    and-int/2addr p0, p1

    and-int/lit16 p1, p0, 0x701c

    if-lez p1, :cond_0

    .line 306
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAll()V

    :cond_0
    and-int/lit8 p0, p0, 0x20

    if-lez p0, :cond_1

    .line 309
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    :cond_1
    return-void
.end method

.method private static onPowerSaverApplied(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 286
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result v0

    sget v1, Lorg/telegram/messenger/LiteMode;->PRESET_POWER_SAVER:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LiteMode;->onFlagsUpdate(II)V

    goto :goto_0

    .line 288
    :cond_0
    sget v1, Lorg/telegram/messenger/LiteMode;->PRESET_POWER_SAVER:I

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/messenger/LiteMode;->onFlagsUpdate(II)V

    .line 290
    :goto_0
    sget-object v0, Lorg/telegram/messenger/LiteMode;->onPowerSaverAppliedListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Lorg/telegram/messenger/LiteMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LiteMode$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static preprocessFlag(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x4004

    if-lez v0, :cond_1

    and-int/lit16 p0, p0, -0x4005

    .line 129
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    :goto_0
    or-int/2addr p0, v0

    :cond_1
    and-int/lit16 v0, p0, 0x2008

    if-lez v0, :cond_3

    and-int/lit16 p0, p0, -0x2009

    .line 132
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/16 v0, 0x2000

    :goto_1
    or-int/2addr p0, v0

    :cond_3
    and-int/lit16 v0, p0, 0x1010

    if-lez v0, :cond_5

    and-int/lit16 p0, p0, -0x1011

    .line 135
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    goto :goto_2

    :cond_4
    const/16 v0, 0x1000

    :goto_2
    or-int/2addr p0, v0

    :cond_5
    return p0
.end method

.method public static removeOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/telegram/messenger/LiteMode;->onPowerSaverAppliedListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static savePreference()V
    .locals 3

    .line 261
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/LiteMode;->value:I

    const-string v2, "lite_mode2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/LiteMode;->powerSaverLevel:I

    const-string v2, "lite_mode_battery_level"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAllFlags(I)V
    .locals 0

    .line 159
    sput p0, Lorg/telegram/messenger/LiteMode;->value:I

    .line 160
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->savePreference()V

    return-void
.end method

.method public static setPowerSaverLevel(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 272
    invoke-static {p0, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    sput p0, Lorg/telegram/messenger/LiteMode;->powerSaverLevel:I

    .line 273
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->savePreference()V

    .line 276
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    return-void
.end method

.method public static toggleFlag(I)V
    .locals 1

    .line 149
    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/LiteMode;->toggleFlag(IZ)V

    return-void
.end method

.method public static toggleFlag(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 153
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result p1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->getValue(Z)I

    move-result p1

    not-int p0, p0

    and-int/2addr p0, p1

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->setAllFlags(I)V

    return-void
.end method

.method public static updatePresets(Lorg/telegram/tgnet/TLRPC$TL_jsonObject;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 164
    :goto_0
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 165
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_jsonObject;->value:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;

    .line 166
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    const-string v4, "settings_mask"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-eqz v6, :cond_0

    .line 167
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 169
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int v3, v6

    sput v3, Lorg/telegram/messenger/LiteMode;->PRESET_LOW:I

    .line 170
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int v3, v5

    sput v3, Lorg/telegram/messenger/LiteMode;->PRESET_MEDIUM:I

    .line 171
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int v2, v2

    sput v2, Lorg/telegram/messenger/LiteMode;->PRESET_HIGH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 173
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 175
    :cond_0
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->key:Ljava/lang/String;

    const-string v6, "battery_low"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonObjectValue;->value:Lorg/telegram/tgnet/TLRPC$JSONValue;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    if-eqz v3, :cond_1

    .line 176
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonArray;->value:Ljava/util/ArrayList;

    .line 178
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int v3, v6

    sput v3, Lorg/telegram/messenger/LiteMode;->BATTERY_LOW:I

    .line 179
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int v3, v5

    sput v3, Lorg/telegram/messenger/LiteMode;->BATTERY_MEDIUM:I

    .line 180
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_jsonNumber;->value:D

    double-to-int v2, v2

    sput v2, Lorg/telegram/messenger/LiteMode;->BATTERY_HIGH:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 182
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 186
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->loadPreference()V

    return-void
.end method
