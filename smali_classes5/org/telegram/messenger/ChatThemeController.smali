.class public Lorg/telegram/messenger/ChatThemeController;
.super Lorg/telegram/messenger/BaseController;
.source "ChatThemeController.java"


# static fields
.field private static allChatThemes:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile chatThemeQueue:Lorg/telegram/messenger/DispatchQueue; = null

.field private static final instances:[Lorg/telegram/messenger/ChatThemeController;

.field private static volatile lastReloadTimeMs:J = 0x0L

.field private static final reloadTimeoutMs:J = 0x6ddd00L

.field private static final themeIdWallpaperThumbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile themesHash:J


# instance fields
.field private final dialogEmoticonsMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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

.method public static synthetic $r8$lambda$PgY3Ca0gGhWOWqLRkf5W71aR8YY(Landroid/util/Pair;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/ChatThemeController;->lambda$preloadAllWallpaperThumbs$4(Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TOtOFdcJaiqvTWhEoolRoksrff0(Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$3(Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bRSpEC2K57rYvooBApe_aTS6X60(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$getWallpaperBitmap$5(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTQBW7BW7EtxUYBozdH0Yob1pO0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$deSC0t4D8MZ1PUtX7MrLZzUPkDs(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->lambda$requestAllChatThemes$1(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "chatThemeQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/ChatThemeController;

    .line 178
    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->instances:[Lorg/telegram/messenger/ChatThemeController;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 195
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static clearWallpaperImages()V
    .locals 0

    return-void
.end method

.method public static clearWallpaperThumbImages()V
    .locals 1

    .line 278
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static getAllChatThemesFromPrefs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;"
        }
    .end annotation

    .line 136
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "count"

    const/4 v2, 0x0

    .line 137
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 140
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

    .line 141
    new-instance v6, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v5, 0x1

    .line 143
    :try_start_0
    invoke-virtual {v6, v5}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v7

    invoke-static {v6, v7, v5}, Lorg/telegram/tgnet/TLRPC$Theme;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 145
    new-instance v6, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v6, v5, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(Lorg/telegram/tgnet/TLRPC$TL_theme;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 148
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static getEmojiSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 132
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "chatthemeconfig_emoji"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/ChatThemeController;
    .locals 3

    .line 181
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->instances:[Lorg/telegram/messenger/ChatThemeController;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    .line 183
    const-class v2, Lorg/telegram/messenger/ChatThemeController;

    monitor-enter v2

    .line 184
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Lorg/telegram/messenger/ChatThemeController;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ChatThemeController;-><init>(I)V

    .line 187
    aput-object v1, v0, p0

    .line 189
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

.method private static getPatternFile(J)Ljava/io/File;
    .locals 4

    .line 306
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v3, p1

    sget-wide p0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "%d_%d.jpg"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 128
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "chatthemeconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getWallpaperBitmap(JLorg/telegram/tgnet/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 282
    sget-wide v0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x0

    .line 283
    invoke-interface {p2, p0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 286
    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object p0

    .line 287
    sget-object p1, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getWallpaperThumbBitmap(J)Landroid/graphics/Bitmap;
    .locals 1

    .line 323
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static init()V
    .locals 5

    .line 34
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 35
    sput-wide v1, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 36
    sput-wide v1, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    :try_start_0
    const-string v3, "hash"

    .line 38
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-string v3, "lastReload"

    .line 39
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getAllChatThemesFromPrefs()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    const-string/jumbo v0, "\u274c"

    .line 46
    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->preloadSticker(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 49
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatThemeController;->preloadSticker(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getWallpaperBitmap$5(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 299
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getWallpaperBitmap$6(Ljava/io/File;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
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

    .line 294
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 298
    new-instance p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/ResultCallback;Landroid/graphics/Bitmap;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$preloadAllWallpaperThumbs$4(Landroid/util/Pair;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 267
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$requestAllChatThemes$0(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 100
    invoke-interface {p0, p1}, Lorg/telegram/tgnet/ResultCallback;->onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private static synthetic lambda$requestAllChatThemes$1(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 1

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    .line 111
    invoke-interface {p1, p0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$requestAllChatThemes$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 7

    .line 73
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_themes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 74
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_account_themes;

    .line 75
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->hash:J

    sput-wide v2, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    .line 78
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 79
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 80
    sget-wide v2, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-string v0, "hash"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    sget-wide v2, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    const-string v0, "lastReload"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v2, "count"

    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 84
    :goto_0
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 85
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_account_themes;->themes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_theme;

    .line 86
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;->emoticon:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 88
    invoke-virtual {v3, v4}, Lorg/telegram/tgnet/TLRPC$TL_theme;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 89
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

    invoke-interface {p2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    new-instance v4, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v4, v3, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;-><init>(Lorg/telegram/tgnet/TLRPC$TL_theme;Z)V

    .line 91
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->preloadWallpaper()V

    .line 92
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 95
    :cond_1
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_themesNotModified;

    if-eqz p0, :cond_2

    .line 96
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getAllChatThemesFromPrefs()Ljava/util/List;

    move-result-object v0

    :goto_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 100
    new-instance p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    :goto_2
    if-nez p0, :cond_5

    if-eqz p3, :cond_3

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez p0, :cond_3

    .line 104
    invoke-static {}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createChatThemesDefault()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 107
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->initColors()V

    goto :goto_3

    .line 109
    :cond_4
    new-instance p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private static synthetic lambda$requestAllChatThemes$3(Lorg/telegram/tgnet/ResultCallback;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 70
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p0, p3, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$saveWallpaperBitmap$7(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 313
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 314
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x57

    invoke-virtual {p1, p0, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 315
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 317
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static preloadAllWallpaperImages(Z)V
    .locals 4

    .line 242
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 243
    invoke-virtual {v1, p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    .line 248
    invoke-static {v2, v3}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 251
    invoke-virtual {v1, p0, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static preloadAllWallpaperThumbs(Z)V
    .locals 5

    .line 256
    sget-object v0, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 257
    invoke-virtual {v1, p0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    .line 262
    sget-object v4, Lorg/telegram/messenger/ChatThemeController;->themeIdWallpaperThumbMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    sget-object v2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;->INSTANCE:Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;

    invoke-virtual {v1, p0, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaperThumb(ILorg/telegram/tgnet/ResultCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static preloadSticker(Ljava/lang/String;)V
    .locals 7

    .line 55
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 56
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const-string v2, "50_50"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 58
    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->preloadEmoji(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/ResultCallback<",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/EmojiThemes;",
            ">;>;Z)V"
        }
    .end annotation

    .line 62
    sget-wide v0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-wide v0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 63
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->init()V

    .line 66
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 67
    :goto_0
    sget-object v1, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_3

    goto :goto_2

    .line 116
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_4

    .line 117
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez p1, :cond_4

    .line 118
    invoke-static {}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createChatThemesDefault()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 121
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->initColors()V

    goto :goto_1

    .line 123
    :cond_5
    invoke-interface {p0, v0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    goto :goto_3

    .line 68
    :cond_6
    :goto_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getChatThemes;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getChatThemes;-><init>()V

    .line 69
    sget-wide v1, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_getChatThemes;->hash:J

    .line 70
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/ResultCallback;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_3
    return-void
.end method

.method public static requestChatTheme(Ljava/lang/String;Lorg/telegram/tgnet/ResultCallback;)V
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

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 156
    invoke-interface {p1, p0}, Lorg/telegram/tgnet/ResultCallback;->onComplete(Ljava/lang/Object;)V

    return-void

    .line 159
    :cond_0
    new-instance v0, Lorg/telegram/messenger/ChatThemeController$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ChatThemeController$1;-><init>(Ljava/lang/String;Lorg/telegram/tgnet/ResultCallback;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lorg/telegram/messenger/ChatThemeController;->requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V

    return-void
.end method

.method public static saveWallpaperBitmap(Landroid/graphics/Bitmap;J)V
    .locals 1

    .line 310
    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatThemeController;->getPatternFile(J)Ljava/io/File;

    move-result-object p1

    .line 311
    sget-object p2, Lorg/telegram/messenger/ChatThemeController;->chatThemeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 327
    sput-wide v0, Lorg/telegram/messenger/ChatThemeController;->themesHash:J

    .line 328
    sput-wide v0, Lorg/telegram/messenger/ChatThemeController;->lastReloadTimeMs:J

    .line 329
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getDialogTheme(J)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 4

    .line 226
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

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

    .line 229
    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_2

    .line 231
    sget-object p1, Lorg/telegram/messenger/ChatThemeController;->allChatThemes:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/EmojiThemes;

    .line 233
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    :cond_2
    return-object v1
.end method

.method public setDialogTheme(JLjava/lang/String;Z)V
    .locals 3

    .line 202
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 208
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController;->dialogEmoticonsMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 213
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/ChatThemeController;->getEmojiSharedPreferences()Landroid/content/SharedPreferences;

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

    .line 214
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p4, :cond_3

    .line 218
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;-><init>()V

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, ""

    .line 219
    :goto_1
    iput-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;->emoticon:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatTheme;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 221
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    return-void
.end method
