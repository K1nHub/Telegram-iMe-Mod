.class Lorg/telegram/messenger/SharedConfig$FileInfoInternal;
.super Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;
.source "SharedConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SharedConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfoInternal"
.end annotation


# instance fields
.field final lastUsageDate:J


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 2145
    invoke-direct {p0, p1}, Lorg/telegram/messenger/CacheByChatsController$KeepMediaFile;-><init>(Ljava/io/File;)V

    .line 2146
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->getLastUsageFileTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/SharedConfig$FileInfoInternal;->lastUsageDate:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lorg/telegram/messenger/SharedConfig$1;)V
    .locals 0

    .line 2141
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SharedConfig$FileInfoInternal;-><init>(Ljava/io/File;)V

    return-void
.end method
