.class public final enum Lorg/fork/enums/TelegramCacheType;
.super Ljava/lang/Enum;
.source "TelegramCacheType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/TelegramCacheType$Companion;,
        Lorg/fork/enums/TelegramCacheType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/TelegramCacheType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramCacheType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramCacheType.kt\norg/fork/enums/TelegramCacheType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1547#2:76\n1618#2,3:77\n*S KotlinDebug\n*F\n+ 1 TelegramCacheType.kt\norg/fork/enums/TelegramCacheType\n*L\n63#1:76\n63#1:77,3\n*E\n"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/TelegramCacheType;

.field public static final Companion:Lorg/fork/enums/TelegramCacheType$Companion;

.field public static final enum DOCUMENTS:Lorg/fork/enums/TelegramCacheType;

.field public static final enum MUSIC:Lorg/fork/enums/TelegramCacheType;

.field public static final enum OTHER:Lorg/fork/enums/TelegramCacheType;

.field public static final enum PHOTO:Lorg/fork/enums/TelegramCacheType;

.field public static final enum STICKERS:Lorg/fork/enums/TelegramCacheType;

.field public static final enum VIDEO:Lorg/fork/enums/TelegramCacheType;

.field public static final enum VOICE:Lorg/fork/enums/TelegramCacheType;


# instance fields
.field private final colorKey:Ljava/lang/String;

.field private final directoryTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final documentsMusicType:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/TelegramCacheType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/fork/enums/TelegramCacheType;

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->PHOTO:Lorg/fork/enums/TelegramCacheType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->VIDEO:Lorg/fork/enums/TelegramCacheType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->DOCUMENTS:Lorg/fork/enums/TelegramCacheType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->MUSIC:Lorg/fork/enums/TelegramCacheType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->VOICE:Lorg/fork/enums/TelegramCacheType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->STICKERS:Lorg/fork/enums/TelegramCacheType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->OTHER:Lorg/fork/enums/TelegramCacheType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 18

    .line 15
    new-instance v6, Lorg/fork/enums/TelegramCacheType;

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    .line 17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v0, v9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    const-string v3, "statisticChartLine_blue"

    const/4 v5, 0x0

    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/fork/enums/TelegramCacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V

    sput-object v6, Lorg/fork/enums/TelegramCacheType;->PHOTO:Lorg/fork/enums/TelegramCacheType;

    .line 20
    new-instance v0, Lorg/fork/enums/TelegramCacheType;

    new-array v1, v7, [Ljava/lang/Integer;

    .line 22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v11, "VIDEO"

    const/4 v12, 0x1

    const-string v13, "statisticChartLine_golden"

    const/4 v15, 0x0

    move-object v10, v0

    .line 20
    invoke-direct/range {v10 .. v15}, Lorg/fork/enums/TelegramCacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->VIDEO:Lorg/fork/enums/TelegramCacheType;

    .line 25
    new-instance v0, Lorg/fork/enums/TelegramCacheType;

    new-array v1, v7, [Ljava/lang/Integer;

    const/4 v2, 0x3

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v8

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v9

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v2, "DOCUMENTS"

    const/4 v3, 0x2

    const-string v4, "statisticChartLine_green"

    const/4 v6, 0x1

    move-object v1, v0

    .line 25
    invoke-direct/range {v1 .. v6}, Lorg/fork/enums/TelegramCacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->DOCUMENTS:Lorg/fork/enums/TelegramCacheType;

    .line 30
    new-instance v0, Lorg/fork/enums/TelegramCacheType;

    new-array v1, v7, [Ljava/lang/Integer;

    aput-object v10, v1, v8

    aput-object v11, v1, v9

    .line 32
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const-string v13, "MUSIC"

    const/4 v14, 0x3

    const-string v15, "statisticChartLine_indigo"

    const/16 v17, 0x2

    move-object v12, v0

    .line 30
    invoke-direct/range {v12 .. v17}, Lorg/fork/enums/TelegramCacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->MUSIC:Lorg/fork/enums/TelegramCacheType;

    .line 35
    new-instance v0, Lorg/fork/enums/TelegramCacheType;

    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v2, "VOICE"

    const/4 v3, 0x4

    const-string v4, "statisticChartLine_red"

    const/4 v6, 0x0

    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v6}, Lorg/fork/enums/TelegramCacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->VOICE:Lorg/fork/enums/TelegramCacheType;

    .line 40
    new-instance v0, Lorg/fork/enums/TelegramCacheType;

    const/4 v1, 0x4

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v8, "STICKERS"

    const/4 v9, 0x5

    const-string v10, "statisticChartLine_lightgreen"

    const/4 v12, 0x0

    move-object v7, v0

    .line 40
    invoke-direct/range {v7 .. v12}, Lorg/fork/enums/TelegramCacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->STICKERS:Lorg/fork/enums/TelegramCacheType;

    .line 45
    new-instance v0, Lorg/fork/enums/TelegramCacheType;

    .line 47
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v3, "OTHER"

    const/4 v4, 0x6

    const-string v5, "statisticChartLine_lightblue"

    const/4 v7, 0x0

    move-object v2, v0

    .line 45
    invoke-direct/range {v2 .. v7}, Lorg/fork/enums/TelegramCacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->OTHER:Lorg/fork/enums/TelegramCacheType;

    invoke-static {}, Lorg/fork/enums/TelegramCacheType;->$values()[Lorg/fork/enums/TelegramCacheType;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->$VALUES:[Lorg/fork/enums/TelegramCacheType;

    new-instance v0, Lorg/fork/enums/TelegramCacheType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/TelegramCacheType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/TelegramCacheType;->Companion:Lorg/fork/enums/TelegramCacheType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lorg/fork/enums/TelegramCacheType;->colorKey:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lorg/fork/enums/TelegramCacheType;->directoryTypes:Ljava/util/List;

    .line 13
    iput p5, p0, Lorg/fork/enums/TelegramCacheType;->documentsMusicType:I

    return-void
.end method

.method public static final getTypeForFile(Ljava/io/File;)Lorg/fork/enums/TelegramCacheType;
    .locals 1

    sget-object v0, Lorg/fork/enums/TelegramCacheType;->Companion:Lorg/fork/enums/TelegramCacheType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/TelegramCacheType$Companion;->getTypeForFile(Ljava/io/File;)Lorg/fork/enums/TelegramCacheType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/TelegramCacheType;
    .locals 1

    const-class v0, Lorg/fork/enums/TelegramCacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/TelegramCacheType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/TelegramCacheType;
    .locals 1

    sget-object v0, Lorg/fork/enums/TelegramCacheType;->$VALUES:[Lorg/fork/enums/TelegramCacheType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/TelegramCacheType;

    return-object v0
.end method


# virtual methods
.method public final getColorKey()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/fork/enums/TelegramCacheType;->colorKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirectories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lorg/fork/enums/TelegramCacheType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "acache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/fork/enums/TelegramCacheType;->directoryTypes:Ljava/util/List;

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 63
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public final getDirectoryTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/fork/enums/TelegramCacheType;->directoryTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getDocumentsMusicType()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/fork/enums/TelegramCacheType;->documentsMusicType:I

    return v0
.end method

.method public final title()Ljava/lang/String;
    .locals 2

    .line 51
    sget-object v0, Lorg/fork/enums/TelegramCacheType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->LocalCache:I

    const-string v1, "LocalCache"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LocalCache\", R.string.LocalCache)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->AnimatedStickers:I

    const-string v1, "AnimatedStickers"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AnimatedStick\u2026.string.AnimatedStickers)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->LocalAudioCache:I

    const-string v1, "LocalAudioCache"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LocalAudioCac\u2026R.string.LocalAudioCache)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->LocalMusicCache:I

    const-string v1, "LocalMusicCache"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LocalMusicCac\u2026R.string.LocalMusicCache)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->LocalDocumentCache:I

    const-string v1, "LocalDocumentCache"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LocalDocument\u2026tring.LocalDocumentCache)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->LocalVideoCache:I

    const-string v1, "LocalVideoCache"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LocalVideoCac\u2026R.string.LocalVideoCache)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->LocalPhotoCache:I

    const-string v1, "LocalPhotoCache"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"LocalPhotoCac\u2026R.string.LocalPhotoCache)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
