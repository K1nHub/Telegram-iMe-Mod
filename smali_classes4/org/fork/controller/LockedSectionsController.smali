.class public final Lorg/fork/controller/LockedSectionsController;
.super Lorg/telegram/messenger/BaseController;
.source "LockedSectionsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;,
        Lorg/fork/controller/LockedSectionsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockedSectionsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockedSectionsController.kt\norg/fork/controller/LockedSectionsController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,204:1\n13536#2,2:205\n11328#2:209\n11663#2,3:210\n211#3,2:207\n*S KotlinDebug\n*F\n+ 1 LockedSectionsController.kt\norg/fork/controller/LockedSectionsController\n*L\n30#1:205,2\n81#1:209\n81#1:210,3\n58#1:207,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/LockedSectionsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/LockedSectionsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sectionsPasscodeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fork/enums/LockedSection;",
            "Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/LockedSectionsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/LockedSectionsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/LockedSectionsController;->Companion:Lorg/fork/controller/LockedSectionsController$Companion;

    .line 197
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/LockedSectionsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 17

    .line 18
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 22
    sget-object v1, Lorg/fork/enums/LockedSection;->ARCHIVE:Lorg/fork/enums/LockedSection;

    new-instance v15, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1ff

    const/16 v16, 0x0

    move-object v2, v15

    move-object/from16 p1, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 23
    sget-object v0, Lorg/fork/enums/LockedSection;->CLOUD:Lorg/fork/enums/LockedSection;

    new-instance v15, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 18
    sget-object v0, Lorg/fork/controller/LockedSectionsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/LockedSectionsController;
    .locals 1

    sget-object v0, Lorg/fork/controller/LockedSectionsController;->Companion:Lorg/fork/controller/LockedSectionsController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/LockedSectionsController$Companion;->getInstance(I)Lorg/fork/controller/LockedSectionsController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkSectionPasscode(Lorg/fork/enums/LockedSection;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "section"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passcode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p0, v0, p1, p2}, Lorg/fork/controller/LockedSectionsController;->createPasscodeSalt(Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;Lorg/fork/enums/LockedSection;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 107
    invoke-virtual {p0, p1, v0}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    :cond_1
    return v2

    .line 112
    :cond_2
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "UTF_8"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    array-length v2, p2

    add-int/lit8 v2, v2, 0x20

    new-array v3, v2, [B

    .line 114
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v4

    const/16 v5, 0x10

    .line 115
    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v6, p2

    invoke-static {p2, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    array-length p2, p2

    add-int/2addr p2, v5

    invoke-static {v4, v1, v3, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v2

    .line 118
    invoke-static {v3, v1, v4, v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 121
    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 122
    invoke-virtual {p0, p1, v0}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return p2

    :catch_0
    move-exception p1

    .line 126
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    return v1
.end method

.method public final cleanup()V
    .locals 22

    move-object/from16 v0, p0

    .line 80
    iget-object v1, v0, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 81
    invoke-static {}, Lorg/fork/enums/LockedSection;->values()[Lorg/fork/enums/LockedSection;

    move-result-object v1

    .line 11328
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 81
    new-instance v15, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    move-object v6, v15

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v6 .. v19}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v21

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-static {v2, v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public final createPasscodeSalt(Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;Lorg/fork/enums/LockedSection;Ljava/lang/String;)V
    .locals 6

    const-string v0, "passcodeData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "section"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passcode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    :try_start_0
    new-array v1, v0, [B

    .line 144
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 145
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "UTF_8"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    array-length v2, p3

    add-int/lit8 v2, v2, 0x20

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 147
    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    array-length v5, p3

    invoke-static {p3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    array-length p3, p3

    add-int/2addr p3, v0

    invoke-static {v1, v4, v3, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([B)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeSalt(Ljava/util/List;)V

    int-to-long v0, v2

    .line 152
    invoke-static {v3, v4, v0, v1}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p3

    .line 151
    invoke-static {p3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p3

    const-string v0, "bytesToHex(\n            \u2026e.toLong())\n            )"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p2, p1}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    return-object p1
.end method

.method public final increaseBadPasscodeTries(Lorg/fork/enums/LockedSection;)V
    .locals 5

    const-string v0, "section"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getBadPasscodeTries()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    .line 163
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getBadPasscodeTries()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 165
    invoke-virtual {v0}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getBadPasscodeTries()I

    move-result v1

    const/4 v3, 0x7

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    sub-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x1388

    mul-long v1, v1, v3

    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeRetryInMs(J)V

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setLastUptimeMillis(J)V

    .line 168
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/fork/controller/LockedSectionsController;->setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V

    return-void
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "preferences"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lorg/fork/enums/LockedSection;->values()[Lorg/fork/enums/LockedSection;

    move-result-object v1

    .line 13536
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 31
    new-instance v15, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1ff

    const/16 v20, 0x0

    move-object v6, v15

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v6 .. v19}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    sget-object v6, Lorg/fork/enums/AutoLockTime;->Companion:Lorg/fork/enums/AutoLockTime$Companion;

    .line 33
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildAutoLockInKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->autoLockInId()I

    move-result v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 32
    invoke-virtual {v6, v7}, Lorg/fork/enums/AutoLockTime$Companion;->findById(I)Lorg/fork/enums/AutoLockTime;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setAutoLockIn(Lorg/fork/enums/AutoLockTime;)V

    .line 35
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildBadPasscodeTriesKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->badPasscodeTries()I

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setBadPasscodeTries(I)V

    .line 36
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildIsSectionLockedKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSectionLocked()Z

    move-result v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v3, v6}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 37
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildLastUptimeMillisKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->lastUptimeMillis()J

    move-result-wide v7

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setLastUptimeMillis(J)V

    .line 38
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeHashKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeHash()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-nez v6, :cond_0

    move-object v6, v7

    :cond_0
    invoke-virtual {v3, v6}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeHash(Ljava/lang/String;)V

    .line 39
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeRetryInMsKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeRetryInMs()J

    move-result-wide v8

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeRetryInMs(J)V

    .line 40
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeSaltStringKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeSaltString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v6

    .line 41
    :goto_1
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    const/4 v6, 0x0

    .line 42
    invoke-static {v7, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v8, "decode(passcodeSaltString, Base64.DEFAULT)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->toList([B)Ljava/util/List;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 41
    :goto_3
    invoke-virtual {v3, v7}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeSalt(Ljava/util/List;)V

    .line 46
    sget-object v7, Lorg/fork/enums/PasscodeType;->Companion:Lorg/fork/enums/PasscodeType$Companion;

    .line 47
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeTypeKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeType()I

    move-result v9

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 46
    invoke-virtual {v7, v8}, Lorg/fork/enums/PasscodeType$Companion;->findById(I)Lorg/fork/enums/PasscodeType;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setPasscodeType(Lorg/fork/enums/PasscodeType;)V

    .line 49
    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildUseFingerprintKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->useFingerprint()Z

    move-result v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v7}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->setUseFingerprint(Z)V

    move-object/from16 v7, p0

    .line 51
    iget-object v8, v7, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v7, p0

    return-void
.end method

.method public final saveConfig()V
    .locals 7

    .line 57
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    .line 211
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/enums/LockedSection;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    .line 59
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildAutoLockInKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lorg/fork/enums/AutoLockTime;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/enums/AutoLockTime;->getId()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildBadPasscodeTriesKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getBadPasscodeTries()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildIsSectionLockedKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildLastUptimeMillisKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getLastUptimeMillis()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeHashKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeRetryInMsKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeRetryInMs()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeSaltStringKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeSalt()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 70
    :cond_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeSaltString()Ljava/lang/String;

    move-result-object v5

    .line 65
    :goto_1
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildPasscodeTypeKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeType()Lorg/fork/enums/PasscodeType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fork/enums/PasscodeType;->getId()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildUseFingerprintKey(Lorg/fork/enums/LockedSection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getUseFingerprint()Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 76
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSectionsPasscodeData(Lorg/fork/enums/LockedSection;Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;)V
    .locals 1

    const-string v0, "sectionPasscodeData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController;->sectionsPasscodeData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
