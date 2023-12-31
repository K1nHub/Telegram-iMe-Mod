.class public Lorg/telegram/messenger/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "tmessages.47"

.field private static final LIB_SO_NAME:Ljava/lang/String; = "libtmessages.47.so"

.field private static final LIB_VERSION:I = 0x2f

.field private static final LOCALE_LIB_SO_NAME:Ljava/lang/String; = "libtmessages.47loc.so"

.field public static log:Ljava/lang/StringBuilder; = null

.field private static volatile nativeLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NativeLoader;->log:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbiFolder()Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "x86_64"

    const-string/jumbo v1, "x86"

    const-string v2, "armeabi"

    .line 191
    :try_start_0
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "mips"

    const-string v6, "armeabi-v7a"

    const-string v7, "arm64-v8a"

    if-eqz v4, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v7

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v6

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 202
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v5

    goto :goto_1

    .line 206
    :cond_6
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported arch: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_1
    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 211
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    const-string/jumbo v0, "os.arch"

    .line 215
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "686"

    .line 216
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    return-object v1
.end method

.method private static getNativeLibraryDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-class v2, Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v3, "nativeLibraryDir"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v2, "lib"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static native init(Ljava/lang/String;Z)V
.end method

.method public static declared-synchronized initNativeLibs(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lorg/telegram/messenger/NativeLoader;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-boolean v1, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 115
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    const-string/jumbo v2, "tmessages.47"

    .line 120
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    sput-boolean v1, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z

    .line 122
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "loaded normal lib"

    .line 123
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 127
    :try_start_2
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 128
    sget-object v3, Lorg/telegram/messenger/NativeLoader;->log:Ljava/lang/StringBuilder;

    const-string v4, "128: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->getAbiFolder()Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 150
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libtmessages.47loc.so"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    .line 153
    :try_start_3
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_2

    const-string v5, "Load local lib"

    .line 154
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 156
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 157
    sput-boolean v1, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    monitor-exit v0

    return-void

    :catch_1
    move-exception v5

    .line 160
    :try_start_4
    sget-object v6, Lorg/telegram/messenger/NativeLoader;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 166
    :cond_3
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_4

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library not found, arch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 168
    sget-object v5, Lorg/telegram/messenger/NativeLoader;->log:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Library not found, arch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_4
    invoke-static {p0, v3, v4, v2}, Lorg/telegram/messenger/NativeLoader;->loadFromZip(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_5

    .line 172
    monitor-exit v0

    return-void

    .line 175
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    sget-object v2, Lorg/telegram/messenger/NativeLoader;->log:Ljava/lang/StringBuilder;

    const-string v3, "176: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :try_start_6
    const-string/jumbo p0, "tmessages.47"

    .line 180
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 181
    sput-boolean v1, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_2
    move-exception p0

    .line 183
    :try_start_7
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 184
    sget-object v1, Lorg/telegram/messenger/NativeLoader;->log:Ljava/lang/StringBuilder;

    const-string v2, "184: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 186
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static loadFromZip(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "/"

    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 55
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 64
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lib/"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "libtmessages.47.so"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 71
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x1000

    new-array p3, p3, [B

    .line 74
    :goto_1
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 76
    invoke-virtual {p0, p3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    .line 80
    invoke-virtual {p2, p0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 81
    invoke-virtual {p2, p0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 82
    invoke-virtual {p2, p0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 86
    sput-boolean p0, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 88
    :try_start_4
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 98
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 103
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 105
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    return p0

    .line 67
    :cond_2
    :try_start_7
    new-instance p0, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find file in apk:lib/"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "tmessages.47"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_4
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v2, p1

    goto :goto_8

    :catch_5
    move-exception p0

    move-object v2, p1

    .line 92
    :goto_5
    :try_start_8
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_3

    .line 96
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    .line 98
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    if-eqz v2, :cond_4

    .line 103
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_7

    :catch_7
    move-exception p0

    .line 105
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    return v1

    :catchall_1
    move-exception p0

    :goto_8
    if-eqz p1, :cond_5

    .line 96
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    .line 98
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_9
    if-eqz v2, :cond_6

    .line 103
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_a

    :catch_9
    move-exception p1

    .line 105
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 108
    :cond_6
    :goto_a
    throw p0
.end method

.method public static loaded()Z
    .locals 1

    .line 225
    sget-boolean v0, Lorg/telegram/messenger/NativeLoader;->nativeLoaded:Z

    return v0
.end method
