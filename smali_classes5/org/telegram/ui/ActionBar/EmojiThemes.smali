.class public Lorg/telegram/ui/ActionBar/EmojiThemes;
.super Ljava/lang/Object;
.source "EmojiThemes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;
    }
.end annotation


# static fields
.field private static final previewColorKeys:[I


# instance fields
.field private final currentAccount:I

.field public emoji:Ljava/lang/String;

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;",
            ">;"
        }
    .end annotation
.end field

.field public showAsDefaultStub:Z

.field public wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;


# direct methods
.method public static synthetic $r8$lambda$1ftKG_jMe9_6hJOkjZc9P7QNlCQ(Lorg/telegram/tgnet/ResultCallback;JLorg/telegram/tgnet/TLRPC$WallPaper;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/EmojiThemes;->lambda$loadWallpaperImage$1(Lorg/telegram/tgnet/ResultCallback;JLorg/telegram/tgnet/TLRPC$WallPaper;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cVKfP8Q7s9fov0ygaamflyjRqds(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->lambda$loadWallpaperThumb$2(Ljava/io/File;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBs2WVJBLit7Ku84tDLxjP1uI0E(Lorg/telegram/tgnet/ResultCallback;JLjava/io/File;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->lambda$loadWallpaperThumb$3(Lorg/telegram/tgnet/ResultCallback;JLjava/io/File;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rCotIL29biGFnT7KdhewXpIvpDQ(Lorg/telegram/tgnet/ResultCallback;JILorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/ActionBar/EmojiThemes;->lambda$loadWallpaperImage$0(Lorg/telegram/tgnet/ResultCallback;JILorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 36
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->previewColorKeys:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    .line 48
    iput p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->currentAccount:I

    return-void
.end method

.method public constructor <init>(ILorg/telegram/tgnet/TLRPC$TL_theme;Z)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    .line 52
    iput p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->currentAccount:I

    .line 53
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    .line 54
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 56
    new-instance p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    .line 57
    iput-object p2, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->tlTheme:Lorg/telegram/tgnet/TLRPC$TL_theme;

    const/4 p3, 0x0

    .line 58
    iput p3, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->settingsIndex:I

    .line 59
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    .line 62
    iput-object p2, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->tlTheme:Lorg/telegram/tgnet/TLRPC$TL_theme;

    const/4 p2, 0x1

    .line 63
    iput p2, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->settingsIndex:I

    .line 64
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static createChatThemesDefault(I)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 2

    .line 84
    new-instance v0, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(I)V

    const-string p0, "\u274c"

    .line 85
    iput-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    const/4 p0, 0x1

    .line 86
    iput-boolean p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    .line 88
    new-instance v1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    .line 89
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p0

    iput-object p0, v1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 90
    iget-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    const/4 v1, 0x0

    .line 93
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 94
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createHomePreviewTheme(I)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 3

    .line 166
    new-instance v0, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(I)V

    const-string p0, "\ud83c\udfe0"

    .line 167
    iput-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    .line 169
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    const-string v1, "Blue"

    .line 170
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/16 v1, 0x63

    .line 171
    iput v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 172
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    const-string v1, "Day"

    .line 175
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/16 v1, 0x9

    .line 176
    iput v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 177
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    const-string v1, "Night"

    .line 180
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v1, 0x0

    .line 181
    iput v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 182
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    const-string v2, "Dark Blue"

    .line 185
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 186
    iput v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 187
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createHomeQrTheme(I)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 2

    .line 192
    new-instance v0, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(I)V

    const-string p0, "\ud83c\udfe0"

    .line 193
    iput-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    .line 195
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    const-string v1, "Blue"

    .line 196
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/16 v1, 0x63

    .line 197
    iput v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 198
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    const-string v1, "Dark Blue"

    .line 201
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v1, 0x0

    .line 202
    iput v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 203
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createPreviewCustom(I)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 11

    .line 100
    new-instance v0, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(I)V

    const-string p0, "\ud83c\udfa8"

    .line 101
    iput-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    .line 103
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "lastDayCustomTheme"

    const/4 v3, 0x0

    .line 104
    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lastDayCustomThemeAccentId"

    const/4 v6, -0x1

    .line 105
    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0x63

    const-string v8, "Blue"

    if-eqz v4, :cond_1

    .line 106
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    if-ne v5, v6, :cond_3

    .line 118
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iget v5, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    goto :goto_2

    :cond_1
    :goto_0
    const-string v4, "lastDayTheme"

    .line 107
    invoke-interface {p0, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    if-nez v5, :cond_2

    move v5, v7

    move-object v4, v8

    goto :goto_1

    .line 113
    :cond_2
    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    .line 115
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_2
    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, v4

    move v7, v5

    :goto_3
    const-string v1, "lastDarkCustomTheme"

    .line 127
    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lastDarkCustomThemeAccentId"

    .line 128
    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v9, "Dark Blue"

    if-eqz v4, :cond_6

    .line 129
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v10

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    if-ne v5, v6, :cond_8

    .line 141
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p0

    iget v5, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->lastAccentId:I

    goto :goto_6

    :cond_6
    :goto_4
    const-string v4, "lastDarkTheme"

    .line 130
    invoke-interface {p0, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    if-nez v5, :cond_7

    move v5, v2

    move-object v4, v9

    goto :goto_5

    .line 136
    :cond_7
    iget v5, v5, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    .line 138
    :goto_5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    :goto_6
    if-ne v5, v6, :cond_9

    goto :goto_7

    :cond_9
    move-object v9, v4

    move v2, v5

    .line 150
    :goto_7
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    .line 151
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 152
    iput v7, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 153
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    .line 157
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 158
    iput v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    .line 159
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createPreviewFullTheme(ILorg/telegram/tgnet/TLRPC$TL_theme;)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 3

    .line 69
    new-instance v0, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(I)V

    .line 70
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    const/4 p0, 0x0

    .line 72
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 73
    new-instance v1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;-><init>()V

    .line 74
    iput-object p1, v1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->tlTheme:Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 75
    iput p0, v1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->settingsIndex:I

    .line 76
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 4

    if-eqz p0, :cond_0

    .line 499
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 500
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v1

    if-eq p0, v1, :cond_3

    .line 501
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "themeconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Dark Blue"

    const-string v2, "Blue"

    if-eqz p0, :cond_1

    const-string v3, "lastDarkTheme"

    .line 503
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "lastDayTheme"

    .line 504
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 507
    :goto_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 510
    :cond_3
    new-instance p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-object p0
.end method

.method private getOrDefault(Landroid/util/SparseIntArray;I)I
    .locals 1

    .line 568
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 570
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 572
    :cond_0
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColor(I)I

    move-result p1

    return p1
.end method

.method private getWallpaperThumbFile(J)Ljava/io/File;
    .locals 4

    .line 495
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wallpaper_thumb_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$loadWallpaperImage$0(Lorg/telegram/tgnet/ResultCallback;JILorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 403
    invoke-virtual {p4}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p4

    if-eqz p5, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object p5, p4, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez p5, :cond_1

    .line 408
    iget-object p4, p4, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of p6, p4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p6, :cond_1

    .line 409
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p5

    :cond_1
    if-eqz p0, :cond_2

    .line 412
    new-instance p4, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-direct {p4, p6, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p4}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    .line 414
    :cond_2
    invoke-static {p3}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object p0

    invoke-virtual {p0, p5, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->saveWallpaperBitmap(Landroid/graphics/Bitmap;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$loadWallpaperImage$1(Lorg/telegram/tgnet/ResultCallback;JLorg/telegram/tgnet/TLRPC$WallPaper;ILandroid/graphics/Bitmap;)V
    .locals 7

    if-eqz p5, :cond_0

    if-eqz p0, :cond_0

    .line 389
    new-instance p3, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p3, p1, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p3}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 392
    :cond_0
    iget-object p5, p3, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 393
    new-instance p5, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p5}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p5, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    .line 397
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 398
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v0

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_f"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const-string v4, ".jpg"

    move-object v0, p5

    move-object v5, p3

    .line 401
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 402
    new-instance p3, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/ResultCallback;JI)V

    invoke-virtual {p5, p3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 416
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p0

    invoke-virtual {p0, p5}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method private static synthetic lambda$loadWallpaperThumb$2(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 472
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x57

    invoke-virtual {p1, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 472
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 475
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$loadWallpaperThumb$3(Lorg/telegram/tgnet/ResultCallback;JLjava/io/File;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 458
    invoke-virtual {p4}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p4

    if-eqz p5, :cond_4

    if-eqz p4, :cond_4

    .line 459
    iget-object p5, p4, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iget-object p5, p4, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez p5, :cond_1

    .line 463
    iget-object p4, p4, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of p6, p4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p6, :cond_1

    .line 464
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p5

    :cond_1
    if-eqz p5, :cond_3

    if-eqz p0, :cond_2

    .line 468
    new-instance p4, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p4, p1, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p4}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    .line 471
    :cond_2
    sget-object p0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p1, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, p5}, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const/4 p1, 0x0

    .line 480
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static loadWallpaperImage(IJLorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/telegram/tgnet/TLRPC$WallPaper;",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .line 387
    invoke-static {p0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p4

    move-wide v3, p1

    move-object v5, p3

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/ResultCallback;JLorg/telegram/tgnet/TLRPC$WallPaper;I)V

    invoke-virtual {v0, p1, p2, v7}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperBitmap(JLorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method public static saveCustomTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;I)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_1

    .line 585
    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->isDefault:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 589
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Blue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x63

    if-ne p1, v0, :cond_3

    return-void

    .line 592
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    return-void

    .line 595
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    return-void

    .line 598
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dark Blue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    return-void

    .line 602
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "lastDarkCustomTheme"

    goto :goto_0

    :cond_7
    const-string v1, "lastDayCustomTheme"

    :goto_0
    if-eqz v0, :cond_8

    const-string v0, "lastDarkCustomThemeAccentId"

    goto :goto_1

    :cond_8
    const-string v0, "lastDayCustomThemeAccentId"

    .line 605
    :goto_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "themeconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 606
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 607
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 608
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public createColors(II)Landroid/util/SparseIntArray;
    .locals 6

    .line 315
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeInfo(I)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getSettingsIndex(I)I

    move-result v0

    .line 319
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v3

    .line 320
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getBaseThemeKey(Lorg/telegram/tgnet/TLRPC$ThemeSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    .line 321
    new-instance v5, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {v5, v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 322
    invoke-virtual {v5, v3, p1, v2, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->createNewAccent(Lorg/telegram/tgnet/TLRPC$TL_theme;IZI)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    .line 323
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setCurrentAccentId(I)V

    move-object v0, v5

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget v3, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    new-array v2, v2, [Ljava/lang/String;

    .line 332
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 333
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    goto :goto_1

    .line 334
    :cond_2
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 335
    invoke-static {v1, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    goto :goto_1

    .line 337
    :cond_3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 340
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    const/4 v1, 0x0

    aget-object v2, v2, v1

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->access$002(Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 343
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p2

    .line 344
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-object v0, p2

    .line 349
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFallbackKeys()Landroid/util/SparseIntArray;

    move-result-object p1

    move p2, v1

    .line 350
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 351
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 352
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 353
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_5

    .line 354
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5

    .line 356
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 360
    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()[I

    move-result-object p1

    .line 361
    :goto_3
    array-length p2, p1

    if-ge v1, p2, :cond_8

    .line 362
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_7

    .line 363
    aget p2, p1, v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-object v0
.end method

.method public getAccentId(I)I
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    return p1
.end method

.method public getEmoticon()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewColors(II)Landroid/util/SparseIntArray;
    .locals 6

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->currentPreviewColors:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeInfo(I)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 249
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getSettingsIndex(I)I

    move-result v0

    .line 250
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v3

    const-string v4, "Blue"

    if-eqz v3, :cond_1

    .line 253
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getBaseThemeKey(Lorg/telegram/tgnet/TLRPC$ThemeSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    if-nez v5, :cond_2

    .line 256
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    .line 262
    :cond_2
    :goto_0
    new-instance v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 263
    invoke-virtual {v4, v3, p1, v1, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->createNewAccent(Lorg/telegram/tgnet/TLRPC$TL_theme;IZI)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 266
    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setCurrentAccentId(I)V

    :cond_3
    move-object v0, v4

    goto :goto_1

    .line 268
    :cond_4
    iget-object p1, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    if-eqz p1, :cond_5

    .line 269
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget v3, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    goto :goto_1

    :cond_5
    move-object p1, v2

    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    .line 275
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 276
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    goto :goto_2

    .line 277
    :cond_6
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 278
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    goto :goto_2

    .line 280
    :cond_7
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 283
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->access$002(Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 286
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 287
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-object v0, v1

    .line 292
    :cond_8
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFallbackKeys()Landroid/util/SparseIntArray;

    move-result-object p1

    .line 293
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->currentPreviewColors:Landroid/util/SparseIntArray;

    .line 294
    :goto_3
    sget-object v1, Lorg/telegram/ui/ActionBar/EmojiThemes;->previewColorKeys:[I

    array-length v2, v1

    if-ge v3, v2, :cond_b

    .line 295
    aget v1, v1, v3

    .line 296
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_9

    .line 298
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->currentPreviewColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    :cond_9
    const/4 v2, -0x1

    .line 300
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ltz v2, :cond_a

    .line 302
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_a

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->currentPreviewColors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 309
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->currentPreviewColors:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method public getSettingsIndex(I)I
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->settingsIndex:I

    return p1
.end method

.method public getThemeInfo(I)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object p1
.end method

.method public getThemeItem(I)Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    return-object p1
.end method

.method public getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->tlTheme:Lorg/telegram/tgnet/TLRPC$TL_theme;

    return-object p1
.end method

.method public getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget v0, v0, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->settingsIndex:I

    if-ltz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->settings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWallpaperLink(I)Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->access$000(Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initColors()V
    .locals 2

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    return-void
.end method

.method public loadPreviewColors(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 541
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 542
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 545
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 546
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getOrDefault(Landroid/util/SparseIntArray;I)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->inBubbleColor:I

    .line 547
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getOrDefault(Landroid/util/SparseIntArray;I)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->outBubbleColor:I

    .line 548
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getOrDefault(Landroid/util/SparseIntArray;I)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->outLineColor:I

    .line 549
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgColor:I

    .line 550
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor1:I

    .line 551
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor2:I

    .line 552
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor3:I

    .line 553
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_rotation:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iput v2, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgRotation:I

    .line 555
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Blue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget v2, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget v2, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->accentId:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    :goto_1
    const/16 v3, 0x63

    if-ne v2, v3, :cond_2

    .line 558
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    const v3, -0x242245

    iput v3, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgColor:I

    .line 559
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    const v3, -0x945a79

    iput v3, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor1:I

    .line 560
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    const v3, -0x2a2773

    iput v3, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor2:I

    .line 561
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    const v3, -0x77477c

    iput v3, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor3:I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 377
    invoke-interface {p2, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object p1

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    .line 383
    iget p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->currentAccount:I

    invoke-static {p1, v1, v2, v0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperImage(IJLorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method public loadWallpaperThumb(ILorg/telegram/tgnet/ResultCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 424
    invoke-interface {p2, v1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    .line 430
    iget p1, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperThumbBitmap(J)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 431
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaperThumbFile(J)Ljava/io/File;

    move-result-object v4

    if-nez p1, :cond_2

    .line 432
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 434
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 436
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 441
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 446
    :cond_4
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    .line 448
    new-instance p1, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    :cond_5
    return-void

    .line 452
    :cond_6
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x8c

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 453
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    .line 454
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v7, "120_140"

    move-object v5, p1

    .line 456
    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 457
    new-instance v0, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, v2, v3, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/tgnet/ResultCallback;JLjava/io/File;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 484
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method

.method public preloadWallpaper()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperThumb(ILorg/telegram/tgnet/ResultCallback;)V

    const/4 v2, 0x1

    .line 489
    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperThumb(ILorg/telegram/tgnet/ResultCallback;)V

    .line 490
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    .line 491
    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method
