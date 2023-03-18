.class public final Lorg/fork/enums/TelegramCacheType$Companion;
.super Ljava/lang/Object;
.source "TelegramCacheType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/TelegramCacheType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/TelegramCacheType$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramCacheType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramCacheType.kt\norg/fork/enums/TelegramCacheType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1#2:76\n1747#3,3:77\n*S KotlinDebug\n*F\n+ 1 TelegramCacheType.kt\norg/fork/enums/TelegramCacheType$Companion\n*L\n69#1:77,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/enums/TelegramCacheType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTypeForFile(Ljava/io/File;)Lorg/fork/enums/TelegramCacheType;
    .locals 10

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lorg/fork/enums/TelegramCacheType;->values()[Lorg/fork/enums/TelegramCacheType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_5

    aget-object v6, v0, v3

    invoke-virtual {v6}, Lorg/fork/enums/TelegramCacheType;->getDirectories()Ljava/util/List;

    move-result-object v7

    .line 1747
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 1748
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    if-eqz v8, :cond_3

    .line 69
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v4

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_4

    move-object v4, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    const/4 v0, -0x1

    goto :goto_4

    :cond_6
    sget-object v0, Lorg/fork/enums/TelegramCacheType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_4
    if-eq v0, v5, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    goto :goto_5

    .line 70
    :cond_7
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/FileExtKt;->isMusic(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object v4, Lorg/fork/enums/TelegramCacheType;->MUSIC:Lorg/fork/enums/TelegramCacheType;

    goto :goto_5

    :cond_8
    sget-object v4, Lorg/fork/enums/TelegramCacheType;->DOCUMENTS:Lorg/fork/enums/TelegramCacheType;

    :goto_5
    if-nez v4, :cond_9

    .line 72
    sget-object v4, Lorg/fork/enums/TelegramCacheType;->OTHER:Lorg/fork/enums/TelegramCacheType;

    :cond_9
    return-object v4
.end method
