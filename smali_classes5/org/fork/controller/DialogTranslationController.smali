.class public final Lorg/fork/controller/DialogTranslationController;
.super Lorg/telegram/messenger/BaseController;
.source "DialogTranslationController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/DialogTranslationController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogTranslationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogTranslationController.kt\norg/fork/controller/DialogTranslationController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n56#2,6:103\n1192#3,2:109\n1220#3,4:111\n1547#3:115\n1618#3,3:116\n*S KotlinDebug\n*F\n+ 1 DialogTranslationController.kt\norg/fork/controller/DialogTranslationController\n*L\n21#1:103,6\n30#1:109,2\n30#1:111,4\n40#1:115\n40#1:116,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/DialogTranslationController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/DialogTranslationController;",
            ">;"
        }
    .end annotation
.end field

.field private static final voiceTranslateLanguages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dao$delegate:Lkotlin/Lazy;

.field private translationSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$lYzPPwVDPaFzgQPq2QNcVC0wJ5w(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/controller/DialogTranslationController;->setSettings$lambda-3(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/fork/controller/DialogTranslationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/DialogTranslationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/DialogTranslationController;->Companion:Lorg/fork/controller/DialogTranslationController$Companion;

    const/16 v0, 0x15

    new-array v0, v0, [Lkotlin/Pair;

    const-string/jumbo v1, "ru-RU"

    const-string v2, "Russian (Russia)"

    .line 70
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ja-JP"

    const-string v2, "Japanese (Japan)"

    .line 71
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "hi-IN"

    const-string v2, "Hindi (India)"

    .line 72
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "fr-FR"

    const-string v2, "French (France)"

    .line 73
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "pt-PT"

    const-string v2, "Portuguese (Portugal)"

    .line 74
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "tr-TR"

    const-string v2, "Turkish (Turkey)"

    .line 75
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "fa-IR"

    const-string v3, "Persian (Iran)"

    .line 76
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "es-ES"

    const-string v3, "Spanish (Spain)"

    .line 77
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "de-DE"

    const-string v3, "German (Germany)"

    .line 78
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "ko-KR"

    const-string v3, "Korean (South Korea)"

    .line 79
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "it-IT"

    const-string v3, "Italian (Italy)"

    .line 80
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "ar-AE"

    const-string v3, "Arabic (United Arab Emirates)"

    .line 81
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "jv-ID"

    const-string v3, "Javanese (Indonesia)"

    .line 82
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string/jumbo v1, "yue-Hant-HK"

    const-string v3, "Vietnamese (Vietnam)"

    .line 83
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string/jumbo v1, "vi-VN"

    const-string v3, "Chinese, Cantonese (Traditional, Hong Kong)"

    .line 84
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string/jumbo v1, "zh-TW (cmn-Hant-TW)"

    const-string v3, "Chinese, Mandarin (Traditional, Taiwan)"

    .line 85
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "az-AZ"

    const-string v3, "Azerbaijani (Azerbaijan)"

    .line 86
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string/jumbo v1, "uz-UZ"

    const-string v3, "Uzbek (Uzbekistan)"

    .line 87
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string/jumbo v1, "uk-UA"

    const-string v3, "Ukrainian (Ukraine)"

    .line 88
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "en-US"

    const-string v3, "English (United States)"

    .line 89
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-string v1, "en-GB"

    const-string v3, "English (United Kingdom)"

    .line 90
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v0, v3

    .line 69
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/fork/controller/DialogTranslationController;->voiceTranslateLanguages:Ljava/util/Map;

    .line 97
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/DialogTranslationController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lorg/fork/controller/DialogTranslationController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/DialogTranslationController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/fork/controller/DialogTranslationController;->dao$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/DialogTranslationController;->translationSettings:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 18
    sget-object v0, Lorg/fork/controller/DialogTranslationController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getDao(Lorg/fork/controller/DialogTranslationController;)Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/fork/controller/DialogTranslationController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUserConfig(Lorg/fork/controller/DialogTranslationController;)Lorg/telegram/messenger/UserConfig;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVoiceTranslateLanguages$cp()Ljava/util/Map;
    .locals 1

    .line 18
    sget-object v0, Lorg/fork/controller/DialogTranslationController;->voiceTranslateLanguages:Ljava/util/Map;

    return-object v0
.end method

.method private final getDao()Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/fork/controller/DialogTranslationController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/DialogTranslationController;
    .locals 1

    sget-object v0, Lorg/fork/controller/DialogTranslationController;->Companion:Lorg/fork/controller/DialogTranslationController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/DialogTranslationController$Companion;->getInstance(I)Lorg/fork/controller/DialogTranslationController;

    move-result-object p0

    return-object p0
.end method

.method private static final setSettings$lambda-3(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBackupData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/fork/controller/DialogTranslationController;->translationSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 18
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getSettings(J)Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 13

    .line 56
    iget-object v0, p0, Lorg/fork/controller/DialogTranslationController;->translationSettings:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;-><init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->setDialogId(J)V

    .line 58
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->getDialogId()J

    move-result-wide p1

    const-wide/32 v1, -0x4f7e27c7

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    .line 59
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->setOutTextTranslateEnabled(Z)V

    const-string/jumbo p2, "ru"

    .line 60
    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->setOutTextTranslateLangCode(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->setInTextTranslateEnabled(Z)V

    :cond_0
    return-object v0
.end method

.method public final getTranslationSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/fork/controller/DialogTranslationController;->translationSettings:Ljava/util/Map;

    return-object v0
.end method

.method public final loadDialogTranslationSettings()V
    .locals 6

    .line 38
    iget-object v0, p0, Lorg/fork/controller/DialogTranslationController;->translationSettings:Ljava/util/Map;

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    invoke-direct {p0}, Lorg/fork/controller/DialogTranslationController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v1, v2, v3}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;->getAllTranslationSettingsForUser(J)Ljava/util/List;

    move-result-object v1

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1619
    check-cast v3, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    .line 40
    invoke-virtual {v3}, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Lcom/smedialink/storage/data/mapper/dialogs/DialogSettingsMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 5

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDialogSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDialogSettings()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1192
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1193
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1220
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1221
    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    .line 30
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/controller/DialogTranslationController;->translationSettings:Ljava/util/Map;

    .line 31
    invoke-direct {p0}, Lorg/fork/controller/DialogTranslationController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getDialogSettings()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;->restoreBackup(JLjava/util/List;)V

    :cond_1
    return-void
.end method

.method public final setSettings(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;Z)V
    .locals 1

    const-string/jumbo v0, "translationSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;

    invoke-direct {v0, p0, p1}, Lorg/fork/controller/DialogTranslationController$setSettings$runnable$1;-><init>(Lorg/fork/controller/DialogTranslationController;Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;)V

    if-eqz p2, :cond_0

    .line 50
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/fork/controller/DialogTranslationController$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lorg/fork/controller/DialogTranslationController$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
