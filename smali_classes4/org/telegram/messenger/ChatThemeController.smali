.class public Lorg/telegram/messenger/ChatThemeController;
.super Lorg/telegram/messenger/BaseController;
.source "ChatThemeController.java"


# static fields
.field public static volatile chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

.field private static final instances:[Lorg/telegram/messenger/ChatThemeController;


# instance fields
.field private allChatThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation
.end field

.field private final dialogEmoticonsMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastReloadTimeMs:J

.field private final reloadTimeoutMs:J

.field private final themeIdWallpaperThumbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile themesHash:J


# direct methods
.method public static synthetic $r8$lambda$0YpBp7v3kjLKSmLDJ0tOuhayX3U(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Xjp5gr5GDY6v1t1cmya1YocKpk(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$saveWallpaperBitmap$7(Ljava/io/File;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiX9Wxf3nylU7BC86bmrCJrw-QE(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$getWallpaperBitmap$6(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HnBVZ5LMVssaMgvt6zMLFKsmH6w(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$0(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NcwBF5XAa5CCaKGz7TzPGEXE9cA(Lorg/telegram/messenger/ChatThemeController;JZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ChatThemeController;->lambda$setWallpaperToUser$10(JZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PBv7bcIR1f1IVSas0aJQqDhhCe0(Lorg/telegram/messenger/ChatThemeController;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$1(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q06zq6lCKLyUGQdC-W_IJWlEXSA(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ChatThemeController;->lambda$setWallpaperToUser$9(Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bRSpEC2K57rYvooBApe_aTS6X60(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$getWallpaperBitmap$5(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kHr2X_bl4dQB5f09DU2Mi6oC5lQ(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$clearWallpaper$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDZEW-mLKlZOV8TVXGBVQOwsIsI(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$3(Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xBFXskO3n-VZOVI68fjfvKuJ_K0(Lorg/telegram/messenger/ChatThemeController;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$preloadAllWallpaperThumbs$4(Landroid/util/Pair;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "chatThemeQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/ChatThemeController;

    .line 190
    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->instances:[Lorg/telegram/messenger/ChatThemeController;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    const-wide/32 v0, 0x6ddd00

    .line 27
    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->reloadTimeoutMs:J

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    .line 207
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    .line 37
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->init()V

    return-void
.end method

.method public static equals(Lorg/telegram/tgnet/TLRPC$WallPaper;Lorg/telegram/tgnet/TLRPC$WallPaper;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 214
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 215
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 217
    :cond_1
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {p0}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-static {p1}, Lorg/telegram/ui/ChatBackgroundDrawable;->hash(Lorg/telegram/tgnet/TLRPC$WallPaperSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method private getAllChatThemesFromPrefs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "count"

    const/4 v2, 0x0

    .line 149
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_1

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "theme_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    new-instance v6, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v5, 0x1

    .line 155
    :try_start_0
    invoke-virtual {v6, v5}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {v6, v7, v5}, Lorg/telegram/tgnet/TLRPC$Theme;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v6, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v7, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v6, v7, v5, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(ILorg/telegram/tgnet/TLRPC$TL_theme;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 160
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getEmojiSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 144
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "chatthemeconfig_emoji"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/ChatThemeController;
    .locals 3

    .line 193
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->instances:[Lorg/telegram/messenger/ChatThemeController;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 195
    const-class v2, Lorg/telegram/messenger/ChatThemeController;

    monitor-enter v2

    .line 196
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lorg/telegram/messenger/ChatThemeController;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ChatThemeController;-><init>(I)V

    .line 199
    aput-object v1, v0, p0

    .line 201
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getPatternFile(J)Ljava/io/File;
    .locals 4

    .line 384
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    iget-wide p1, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const-string p1, "%d_%d.jpg"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 140
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chatthemeconfig_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 41
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 42
    iput-wide v1, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 43
    iput-wide v1, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    :try_start_0
    const-string v3, "hash"

    .line 45
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-string/jumbo v3, "lastReload"

    .line 46
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 51
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getAllChatThemesFromPrefs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    const-string/jumbo v0, "\u274c"

    .line 53
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ChatThemeController;->preloadSticker(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 56
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/messenger/ChatThemeController;->preloadSticker(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method private static synthetic lambda$clearWallpaper$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$getWallpaperBitmap$5(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 377
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getWallpaperBitmap$6(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 372
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 376
    new-instance p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$preloadAllWallpaperThumbs$4(Landroid/util/Pair;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 345
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$requestAllChatThemes$0(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 111
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$requestAllChatThemes$1(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    .line 122
    invoke-interface {p2, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestAllChatThemes$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 7

    .line 80
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_themes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_account_themes;

    .line 82
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->hash:J

    iput-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    .line 85
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 86
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-string v0, "hash"

    invoke-interface {p3, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    const-string/jumbo v0, "lastReload"

    invoke-interface {p3, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "count"

    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 91
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 92
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 93
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 95
    invoke-virtual {v3, v4}, Lorg/telegram/tgnet/TLRPC$TL_theme;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "theme_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    new-instance v4, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v5, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-direct {v4, v5, v3, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(ILorg/telegram/tgnet/TLRPC$TL_theme;Z)V

    .line 98
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->preloadWallpaper()V

    .line 99
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 102
    :cond_1
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_themesNotModified;

    if-eqz p1, :cond_2

    .line 104
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getAllChatThemesFromPrefs()Ljava/util/List;

    move-result-object v0

    :goto_1
    move p1, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 111
    new-instance p1, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_5

    if-eqz p4, :cond_3

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez p1, :cond_3

    .line 115
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createChatThemesDefault(I)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 118
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->initColors()V

    goto :goto_3

    .line 120
    :cond_4
    new-instance p1, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0, p2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ChatThemeController;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$requestAllChatThemes$3(Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 77
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$saveWallpaperBitmap$7(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 391
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 392
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x57

    invoke-virtual {p1, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 393
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 395
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setWallpaperToUser$10(JZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 507
    new-instance p7, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda3;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p6

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setWallpaperToUser$9(Lorg/telegram/tgnet/TLObject;JZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .line 508
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_4

    .line 509
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 510
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    .line 512
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 513
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v3, :cond_1

    .line 514
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    .line 515
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v4, :cond_1

    if-eqz p4, :cond_2

    .line 517
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    .line 518
    iget-object p4, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    .line 519
    iget-object p4, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz p4, :cond_0

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 520
    iget-object p4, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p5, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    .line 522
    :cond_0
    iget-object p4, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 523
    iget p5, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr p5, v2

    iput p5, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 525
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    .line 526
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p4

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 527
    iget p4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p4

    sget p5, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object v0, v2, p2

    invoke-virtual {p4, p5, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    :cond_2
    :goto_1
    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$Updates;->date:I

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)Z

    if-eqz p6, :cond_3

    .line 536
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    .line 538
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->wallpaperSettedToUser:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private preloadSticker(Ljava/lang/String;)V
    .locals 7

    .line 62
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 63
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const-string v2, "50_50"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 65
    invoke-static {p1}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 405
    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 406
    iput-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    .line 407
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearWallpaper(JZ)V
    .locals 6

    .line 411
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 413
    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 414
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 415
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 417
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 418
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v5, -0x1000001

    and-int/2addr v4, v5

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 419
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 421
    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/telegram/messenger/ChatThemeController;->saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V

    if-eqz p3, :cond_2

    .line 423
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x1

    aput-object v1, v4, p1

    invoke-virtual {p3, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_1
    iget p3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 427
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 430
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda9;->INSTANCE:Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda9;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public clearWallpaperImages()V
    .locals 0

    return-void
.end method

.method public clearWallpaperThumbImages()V
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getDialogTheme(J)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 4

    .line 261
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatTheme_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_2

    .line 266
    iget-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 268
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    :cond_2
    return-object v1
.end method

.method public getDialogWallpaper(J)Lorg/telegram/tgnet/TLRPC$WallPaper;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 299
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    return-object p1

    .line 303
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chatWallpaper_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 305
    new-instance p2, Lorg/telegram/tgnet/SerializedData;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 p1, 0x1

    .line 307
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p2, v0, p1}, Lorg/telegram/tgnet/TLRPC$WallPaper;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 309
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method public getWallpaperBitmap(JLorg/telegram/tgnet/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 360
    iget-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 361
    invoke-interface {p3, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 364
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object p1

    .line 365
    sget-object p2, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getWallpaperThumbBitmap(J)Landroid/graphics/Bitmap;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public preloadAllWallpaperImages(Z)V
    .locals 4

    .line 317
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 318
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 319
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    .line 324
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 327
    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public preloadAllWallpaperThumbs(Z)V
    .locals 5

    .line 333
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 335
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    .line 340
    iget-object v4, p0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 343
    :cond_1
    new-instance v2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ChatThemeController;)V

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperThumb(ILorg/telegram/tgnet/ResultCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;>;Z)V"
        }
    .end annotation

    .line 69
    iget-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 70
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->init()V

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 74
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    .line 75
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getChatThemes;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getChatThemes;-><init>()V

    .line 76
    iget-wide v2, p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getChatThemes;->hash:J

    .line 77
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ChatThemeController;Lorg/telegram/tgnet/ResultCallback;Z)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 127
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_5

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez p2, :cond_5

    .line 130
    iget p2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createChatThemesDefault(I)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 133
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->initColors()V

    goto :goto_1

    .line 135
    :cond_6
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public requestChatTheme(Ljava/lang/String;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 168
    invoke-interface {p2, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 171
    :cond_0
    new-instance v0, Lorg/telegram/messenger/ChatThemeController$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController$1;-><init>(Lorg/telegram/messenger/ChatThemeController;Ljava/lang/String;Lorg/telegram/tgnet/ResultCallback;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/ChatThemeController;->requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V

    return-void
.end method

.method public saveChatWallpaper(JLorg/telegram/tgnet/TLRPC$WallPaper;)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "_"

    const-string v1, "chatWallpaper_"

    if-eqz p3, :cond_1

    .line 281
    new-instance v2, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 282
    invoke-virtual {p3, v2}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 283
    invoke-virtual {v2}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p3

    .line 285
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-interface {v2, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 287
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public saveWallpaperBitmap(Landroid/graphics/Bitmap;J)V
    .locals 1

    .line 388
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object p2

    .line 389
    sget-object p3, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDialogTheme(JLjava/lang/String;Z)V
    .locals 4

    .line 223
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 229
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->theme_emoticon:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 243
    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->theme_emoticon:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V

    .line 248
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chatTheme_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p4, :cond_5

    .line 253
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;-><init>()V

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const-string p3, ""

    .line 254
    :goto_2
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;->emoticon:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 256
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    return-void
.end method

.method public setWallpaperToUser(JLjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)I
    .locals 16

    move-object/from16 v7, p0

    move-wide/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    .line 436
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;-><init>()V

    const-wide/16 v9, 0x0

    cmp-long v4, v2, v9

    if-lez v4, :cond_0

    .line 438
    iget v4, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 439
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 442
    :cond_0
    iget v4, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 443
    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 446
    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    if-eqz v9, :cond_2

    .line 448
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    const/4 v10, 0x2

    or-int/2addr v9, v10

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 449
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    iput v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->id:I

    .line 451
    iget v9, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 453
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetChatWallPaper;

    .line 454
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    .line 455
    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v13, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 456
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 457
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;-><init>()V

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 458
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->intensity:F

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 459
    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isMotion:Z

    iput-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    .line 460
    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->isBlurred:Z

    iput-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    .line 461
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->color:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 462
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor1:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 463
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor2:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    .line 464
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->gradientColor3:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    .line 465
    iget v13, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->rotation:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    .line 466
    iput-object v5, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    .line 467
    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v12, :cond_1

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->uploadingImage:Ljava/lang/String;

    if-eqz v12, :cond_1

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 468
    iget-object v12, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    .line 471
    :cond_1
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/2addr v13, v6

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v13, v13, 0x8

    .line 472
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v13, v13, 0x10

    .line 473
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v13, v13, 0x20

    .line 474
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v13, v13, 0x40

    .line 475
    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 477
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;-><init>()V

    iput-object v12, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 478
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget-boolean v13, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    iput-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    .line 479
    iget-wide v13, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 480
    iget-object v13, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 481
    iget v13, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 482
    iget-boolean v14, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    iput-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    .line 483
    iget-boolean v14, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    iput-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    .line 484
    iget-boolean v14, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    iput-boolean v14, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    .line 485
    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    iput-object v14, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    .line 486
    iget-wide v14, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    iput-wide v14, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    .line 487
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->stripedThumb:Landroid/graphics/Bitmap;

    .line 488
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iput-object v1, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    or-int/lit8 v1, v13, 0x4

    .line 489
    iput v1, v12, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 490
    iget v1, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v11, 0x1000000

    or-int/2addr v1, v11

    iput v1, v9, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    .line 492
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v9, v4}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 493
    iget v1, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v11, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v4

    aput-object v9, v10, v6

    invoke-virtual {v1, v11, v10}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p6, :cond_3

    .line 495
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 499
    :cond_2
    iget v1, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    or-int/2addr v1, v6

    iput v1, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 500
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInputWallpaper(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    move-result-object v1

    iput-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->wallpaper:Lorg/telegram/tgnet/TLRPC$InputWallPaper;

    move v4, v6

    .line 502
    :cond_3
    :goto_1
    iget v1, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->flags:I

    .line 503
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getWallpaperSetting(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatWallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    .line 507
    iget v0, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ChatThemeController;JZLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v8, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    return v0
.end method
