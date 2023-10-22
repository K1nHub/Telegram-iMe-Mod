.class public final Lcom/iMe/fork/controller/LockedSectionsController;
.super Lorg/telegram/messenger/BaseController;
.source "LockedSectionsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/LockedSectionsController$Companion;,
        Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockedSectionsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockedSectionsController.kt\ncom/iMe/fork/controller/LockedSectionsController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,152:1\n13579#2:153\n13580#2:155\n11335#2:158\n11670#2,3:159\n26#3:154\n215#4,2:156\n*S KotlinDebug\n*F\n+ 1 LockedSectionsController.kt\ncom/iMe/fork/controller/LockedSectionsController\n*L\n24#1:153\n24#1:155\n115#1:158\n115#1:159,3\n41#1:154\n74#1:156,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/LockedSectionsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/LockedSectionsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sectionsPasscodeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/iMe/fork/enums/LockedSection;",
            "Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/LockedSectionsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/LockedSectionsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/LockedSectionsController;->Companion:Lcom/iMe/fork/controller/LockedSectionsController$Companion;

    .line 145
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/LockedSectionsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 20

    .line 12
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 16
    sget-object v1, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    new-instance v15, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3ff

    const/16 v17, 0x0

    move-object v2, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(ILjava/lang/String;[BZZIJJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v18

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 17
    sget-object v1, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    new-instance v15, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/16 v16, 0x3ff

    move-object v2, v15

    move-object/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(ILjava/lang/String;[BZZIJJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v19

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 15
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iMe/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 12
    sget-object v0, Lcom/iMe/fork/controller/LockedSectionsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/LockedSectionsController;->Companion:Lcom/iMe/fork/controller/LockedSectionsController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/LockedSectionsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cleanup()V
    .locals 24

    move-object/from16 v0, p0

    .line 114
    iget-object v1, v0, Lcom/iMe/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v1, v0, Lcom/iMe/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-static {}, Lcom/iMe/fork/enums/LockedSection;->values()[Lcom/iMe/fork/enums/LockedSection;

    move-result-object v2

    .line 11335
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 115
    new-instance v14, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3ff

    const/16 v22, 0x0

    move-object v7, v14

    move-object/from16 v23, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    invoke-direct/range {v7 .. v21}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(ILjava/lang/String;[BZZIJJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v7, v23

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 11671
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v1, v3}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/iMe/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-object p1
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "preferences"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/iMe/fork/enums/LockedSection;->values()[Lcom/iMe/fork/enums/LockedSection;

    move-result-object v1

    .line 13579
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    move-object/from16 v6, p0

    .line 25
    iget-object v7, v6, Lcom/iMe/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    new-instance v15, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3ff

    const/16 v23, 0x0

    move-object v8, v15

    move-object v3, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    invoke-direct/range {v8 .. v22}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(ILjava/lang/String;[BZZIJJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeTypeKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeType()I

    move-result v9

    .line 26
    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeType(I)V

    .line 31
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeHashKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeHash()Ljava/lang/String;

    move-result-object v9

    .line 30
    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-nez v8, :cond_0

    move-object v8, v9

    :cond_0
    invoke-virtual {v3, v8}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    .line 35
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeSaltStringKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeSaltString()Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_1
    const-string v8, "getString(\n             \u2026ants.Symbols.EMPTY_STRING"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    const/4 v8, 0x0

    .line 39
    invoke-static {v9, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    const-string v10, "{\n                      \u2026LT)\n                    }"

    .line 38
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Byte;

    .line 41
    invoke-static {v9}, Lkotlin/collections/ArraysKt;->toByteArray([Ljava/lang/Byte;)[B

    move-result-object v9

    .line 38
    :goto_3
    invoke-virtual {v3, v9}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeSalt([B)V

    .line 44
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildUseFingerprintKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->useFingerprint()Z

    move-result v10

    .line 43
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setUseFingerprint(Z)V

    .line 48
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildIsSectionLockedKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v9

    .line 49
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSectionLocked()Z

    move-result v10

    .line 47
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 52
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildBadPasscodeTriesKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->badPasscodeTries()I

    move-result v10

    .line 51
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    .line 56
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeRetryInMsKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeRetryInMs()J

    move-result-wide v10

    .line 55
    invoke-interface {v0, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeRetryInMs(J)V

    .line 60
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildLastUptimeMillisKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastUptimeMillis()J

    move-result-wide v10

    .line 59
    invoke-interface {v0, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setLastUptimeMillis(J)V

    .line 64
    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildTimeoutKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->timeout()I

    move-result v10

    .line 63
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setTimeout(I)V

    .line 25
    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v6, p0

    return-void
.end method

.method public final saveConfig()V
    .locals 8

    .line 73
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/iMe/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    .line 215
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/enums/LockedSection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    .line 75
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeTypeKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeType()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeHashKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeSaltStringKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    xor-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 83
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()[B

    move-result-object v5

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 85
    :cond_1
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeSaltString()Ljava/lang/String;

    move-result-object v5

    .line 80
    :goto_2
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildUseFingerprintKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint()Z

    move-result v5

    .line 88
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildIsSectionLockedKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked()Z

    move-result v5

    .line 92
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildBadPasscodeTriesKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getBadPasscodeTries()I

    move-result v5

    .line 96
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildPasscodeRetryInMsKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v5

    .line 100
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildLastUptimeMillisKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getLastUptimeMillis()J

    move-result-wide v5

    .line 104
    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildTimeoutKey(Lcom/iMe/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getTimeout()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 110
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
