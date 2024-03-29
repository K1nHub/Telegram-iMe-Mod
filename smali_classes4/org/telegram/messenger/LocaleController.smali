.class public Lorg/telegram/messenger/LocaleController;
.super Ljava/lang/Object;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Serbian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Breton;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Czech;,
        Lorg/telegram/messenger/LocaleController$PluralRules_French;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Langi;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;,
        Lorg/telegram/messenger/LocaleController$PluralRules_None;,
        Lorg/telegram/messenger/LocaleController$PluralRules_One;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Polish;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Two;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;,
        Lorg/telegram/messenger/LocaleController$PluralRules_Zero;,
        Lorg/telegram/messenger/LocaleController$PluralRules;,
        Lorg/telegram/messenger/LocaleController$LocaleInfo;,
        Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/LocaleController; = null

.field static final QUANTITY_FEW:I = 0x8

.field static final QUANTITY_MANY:I = 0x10

.field static final QUANTITY_ONE:I = 0x2

.field static final QUANTITY_OTHER:I = 0x0

.field static final QUANTITY_TWO:I = 0x4

.field static final QUANTITY_ZERO:I = 0x1

.field private static defaultNumbers:[C = null

.field public static is24HourFormat:Z = false

.field public static isRTL:Z = false

.field public static nameDisplayOrder:I = 0x1

.field private static otherNumbers:[[C

.field private static resourcesCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static useImperialSystemType:Ljava/lang/Boolean;


# instance fields
.field private allRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$PluralRules;",
            ">;"
        }
    .end annotation
.end field

.field private changingConfiguration:Z

.field public chatDate:Lorg/telegram/messenger/time/FastDateFormat;

.field public chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

.field private checkingUpdateForCurrentRemoteLocale:Z

.field private currencyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentLocale:Ljava/util/Locale;

.field private currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field private currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

.field private currentSystemLocale:Ljava/lang/String;

.field public formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

.field public formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

.field private languageOverride:Ljava/lang/String;

.field public languages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public languagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private loadingRemoteLanguages:Z

.field private localeValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private otherLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private patching:Z

.field private reloadLastFile:Z

.field public remoteLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public remoteLanguagesDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ruTranslitChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemDefaultLocale:Ljava/util/Locale;

.field private translitChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public unofficialLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3kFt6GEqvY2Vtgs0_TwgrToqXlE(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$17(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$54kwZu9zbf2XLlwJAKLmSGApOFk(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$checkPatchLangpack$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7CYZns2L32xoO_UgJWIiSEkIUDk(Lorg/telegram/messenger/LocaleController;Lorg/telegram/tgnet/TLObject;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->lambda$loadRemoteLanguages$11(Lorg/telegram/tgnet/TLObject;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$7FCM4dZAYqL4m3Us8Fbt4Fkyy5I(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$14(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8j46jg0pAndEjM1W9rz62XkCBoQ(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->lambda$applyLanguage$7(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BoHiMoKiDPmkAtZEcTJQCB5zuaM(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$20(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ELZm2mDA7xrtf7ADs_fQoCnez6w(Lorg/telegram/messenger/LocaleController;ZILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$loadRemoteLanguages$12(ZILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EapPJnd3nAS19TL4JcD3tw7CEuI(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->lambda$checkForcePatchLangpack$6(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FSTtMDAig0pntaPDMtnSg9oWExU(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->lambda$checkForcePatchLangpack$5(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H5c1h_qqJaFVopudUlx6p4f5DiE(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$19(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HY6s8o1aNqXrf_V1wOOUiE39sOQ(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$18(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWrajmnOY1Pkn6owT0klrTIgXpw(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$16(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ne_5szHau7TEkWsFUH5Qi_YkHr0([I[ILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$13([I[ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RghkuOyonNQ7Mllg7eNumlmGlrc()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->lambda$applyLanguage$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$V4dVpXuZ2cos0pMpvopE17UFHls(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$checkUpdateForCurrentRemoteLocale$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$c2F5_MD6la_PwhUGGrr7FeH1a_I(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$15(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fnYZXpppG2jsRVIB0-h3SygqVO0(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$checkUpdateForCurrentRemoteLocale$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gbANt_WKCalwLxCCqZStPc_sCR4(Lorg/telegram/messenger/LocaleController;ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$saveRemoteLocaleStrings$10(ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hKXtX-2Yke6Q3N761GlU8iT_4Ro(Lorg/telegram/messenger/LocaleController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$iRE0awolqAPuiL1YqQwStC-4i7A(Lorg/telegram/messenger/LocaleController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wbUmSvfTygkwsOH02WtT_vdC78g(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/LocaleController;->lambda$applyRemoteLanguage$21(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zz56yKs6Uv08a5wBcKLb3W2t46w(Lorg/telegram/messenger/LocaleController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->lambda$applyLanguage$8(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 303
    sput-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    const/16 v0, 0xa

    new-array v1, v0, [C

    .line 1375
    fill-array-data v1, :array_0

    sput-object v1, Lorg/telegram/messenger/LocaleController;->defaultNumbers:[C

    const/16 v1, 0x12

    new-array v1, v1, [[C

    new-array v2, v0, [C

    .line 1376
    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_4

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_5

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_6

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_7

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_8

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_9

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_a

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_b

    aput-object v2, v1, v0

    new-array v2, v0, [C

    fill-array-data v2, :array_c

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_d

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_e

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_f

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_10

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-array v2, v0, [C

    fill-array-data v2, :array_11

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sput-object v1, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
    .end array-data

    :array_2
    .array-data 2
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data

    :array_3
    .array-data 2
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
    .end array-data

    :array_4
    .array-data 2
        0xae6s
        0xae7s
        0xae8s
        0xae9s
        0xaeas
        0xaebs
        0xaecs
        0xaeds
        0xaees
        0xaefs
    .end array-data

    :array_5
    .array-data 2
        0xa66s
        0xa67s
        0xa68s
        0xa69s
        0xa6as
        0xa6bs
        0xa6cs
        0xa6ds
        0xa6es
        0xa6fs
    .end array-data

    :array_6
    .array-data 2
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
    .end array-data

    :array_7
    .array-data 2
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data

    :array_8
    .array-data 2
        0xb66s
        0xb67s
        0xb68s
        0xb69s
        0xb6as
        0xb6bs
        0xb6cs
        0xb6ds
        0xb6es
        0xb6fs
    .end array-data

    :array_9
    .array-data 2
        0xd66s
        0xd67s
        0xd68s
        0xd69s
        0xd6as
        0xd6bs
        0xd6cs
        0xd6ds
        0xd6es
        0xd6fs
    .end array-data

    :array_a
    .array-data 2
        0xbe6s
        0xbe7s
        0xbe8s
        0xbe9s
        0xbeas
        0xbebs
        0xbecs
        0xbeds
        0xbees
        0xbefs
    .end array-data

    :array_b
    .array-data 2
        0xc66s
        0xc67s
        0xc68s
        0xc69s
        0xc6as
        0xc6bs
        0xc6cs
        0xc6ds
        0xc6es
        0xc6fs
    .end array-data

    :array_c
    .array-data 2
        0x1040s
        0x1041s
        0x1042s
        0x1043s
        0x1044s
        0x1045s
        0x1046s
        0x1047s
        0x1048s
        0x1049s
    .end array-data

    :array_d
    .array-data 2
        0xf20s
        0xf21s
        0xf22s
        0xf23s
        0xf24s
        0xf25s
        0xf26s
        0xf27s
        0xf28s
        0xf29s
    .end array-data

    :array_e
    .array-data 2
        0x1810s
        0x1811s
        0x1812s
        0x1813s
        0x1814s
        0x1815s
        0x1816s
        0x1817s
        0x1818s
        0x1819s
    .end array-data

    :array_f
    .array-data 2
        0x17e0s
        0x17e1s
        0x17e2s
        0x17e3s
        0x17e4s
        0x17e5s
        0x17e6s
        0x17e7s
        0x17e8s
        0x17e9s
    .end array-data

    :array_10
    .array-data 2
        0xe50s
        0xe51s
        0xe52s
        0xe53s
        0xe54s
        0xe55s
        0xe56s
        0xe57s
        0xe58s
        0xe59s
    .end array-data

    :array_11
    .array-data 2
        0xed0s
        0xed1s
        0xed2s
        0xed3s
        0xed4s
        0xed5s
        0xed6s
        0xed7s
        0xed8s
        0xed9s
    .end array-data

    :array_12
    .array-data 2
        -0x5630s
        -0x562fs
        -0x562es
        -0x562ds
        -0x562cs
        -0x562bs
        -0x562as
        -0x5629s
        -0x5628s
        -0x5627s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 59

    move-object/from16 v1, p0

    .line 317
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Lorg/telegram/messenger/time/FastDateFormat;

    .line 145
    iput-object v0, v1, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, v1, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    .line 298
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    .line 299
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    .line 654
    iput-boolean v0, v1, Lorg/telegram/messenger/LocaleController;->patching:Z

    const-string v3, "bem"

    const-string v4, "brx"

    const-string v5, "da"

    const-string v6, "de"

    const-string v7, "el"

    const-string v8, "en"

    const-string v9, "eo"

    const-string v10, "es"

    const-string v11, "et"

    const-string v12, "fi"

    const-string v13, "fo"

    const-string v14, "gl"

    const-string v15, "he"

    const-string/jumbo v16, "iw"

    const-string/jumbo v17, "it"

    const-string/jumbo v18, "nb"

    const-string/jumbo v19, "nl"

    const-string/jumbo v20, "nn"

    const-string/jumbo v21, "no"

    const-string/jumbo v22, "sv"

    const-string v23, "af"

    const-string v24, "bg"

    const-string v25, "bn"

    const-string v26, "ca"

    const-string v27, "eu"

    const-string v28, "fur"

    const-string v29, "fy"

    const-string v30, "gu"

    const-string v31, "ha"

    const-string/jumbo v32, "is"

    const-string/jumbo v33, "ku"

    const-string/jumbo v34, "lb"

    const-string/jumbo v35, "ml"

    const-string/jumbo v36, "mr"

    const-string/jumbo v37, "nah"

    const-string/jumbo v38, "ne"

    const-string/jumbo v39, "om"

    const-string/jumbo v40, "or"

    const-string/jumbo v41, "pa"

    const-string/jumbo v42, "pap"

    const-string/jumbo v43, "ps"

    const-string/jumbo v44, "so"

    const-string/jumbo v45, "sq"

    const-string/jumbo v46, "sw"

    const-string/jumbo v47, "ta"

    const-string/jumbo v48, "te"

    const-string/jumbo v49, "tk"

    const-string/jumbo v50, "ur"

    const-string/jumbo v51, "zu"

    const-string/jumbo v52, "mn"

    const-string v53, "gsw"

    const-string v54, "chr"

    const-string/jumbo v55, "rm"

    const-string/jumbo v56, "pt"

    const-string v57, "an"

    const-string v58, "ast"

    .line 318
    filled-new-array/range {v3 .. v58}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_One;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_One;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v2, "cs"

    const-string/jumbo v3, "sk"

    .line 322
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Czech;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v2, "ff"

    const-string v3, "fr"

    const-string/jumbo v4, "kab"

    .line 323
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_French;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_French;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v2, "ru"

    const-string/jumbo v3, "uk"

    const-string v4, "be"

    .line 324
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Balkan;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v2, "sr"

    const-string v3, "hr"

    const-string v4, "bs"

    const-string/jumbo v5, "sh"

    .line 325
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Serbian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Serbian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v2, "lv"

    .line 326
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Latvian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v2, "lt"

    .line 327
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Lithuanian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v2, "pl"

    .line 328
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Polish;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v2, "ro"

    const-string/jumbo v3, "mo"

    .line 329
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Romanian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v2, "sl"

    .line 330
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_Slovenian;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v2, "ar"

    .line 331
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Arabic;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v3, "mk"

    .line 332
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Macedonian;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v3, "cy"

    .line 333
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v3, "br"

    .line 334
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Breton;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v3, "lag"

    .line 335
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Langi;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v3, "shi"

    .line 336
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Tachelhit;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string/jumbo v3, "mt"

    .line 337
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v5, "ga"

    const-string/jumbo v6, "se"

    const-string/jumbo v7, "sma"

    const-string/jumbo v8, "smi"

    const-string/jumbo v9, "smj"

    const-string/jumbo v10, "smn"

    const-string/jumbo v11, "sms"

    .line 338
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Two;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Two;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v5, "ak"

    const-string v6, "am"

    const-string v7, "bh"

    const-string v8, "fil"

    const-string/jumbo v9, "tl"

    const-string v10, "guw"

    const-string v11, "hi"

    const-string/jumbo v12, "ln"

    const-string/jumbo v13, "mg"

    const-string/jumbo v14, "nso"

    const-string/jumbo v15, "ti"

    const-string/jumbo v16, "wa"

    .line 339
    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_Zero;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    const-string v5, "az"

    const-string v6, "bm"

    const-string v7, "fa"

    const-string v8, "ig"

    const-string v9, "hu"

    const-string/jumbo v10, "ja"

    const-string/jumbo v11, "kde"

    const-string/jumbo v12, "kea"

    const-string/jumbo v13, "ko"

    const-string/jumbo v14, "my"

    const-string/jumbo v15, "ses"

    const-string/jumbo v16, "sg"

    const-string/jumbo v17, "to"

    const-string/jumbo v18, "tr"

    const-string/jumbo v19, "vi"

    const-string/jumbo v20, "wo"

    const-string/jumbo v21, "yo"

    const-string/jumbo v22, "zh"

    const-string v23, "bo"

    const-string v24, "dz"

    const-string v25, "id"

    const-string/jumbo v26, "jv"

    const-string/jumbo v27, "jw"

    const-string/jumbo v28, "ka"

    const-string/jumbo v29, "km"

    const-string/jumbo v30, "kn"

    const-string/jumbo v31, "ms"

    const-string/jumbo v32, "th"

    const-string v33, "in"

    .line 340
    filled-new-array/range {v5 .. v33}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/LocaleController$PluralRules_None;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$PluralRules_None;-><init>()V

    invoke-direct {v1, v3, v4}, Lorg/telegram/messenger/LocaleController;->addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V

    .line 343
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string v4, "English"

    .line 344
    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 345
    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string v4, "en"

    .line 346
    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 347
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    const/4 v6, 0x1

    .line 348
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 349
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string v7, "Italiano"

    .line 353
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v7, "Italian"

    .line 354
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string/jumbo v7, "it"

    .line 355
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 356
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 357
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 358
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string v7, "Espa\u00f1ol"

    .line 362
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v7, "Spanish"

    .line 363
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string v7, "es"

    .line 364
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 365
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 366
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string v7, "Deutsch"

    .line 370
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v7, "German"

    .line 371
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string v7, "de"

    .line 372
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 373
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 374
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 375
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string v7, "Nederlands"

    .line 379
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v7, "Dutch"

    .line 380
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string/jumbo v7, "nl"

    .line 381
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 382
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 383
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 384
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string/jumbo v7, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    .line 388
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v7, "Arabic"

    .line 389
    iput-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 390
    iput-object v2, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 391
    iput-object v5, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 392
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 393
    iput-boolean v6, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    .line 394
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string v3, "Portugu\u00eas (Brasil)"

    .line 398
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v3, "Portuguese (Brazil)"

    .line 399
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string/jumbo v3, "pt_br"

    .line 400
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 401
    iput-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 402
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 403
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string/jumbo v3, "\ud55c\uad6d\uc5b4"

    .line 407
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v3, "Korean"

    .line 408
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string/jumbo v3, "ko"

    .line 409
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 410
    iput-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 411
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 412
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string/jumbo v3, "\u7b80\u4f53\u4e2d\u6587 (beta)"

    .line 417
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v3, "Chinese (Simplified)"

    .line 418
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string/jumbo v3, "zh_ch"

    .line 419
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 420
    iput-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 421
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 422
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->forceToEnd:Z

    .line 423
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    const-string/jumbo v3, "\u7e41\u9ad4\u4e2d\u6587 (beta)"

    .line 427
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    const-string v3, "Chinese (Traditional)"

    .line 428
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const-string/jumbo v3, "zh_tw"

    .line 429
    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 430
    iput-object v5, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 431
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    .line 432
    iput-boolean v6, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->forceToEnd:Z

    .line 433
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    iget-object v7, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/LocaleController;->loadOtherLanguages()V

    .line 437
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    new-instance v2, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    move v2, v0

    .line 441
    :goto_0
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 442
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 443
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 447
    :goto_1
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 448
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 449
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 451
    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 452
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    .line 453
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    .line 454
    iget v3, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iput v3, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 455
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 457
    :cond_2
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v0

    .line 462
    :goto_3
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 463
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 464
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 466
    iget-object v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 467
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    .line 468
    iget v8, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    iput v8, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    .line 469
    iget v3, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iput v3, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 470
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 472
    :cond_4
    iget-object v7, v1, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 476
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 477
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 482
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "language"

    .line 483
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 485
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    move v0, v6

    goto :goto_5

    :cond_6
    move-object v2, v5

    :cond_7
    :goto_5
    if-nez v2, :cond_8

    .line 491
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 492
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    .line 495
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    if-nez v2, :cond_9

    .line 497
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 501
    :cond_9
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v1, v2, v0, v6, v3}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 503
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 507
    :goto_6
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 508
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v3, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;

    invoke-direct {v3, v1, v5}, Lorg/telegram/messenger/LocaleController$TimeZoneChangedReceiver;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 510
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 513
    :goto_7
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/LocaleController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addNbsp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0xa0

    .line 3519
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addRules([Ljava/lang/String;Lorg/telegram/messenger/LocaleController$PluralRules;)V
    .locals 4

    .line 553
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 554
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 2595
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2598
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRemoteLanguage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " currentAccount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    new-array v3, v1, [I

    aput v0, v3, v0

    aput v0, v2, v0

    .line 2601
    new-instance v4, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda15;

    invoke-direct {v4, v3, v2, p5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda15;-><init>([I[ILjava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 2608
    iget-object p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {p0, p5}, Lorg/telegram/messenger/LocaleController;->patched(Ljava/lang/String;)V

    .line 2610
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result p5

    const-string v3, ""

    const/16 v5, 0x8

    if-eqz p5, :cond_4

    if-eqz p2, :cond_2

    iget-object p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 2611
    :cond_2
    iget p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    if-eqz p5, :cond_3

    if-nez p3, :cond_3

    .line 2612
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result p5

    if-eqz p5, :cond_4

    const-string p5, "applyRemoteLanguage getDifference of base"

    .line 2613
    invoke-static {p5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2614
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;-><init>()V

    .line 2615
    iget v6, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    iput v6, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->from_version:I

    .line 2616
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getBaseLangCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_code:Ljava/lang/String;

    .line 2617
    iput-object v3, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_pack:Ljava/lang/String;

    .line 2618
    aget v6, v2, v0

    add-int/2addr v6, v1

    aput v6, v2, v0

    .line 2619
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda19;

    invoke-direct {v7, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {v6, p5, v7, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_3
    const-string p5, "applyRemoteLanguage getLangPack of base"

    .line 2626
    invoke-static {p5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2627
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;-><init>()V

    .line 2628
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getBaseLangCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p5, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    .line 2629
    aget v6, v2, v0

    add-int/2addr v6, v1

    aput v6, v2, v0

    .line 2630
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {v6, p5, v7, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_4
    :goto_0
    if-eqz p2, :cond_6

    .line 2639
    iget-object p5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    return v0

    .line 2640
    :cond_6
    :goto_1
    iget p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    const-string p2, "applyRemoteLanguage getDifference"

    .line 2641
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2642
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;-><init>()V

    .line 2643
    iget p3, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->from_version:I

    .line 2644
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_code:Ljava/lang/String;

    .line 2645
    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getDifference;->lang_pack:Ljava/lang/String;

    .line 2646
    aget p3, v2, v0

    add-int/2addr p3, v1

    aput p3, v2, v0

    .line 2647
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda18;

    invoke-direct {p5, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {p3, p2, p5, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    return p1

    :cond_7
    move p2, v0

    :goto_2
    const/4 p3, 0x5

    if-ge p2, p3, :cond_8

    .line 2656
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->setLangCode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    const-string p2, "applyRemoteLanguage getLangPack"

    .line 2658
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2659
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;-><init>()V

    .line 2660
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLangPack;->lang_code:Ljava/lang/String;

    .line 2661
    aget p3, v2, v0

    add-int/2addr p3, v1

    aput p3, v2, v0

    .line 2662
    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda20;

    invoke-direct {p5, p0, p1, p4, v4}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-virtual {p3, p2, p5, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    return p1

    :cond_9
    :goto_3
    return v0
.end method

.method private createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;
    .locals 1

    if-eqz p2, :cond_0

    .line 2066
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object p2, p3

    .line 2071
    :cond_1
    :try_start_0
    invoke-static {p2, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2074
    :catch_0
    invoke-static {p3, p1}, Lorg/telegram/messenger/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static ensureImperialSystemInit()V
    .locals 4

    .line 3534
    sget-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    .line 3537
    :cond_0
    sget v0, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3539
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    .line 3541
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "US"

    .line 3542
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "LR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3545
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    .line 3546
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 3549
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    :cond_5
    :goto_2
    return-void
.end method

.method private escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[CDATA"

    .line 2362
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "<"

    const-string v1, "&lt;"

    .line 2365
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "& "

    const-string v1, "&amp; "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static fixNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_5

    .line 1400
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    goto :goto_4

    :cond_1
    move v4, v1

    .line 1404
    :goto_1
    sget-object v5, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    array-length v5, v5

    if-ge v4, v5, :cond_4

    move v5, v1

    .line 1405
    :goto_2
    sget-object v6, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    aget-object v7, v6, v4

    array-length v7, v7

    if-ge v5, v7, :cond_3

    .line 1406
    aget-object v6, v6, v4

    aget-char v6, v6, v5

    if-ne v3, v6, :cond_2

    .line 1407
    sget-object v4, Lorg/telegram/messenger/LocaleController;->defaultNumbers:[C

    aget-char v4, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1408
    sget-object v4, Lorg/telegram/messenger/LocaleController;->otherNumbers:[[C

    array-length v4, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1414
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatCallDuration(I)Ljava/lang/String;
    .locals 7

    const-string v0, "Minutes"

    const/16 v1, 0x3c

    const/16 v2, 0xe10

    const/4 v3, 0x0

    if-le p0, v2, :cond_1

    .line 1662
    div-int/lit16 v4, p0, 0xe10

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Hours"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1663
    rem-int/2addr p0, v2

    div-int/2addr p0, v1

    if-lez p0, :cond_0

    .line 1665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    if-le p0, v1, :cond_2

    .line 1669
    div-int/2addr p0, v1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Seconds"

    .line 1671
    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1755
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1756
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1757
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1758
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1759
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1760
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 1763
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    const-string p0, "Yesterday"

    .line 1765
    sget p1, Lorg/telegram/messenger/R$string;->Yesterday:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1766
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1767
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1769
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1772
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR: formatDate"

    return-object p0
.end method

.method public static formatDateAudio(JZ)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1780
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1781
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1782
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1783
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1784
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1785
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "TodayAtFormatted"

    .line 1789
    sget v0, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p2, "TodayAtFormattedWithToday"

    .line 1791
    sget v0, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_2

    if-ne v4, v0, :cond_2

    const-string p2, "YesterdayAtFormatted"

    .line 1794
    sget v0, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1795
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v6, 0x757b12c00L

    cmp-long p2, v0, v6

    const/4 v0, 0x2

    const-string v1, "formatDateAtTime"

    if-gez p2, :cond_3

    .line 1796
    :try_start_1
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1798
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1801
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateCallLog(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1901
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1902
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1903
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1904
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1905
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1906
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    .line 1909
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    const-string v0, "YesterdayAtFormatted"

    .line 1911
    sget v1, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1912
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    const-string v2, "formatDateAtTime"

    if-gez v0, :cond_2

    .line 1913
    :try_start_1
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1915
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1918
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateChat(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1713
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatDateChat(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateChat(JZ)Ljava/lang/String;
    .locals 5

    .line 1718
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 1720
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-wide/16 v3, 0x3e8

    mul-long/2addr p0, v3

    .line 1723
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    if-eqz p2, :cond_0

    .line 1724
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    :cond_0
    if-nez p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long p2, v0, v2

    if-gez p2, :cond_2

    .line 1725
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1727
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {p2, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1729
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR: formatDateChat"

    return-object p0
.end method

.method public static formatDateForBan(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2211
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2212
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2213
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2214
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 2217
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2219
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2222
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateOnline(J[Z)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2023
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2024
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2025
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    .line 2026
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2027
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2028
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2029
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2030
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "LastSeenFormatted"

    const/4 v9, 0x0

    if-ne v7, v2, :cond_0

    if-ne v4, v8, :cond_0

    .line 2033
    :try_start_1
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenFormatted:I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "TodayAtFormatted"

    sget v2, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v9

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9

    invoke-static {v5, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :cond_0
    add-int/2addr v7, v3

    if-ne v7, v2, :cond_3

    if-ne v4, v8, :cond_3

    const-string v2, "YesterdayAtFormatted"

    if-eqz p2, :cond_2

    .line 2044
    :try_start_2
    aput-boolean v3, p2, v9

    if-gt v6, v1, :cond_1

    const/16 p2, 0x12

    if-le v0, p2, :cond_1

    .line 2045
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz p2, :cond_1

    .line 2046
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenFormatted:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9

    invoke-static {v5, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2048
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9

    invoke-static {v2, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2050
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenFormatted:I

    new-array v0, v3, [Ljava/lang/Object;

    sget v1, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v9

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9

    invoke-static {v5, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2052
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-wide v4, 0x757b12c00L

    cmp-long p2, v0, v4

    const-string v0, "LastSeenDateFormatted"

    const/4 v1, 0x2

    const-string v2, "formatDateAtTime"

    if-gez p2, :cond_4

    .line 2053
    :try_start_3
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2054
    sget p1, Lorg/telegram/messenger/R$string;->LastSeenDateFormatted:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v9

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2056
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2057
    sget p1, Lorg/telegram/messenger/R$string;->LastSeenDateFormatted:I

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v9

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2060
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDateTime(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1949
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1950
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1951
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1952
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1953
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1954
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    const-string v0, "TodayAtFormattedWithToday"

    .line 1957
    sget v1, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    const-string v0, "YesterdayAtFormatted"

    .line 1959
    sget v1, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1960
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    const-string v2, "formatDateAtTime"

    if-gez v0, :cond_2

    .line 1961
    :try_start_1
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1963
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1966
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatDistance(FI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3554
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatDistance(FILjava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDistance(FILjava/lang/Boolean;)Ljava/lang/String;
    .locals 7

    .line 3577
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->ensureImperialSystemInit()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 3578
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_2

    sget-object p2, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    const-string v2, "%.2f"

    const/4 v3, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "%d"

    if-eqz p2, :cond_9

    const p2, 0x4051f948

    mul-float/2addr p0, p2

    cmpg-float p2, p0, v4

    if-gez p2, :cond_5

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    .line 3589
    sget p1, Lorg/telegram/messenger/R$string;->FootsShort:I

    new-array p2, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "FootsShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3586
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->FootsFromYou:I

    new-array p2, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "FootsFromYou"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3584
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->FootsAway:I

    new-array p2, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "FootsAway"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/high16 p2, 0x45a50000    # 5280.0f

    rem-float v4, p0, p2

    cmpl-float v3, v4, v3

    if-nez v3, :cond_6

    new-array v2, v1, [Ljava/lang/Object;

    div-float/2addr p0, p2

    float-to-int p0, p0

    .line 3594
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_6
    new-array v3, v1, [Ljava/lang/Object;

    div-float/2addr p0, p2

    .line 3596
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    .line 3605
    sget p1, Lorg/telegram/messenger/R$string;->MilesShort:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MilesShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3602
    :cond_7
    sget p1, Lorg/telegram/messenger/R$string;->MilesFromYou:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MilesFromYou"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3600
    :cond_8
    sget p1, Lorg/telegram/messenger/R$string;->MilesAway:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "MilesAway"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    cmpg-float p2, p0, v4

    if-gez p2, :cond_c

    if-eqz p1, :cond_b

    if-eq p1, v1, :cond_a

    .line 3618
    sget p1, Lorg/telegram/messenger/R$string;->MetersShort:I

    new-array p2, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "MetersShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3615
    :cond_a
    sget p1, Lorg/telegram/messenger/R$string;->MetersFromYou2:I

    new-array p2, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "MetersFromYou2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3613
    :cond_b
    sget p1, Lorg/telegram/messenger/R$string;->MetersAway2:I

    new-array p2, v1, [Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "MetersAway2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    rem-float p2, p0, v4

    cmpl-float p2, p2, v3

    if-nez p2, :cond_d

    new-array p2, v1, [Ljava/lang/Object;

    div-float/2addr p0, v4

    float-to-int p0, p0

    .line 3623
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {v6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_d
    new-array p2, v1, [Ljava/lang/Object;

    div-float/2addr p0, v4

    .line 3625
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz p1, :cond_f

    if-eq p1, v1, :cond_e

    .line 3634
    sget p1, Lorg/telegram/messenger/R$string;->KMetersShort:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "KMetersShort"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3631
    :cond_e
    sget p1, Lorg/telegram/messenger/R$string;->KMetersFromYou2:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "KMetersFromYou2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3629
    :cond_f
    sget p1, Lorg/telegram/messenger/R$string;->KMetersAway2:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "KMetersAway2"

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 7

    const-string v0, "Seconds"

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    .line 1636
    invoke-static {v0, v1, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1638
    :cond_0
    div-int/lit16 v2, p0, 0xe10

    .line 1639
    div-int/lit8 v3, p0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 1640
    rem-int/lit8 p0, p0, 0x3c

    .line 1641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v2, :cond_1

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Hours"

    .line 1643
    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0x20

    if-lez v3, :cond_3

    .line 1646
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1647
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Minutes"

    .line 1649
    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-lez p0, :cond_5

    .line 1652
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1653
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    new-array v1, v1, [Ljava/lang/Object;

    .line 1655
    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatImportedDate(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2306
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const-string p0, "%1$s, %2$s"

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2307
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2309
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatJoined(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2291
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const-string v2, "formatDateAtTime"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v0, :cond_0

    .line 2292
    :try_start_1
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2294
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "ChannelOtherSubscriberJoined"

    .line 2296
    sget v0, Lorg/telegram/messenger/R$string;->ChannelOtherSubscriberJoined:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2298
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatLocationLeftTime(I)Ljava/lang/String;
    .locals 6

    .line 2006
    div-int/lit8 v0, p0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr p0, v1

    .line 2008
    div-int/lit8 v1, p0, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr p0, v2

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    new-array p0, v4, [Ljava/lang/Object;

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v0, v4

    .line 2011
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v3

    const-string v0, "%dh"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string v0, "%d"

    if-eqz v1, :cond_3

    new-array v5, v4, [Ljava/lang/Object;

    if-le p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    add-int/2addr v1, v4

    .line 2013
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    .line 2015
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static formatLocationUpdateDate(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1974
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x6

    .line 1975
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    .line 1976
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1977
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1978
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1979
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "LocationUpdatedFormatted"

    const/4 v8, 0x0

    if-ne v3, v4, :cond_2

    if-ne v6, v2, :cond_2

    .line 1982
    :try_start_1
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-long v2, v2

    div-long v0, p0, v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x3c

    div-int/2addr v0, v1

    if-ge v0, v5, :cond_0

    const-string p0, "LocationUpdatedJustNow"

    .line 1984
    sget p1, Lorg/telegram/messenger/R$string;->LocationUpdatedJustNow:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ge v0, v1, :cond_1

    const-string p0, "UpdatedMinutes"

    new-array p1, v8, [Ljava/lang/Object;

    .line 1986
    invoke-static {p0, v0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1988
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TodayAtFormatted"

    sget v3, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v8

    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v3, v5

    if-ne v3, v4, :cond_3

    if-ne v6, v2, :cond_3

    .line 1990
    sget v0, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "YesterdayAtFormatted"

    sget v3, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v8

    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1991
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const-string v2, "formatDateAtTime"

    if-gez v0, :cond_4

    .line 1992
    :try_start_2
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1993
    sget p1, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v8

    invoke-static {v7, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1995
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1996
    sget p1, Lorg/telegram/messenger/R$string;->LocationUpdatedFormatted:I

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v8

    invoke-static {v7, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1999
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static varargs formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_1

    .line 1247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1250
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1253
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_other"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1254
    array-length v3, p2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 1255
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 1256
    array-length p1, p2

    invoke-static {p2, v6, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1248
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2c

    .line 1265
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 8

    const-string v0, "%1$s"

    const-string v1, "%d"

    if-eqz p0, :cond_8

    .line 1270
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1273
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object v2

    .line 1274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    :goto_0
    if-lez p1, :cond_1

    .line 1277
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x3

    goto :goto_0

    .line 1280
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    const-string v5, "_other"

    if-nez p1, :cond_4

    .line 1282
    :try_start_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object p1, p2

    :cond_4
    const-string/jumbo p2, "string"

    if-nez p1, :cond_5

    .line 1285
    :try_start_2
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, p2, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1286
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-nez p1, :cond_6

    .line 1289
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, p2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1290
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1292
    :cond_6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%1$d"

    .line 1293
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1295
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz p2, :cond_7

    .line 1296
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v3, v0, v6

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-array p2, v4, [Ljava/lang/Object;

    aput-object v3, p2, v6

    .line 1298
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1271
    :cond_8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 1301
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPluralStringInternal(II)Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSectionDate(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2170
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatYearMont(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSeenDate(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1809
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1810
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1811
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1812
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1813
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1814
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    const-string v0, "TodayAtFormattedWithToday"

    .line 1817
    sget v1, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_1

    if-ne v4, v0, :cond_1

    const-string v0, "YesterdayAtFormatted"

    .line 1819
    sget v1, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1820
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v6, 0x757b12c00L

    cmp-long v0, v0, v6

    const/4 v1, 0x2

    const-string v2, "formatDateAtTime"

    if-gez v0, :cond_2

    .line 1821
    :try_start_1
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1823
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1826
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatShortDate(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1834
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1835
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1836
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1837
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1838
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1839
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1840
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-long/2addr v5, p0

    const-wide/32 v7, 0xea60

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 1843
    sget p0, Lorg/telegram/messenger/R$string;->ShortNow:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v9, 0x36ee80

    cmp-long v11, v5, v9

    const/4 v12, 0x0

    if-gez v11, :cond_1

    .line 1845
    div-long/2addr v5, v7

    long-to-int p0, v5

    const-string p1, "ShortMinutesAgo"

    new-array v0, v12, [Ljava/lang/Object;

    .line 1846
    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v1, v2, :cond_3

    if-ne v4, v0, :cond_3

    const-wide/32 p0, 0x2932e00

    cmp-long p0, v5, p0

    if-gez p0, :cond_2

    .line 1849
    div-long/2addr v5, v9

    long-to-int p0, v5

    const-string p1, "ShortHoursAgo"

    new-array v0, v12, [Ljava/lang/Object;

    .line 1850
    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1852
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->ShortToday:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_4

    if-ne v4, v0, :cond_4

    .line 1855
    sget p0, Lorg/telegram/messenger/R$string;->ShortYesterday:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1856
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v4, 0x757b12c00L

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    .line 1857
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "formatDateAtTime"

    .line 1859
    sget v1, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1862
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatShortNumber(I[I)Ljava/lang/String;
    .locals 9

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2257
    :goto_0
    div-int/lit16 v3, p0, 0x3e8

    if-lez v3, :cond_0

    const-string v2, "K"

    .line 2258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    rem-int/lit16 p0, p0, 0x3e8

    div-int/lit8 v2, p0, 0x64

    move p0, v3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    int-to-double v3, p0

    int-to-double v5, v2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    move v5, v1

    .line 2264
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    double-to-int v3, v3

    .line 2267
    aput v3, p1, v1

    :cond_2
    const/4 p1, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    .line 2269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 2270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2271
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, p1

    const-string p0, "%d.%dM"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2273
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v3

    const-string p0, "%d.%d%s"

    invoke-static {v4, p0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2276
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 2277
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "%dM"

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2279
    :cond_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, p1

    const-string p0, "%d%s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSmallDateChat(J)Ljava/lang/String;
    .locals 5

    .line 1736
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 1738
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-wide/16 v3, 0x3e8

    mul-long/2addr p0, v3

    .line 1741
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1742
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1743
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1745
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v3, p0, p1}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1747
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR: formatDateChat"

    return-object p0
.end method

.method public static formatStartsTime(JI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2134
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatStartsTime(JIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStartsTime(JIZ)Ljava/lang/String;
    .locals 7

    .line 2138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 2140
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    .line 2141
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-wide/16 v5, 0x3e8

    mul-long/2addr p0, v5

    .line 2143
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2144
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 2145
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v3, 0x2

    if-ne v2, p0, :cond_1

    if-eqz p3, :cond_0

    if-ne p1, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    if-ne p2, v1, :cond_2

    add-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_2
    if-ne p2, v3, :cond_3

    add-int/lit8 p0, p0, 0x6

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    add-int/lit8 p0, p0, 0x9

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    if-ne p2, p1, :cond_5

    add-int/lit8 p0, p0, 0xc

    .line 2166
    :cond_5
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    aget-object p0, p1, p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStatusExpireDateTime(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1926
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1927
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1928
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1929
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1930
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1931
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v2, :cond_0

    if-ne v4, v0, :cond_0

    const-string v0, "TodayAtFormatted"

    .line 1934
    sget v1, Lorg/telegram/messenger/R$string;->TodayAtFormatted:I

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1935
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1936
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1938
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1941
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static formatStoryDate(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 1870
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1871
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 1872
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1873
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1874
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1875
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1876
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-long/2addr v5, p0

    const-wide/32 v7, 0xea60

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    const-string p0, "RightNow"

    .line 1879
    sget p1, Lorg/telegram/messenger/R$string;->RightNow:I

    invoke-static {p0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v9, 0x36ee80

    cmp-long v9, v5, v9

    const/4 v10, 0x0

    if-gez v9, :cond_1

    .line 1881
    div-long/2addr v5, v7

    long-to-int p0, v5

    const-string p1, "MinutesAgo"

    new-array v0, v3, [Ljava/lang/Object;

    .line 1882
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {p1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v1, v2, :cond_2

    if-ne v4, v0, :cond_2

    const-string v0, "TodayAtFormattedWithToday"

    .line 1884
    sget v1, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr v1, v3

    if-ne v1, v2, :cond_3

    if-ne v4, v0, :cond_3

    const-string v0, "YesterdayAtFormatted"

    .line 1886
    sget v1, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1887
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v4, 0x757b12c00L

    cmp-long v0, v0, v4

    const/4 v1, 0x2

    const-string v2, "formatDateAtTime"

    if-gez v0, :cond_4

    .line 1888
    :try_start_1
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1890
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1893
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static varargs formatString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1307
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1309
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1311
    :cond_0
    invoke-static {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1315
    invoke-static {p0, v0, p1, v1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatString(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1320
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->isOverriddenTelegramLocale(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-static {p2, p4}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1325
    :cond_0
    :try_start_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 1327
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1328
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    if-nez v0, :cond_3

    .line 1332
    :try_start_1
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    if-eqz p3, :cond_3

    .line 1336
    :try_start_2
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1343
    :catch_1
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz p1, :cond_4

    .line 1344
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {p1, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1346
    :cond_4
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p1

    .line 1349
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LOC_ERR: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/iMe/utils/helper/WrappedResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1623
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 1624
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1626
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 1629
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1630
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LOC_ERR: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTTLString(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ge p0, v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Seconds"

    .line 1356
    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0xe10

    if-ge p0, v2, :cond_1

    .line 1358
    div-int/2addr p0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Minutes"

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v2, 0x15180

    if-ge p0, v2, :cond_2

    .line 1360
    div-int/2addr p0, v1

    div-int/2addr p0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Hours"

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v2, 0x93a80

    const-string v3, "Days"

    if-ge p0, v2, :cond_3

    .line 1362
    div-int/2addr p0, v1

    div-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x18

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const v2, 0x28de80

    if-ge p0, v2, :cond_5

    .line 1364
    div-int/lit8 v2, p0, 0x3c

    div-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x18

    .line 1365
    rem-int/lit8 p0, p0, 0x7

    const-string v1, "Weeks"

    if-nez p0, :cond_4

    .line 1366
    div-int/lit8 v2, v2, 0x7

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 1368
    div-int/lit8 v4, v2, 0x7

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v1, 0x1

    rem-int/lit8 v2, v2, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    const-string v0, "%s %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1371
    :cond_5
    div-int/2addr p0, v1

    div-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x18

    div-int/lit8 p0, p0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Months"

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2284
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2315
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z)Ljava/lang/String;
    .locals 12

    const/16 v0, -0x3ea

    const/16 v1, -0x66

    const/16 v2, -0x3e9

    const/16 v3, -0x65

    const/16 v4, -0x3e8

    const/16 v5, -0x64

    if-eqz p1, :cond_5

    .line 2319
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v6, :cond_5

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-nez v7, :cond_5

    .line 2320
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v7, :cond_1

    .line 2321
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_3

    .line 2322
    :cond_1
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v7, :cond_3

    .line 2323
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    if-eqz v7, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_3

    .line 2324
    :cond_3
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v7, :cond_5

    .line 2325
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    if-eqz v7, :cond_4

    move v7, v0

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    iput v7, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_5
    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "Online"

    if-eqz p1, :cond_7

    .line 2328
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_7

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gtz v9, :cond_7

    .line 2329
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz p2, :cond_6

    .line 2331
    aput-boolean v6, p2, v7

    .line 2333
    :cond_6
    sget p0, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v8, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p1, :cond_12

    .line 2336
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v9, :cond_12

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-eqz v9, :cond_12

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-nez v9, :cond_12

    instance-of v9, p1, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    if-eqz v9, :cond_8

    goto :goto_7

    .line 2339
    :cond_8
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p0

    .line 2340
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-le p1, p0, :cond_a

    if-eqz p2, :cond_9

    .line 2342
    aput-boolean v6, p2, v7

    .line 2344
    :cond_9
    sget p0, Lorg/telegram/messenger/R$string;->Online:I

    invoke-static {v8, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, -0x1

    if-ne p1, p0, :cond_b

    .line 2347
    sget p0, Lorg/telegram/messenger/R$string;->Invisible:I

    const-string p1, "Invisible"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eq p1, v5, :cond_11

    if-ne p1, v4, :cond_c

    goto :goto_6

    :cond_c
    if-eq p1, v3, :cond_10

    if-ne p1, v2, :cond_d

    goto :goto_5

    :cond_d
    if-eq p1, v1, :cond_f

    if-ne p1, v0, :cond_e

    goto :goto_4

    :cond_e
    int-to-long p0, p1

    .line 2355
    invoke-static {p0, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatDateOnline(J[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2353
    :cond_f
    :goto_4
    sget p0, Lorg/telegram/messenger/R$string;->WithinAMonth:I

    const-string p1, "WithinAMonth"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2351
    :cond_10
    :goto_5
    sget p0, Lorg/telegram/messenger/R$string;->WithinAWeek:I

    const-string p1, "WithinAWeek"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2349
    :cond_11
    :goto_6
    sget p0, Lorg/telegram/messenger/R$string;->Lately:I

    const-string p1, "Lately"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2337
    :cond_12
    :goto_7
    sget p0, Lorg/telegram/messenger/R$string;->ALongTimeAgo:I

    const-string p1, "ALongTimeAgo"

    invoke-static {p1, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYearMont(JZ)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2177
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2178
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2179
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2180
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x2

    .line 2181
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "January"

    .line 2183
    sget v6, Lorg/telegram/messenger/R$string;->January:I

    .line 2184
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "February"

    sget v5, Lorg/telegram/messenger/R$string;->February:I

    .line 2185
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "March"

    sget v4, Lorg/telegram/messenger/R$string;->March:I

    .line 2186
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x3

    const-string v1, "April"

    sget v4, Lorg/telegram/messenger/R$string;->April:I

    .line 2187
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x4

    const-string v1, "May"

    sget v4, Lorg/telegram/messenger/R$string;->May:I

    .line 2188
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x5

    const-string v1, "June"

    sget v4, Lorg/telegram/messenger/R$string;->June:I

    .line 2189
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x6

    const-string v1, "July"

    sget v4, Lorg/telegram/messenger/R$string;->July:I

    .line 2190
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x7

    const-string v1, "August"

    sget v4, Lorg/telegram/messenger/R$string;->August:I

    .line 2191
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/16 p1, 0x8

    const-string v1, "September"

    sget v4, Lorg/telegram/messenger/R$string;->September:I

    .line 2192
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/16 p1, 0x9

    const-string v1, "October"

    sget v4, Lorg/telegram/messenger/R$string;->October:I

    .line 2193
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/16 p1, 0xa

    const-string v1, "November"

    sget v4, Lorg/telegram/messenger/R$string;->November:I

    .line 2194
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/16 p1, 0xb

    const-string v1, "December"

    sget v4, Lorg/telegram/messenger/R$string;->December:I

    .line 2195
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    if-ne v2, p0, :cond_0

    if-nez p2, :cond_0

    .line 2198
    aget-object p0, v3, v0

    return-object p0

    .line 2200
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, v3, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2203
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method public static getCurrencyExpDivider(Ljava/lang/String;)I
    .locals 4

    .line 1514
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "XPF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "XOF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "XAF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "VUV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "VND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "UYI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "UGX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "RWF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "PYG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "OMR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "MRO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "MGA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "LYD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "KWD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "KRW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "KMF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "JPY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "JOD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    move v3, v1

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ISK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "IQD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "GNF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_16
    const-string v0, "DJF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_17
    const-string v0, "CVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_18
    const-string v0, "CLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_19
    const-string v0, "CLF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1a
    const-string v0, "BYR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1b
    const-string v0, "BIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    move v3, v2

    goto :goto_0

    :sswitch_1c
    const-string v0, "BHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/16 p0, 0x64

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    const/16 p0, 0x2710

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    const/16 p0, 0x3e8

    return p0

    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1c
        0x100df -> :sswitch_1b
        0x102db -> :sswitch_1a
        0x104fd -> :sswitch_19
        0x10507 -> :sswitch_18
        0x10632 -> :sswitch_17
        0x10880 -> :sswitch_16
        0x1143f -> :sswitch_15
        0x11c1c -> :sswitch_14
        0x11c61 -> :sswitch_13
        0x11f9f -> :sswitch_12
        0x11fd3 -> :sswitch_11
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_f
        0x12458 -> :sswitch_e
        0x12857 -> :sswitch_d
        0x129e7 -> :sswitch_c
        0x12b4a -> :sswitch_b
        0x13234 -> :sswitch_a
        0x1375e -> :sswitch_9
        0x13ea1 -> :sswitch_8
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_6
        0x14a25 -> :sswitch_5
        0x14c8c -> :sswitch_4
        0x14d77 -> :sswitch_3
        0x1527d -> :sswitch_2
        0x1542f -> :sswitch_1
        0x1544e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentLanguageName()Ljava/lang/String;
    .locals 2

    .line 1155
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v0, :cond_1

    .line 1156
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->LanguageName:I

    const-string v1, "LanguageName"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/LocaleController;
    .locals 2

    .line 305
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    if-nez v0, :cond_1

    .line 307
    const-class v1, Lorg/telegram/messenger/LocaleController;

    monitor-enter v1

    .line 308
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lorg/telegram/messenger/LocaleController;

    invoke-direct {v0}, Lorg/telegram/messenger/LocaleController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/LocaleController;->Instance:Lorg/telegram/messenger/LocaleController;

    .line 312
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInternalString(I)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/iMe/utils/helper/WrappedResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 517
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "YL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FT"

    .line 519
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "\ud83c\udff4\u200d\u2620\ufe0f"

    return-object p0

    :cond_1
    const-string v0, "XG"

    .line 521
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "\ud83d\udef0"

    return-object p0

    :cond_2
    const-string v0, "XV"

    .line 523
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p0, "\ud83c\udf0d"

    return-object p0

    :cond_3
    const v0, 0x1f1a5

    .line 528
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [C

    .line 530
    invoke-static {v0}, Lorg/telegram/messenger/CharacterCompat;->highSurrogate(I)C

    move-result v3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    aget-char v3, p0, v4

    add-int/2addr v3, v0

    .line 531
    invoke-static {v3}, Lorg/telegram/messenger/CharacterCompat;->lowSurrogate(I)C

    move-result v3

    const/4 v4, 0x1

    aput-char v3, v2, v4

    .line 532
    invoke-static {v0}, Lorg/telegram/messenger/CharacterCompat;->highSurrogate(I)C

    move-result v3

    aput-char v3, v2, v1

    const/4 v1, 0x3

    aget-char p0, p0, v4

    add-int/2addr p0, v0

    .line 533
    invoke-static {p0}, Lorg/telegram/messenger/CharacterCompat;->lowSurrogate(I)C

    move-result p0

    aput-char p0, v2, v1

    .line 535
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLocaleAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 750
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "fil"

    const-string/jumbo v4, "yi"

    const-string/jumbo v5, "tl"

    const-string/jumbo v6, "no"

    const-string/jumbo v7, "nb"

    const-string/jumbo v8, "jw"

    const-string/jumbo v9, "jv"

    const-string/jumbo v10, "ji"

    const-string/jumbo v11, "iw"

    const-string v12, "in"

    const-string v13, "id"

    const-string v14, "he"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    return-object v5

    :pswitch_1
    return-object v10

    :pswitch_2
    return-object v3

    :pswitch_3
    return-object v7

    :pswitch_4
    return-object v6

    :pswitch_5
    return-object v9

    :pswitch_6
    return-object v8

    :pswitch_7
    return-object v4

    :pswitch_8
    return-object v14

    :pswitch_9
    return-object v13

    :pswitch_a
    return-object v12

    :pswitch_b
    return-object v11

    :sswitch_data_0
    .sparse-switch
        0xcfd -> :sswitch_b
        0xd1b -> :sswitch_a
        0xd25 -> :sswitch_9
        0xd2e -> :sswitch_8
        0xd3f -> :sswitch_7
        0xd4c -> :sswitch_6
        0xd4d -> :sswitch_5
        0xdb4 -> :sswitch_4
        0xdc1 -> :sswitch_3
        0xe78 -> :sswitch_2
        0xf10 -> :sswitch_1
        0x18c09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 945
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method private getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 950
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 952
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 953
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 955
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 956
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 958
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "UTF-8"

    .line 959
    invoke-interface {v4, v5, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 960
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    :goto_0
    if-eq p1, v1, :cond_6

    const/4 v9, 0x2

    if-ne p1, v9, :cond_1

    .line 966
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 967
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 969
    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v9, 0x4

    if-ne p1, v9, :cond_3

    if-eqz v6, :cond_4

    .line 973
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 975
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "&lt;"

    const-string v9, "<"

    if-eqz p2, :cond_2

    .line 977
    :try_start_2
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v8, ">"

    const-string v9, "&gt;"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "\'"

    const-string v9, "\\\'"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "& "

    const-string v9, "&amp; "

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const-string v10, "\\n"

    const-string v11, "\n"

    .line 979
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v10, "\\"

    const-string v11, ""

    .line 980
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 982
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 983
    iget-boolean v9, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    if-nez v9, :cond_4

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 984
    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    goto :goto_1

    :cond_3
    const/4 v9, 0x3

    if-ne p1, v9, :cond_4

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    const-string/jumbo p1, "string"

    .line 994
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v8, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 995
    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    .line 1000
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1009
    :cond_6
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1012
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-object v3

    :catchall_0
    move-exception p1

    move-object v2, v5

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 1004
    :goto_3
    :try_start_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1005
    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_7

    .line 1009
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 1012
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1015
    :cond_7
    :goto_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :goto_5
    if-eqz v2, :cond_8

    .line 1009
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    .line 1012
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1014
    :cond_8
    :goto_6
    throw p1
.end method

.method private getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const-string v0, "en"

    if-nez p1, :cond_0

    return-object v0

    .line 675
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 678
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x5f

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 684
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 686
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 688
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getLocaleStringIso639()Ljava/lang/String;
    .locals 5

    .line 719
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 723
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    const-string v1, "en"

    if-nez v0, :cond_1

    return-object v1

    .line 727
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    return-object v1

    .line 733
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    :cond_3
    const/16 v2, 0x2d

    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x5f

    .line 740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPluralString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    .line 1236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1239
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result p1

    invoke-direct {v0, p1}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object p1

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1241
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1242
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_other"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1237
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LOC_ERR:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1189
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1191
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, p0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1193
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 3

    .line 1200
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1202
    sget-object v0, Lorg/telegram/messenger/LocaleController;->resourcesCacheMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 1204
    :cond_0
    invoke-static {v0, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1225
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOC_ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1228
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    invoke-static {p0, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1232
    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getServerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1209
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->isOverriddenTelegramLocale(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1213
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1221
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1217
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStringInternal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1160
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStringInternal(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 1164
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 1166
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->USE_CLOUD_STRINGS:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 1167
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_3

    .line 1171
    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    if-eqz p3, :cond_2

    .line 1175
    :try_start_1
    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p3

    .line 1178
    :catch_1
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 1183
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "LOC_ERR:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static getStringParamForNumber(I)Ljava/lang/String;
    .locals 2

    .line 1261
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/LocaleController$PluralRules;->quantityForNumber(I)I

    move-result p0

    invoke-direct {v0, p0}, Lorg/telegram/messenger/LocaleController;->stringForQuantity(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemLocaleStringIso639()Ljava/lang/String;
    .locals 5

    .line 695
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getSystemDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "en"

    if-nez v0, :cond_0

    return-object v1

    .line 699
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 705
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 706
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    const/16 v2, 0x2d

    .line 708
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/16 v2, 0x5f

    .line 712
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseImperialSystemType()Z
    .locals 1

    .line 3529
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->ensureImperialSystemInit()V

    .line 3530
    sget-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isOverriddenTelegramLocale(I)Z
    .locals 1

    .line 69
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeSms:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->NoChats:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->EventLogRestrictedSendStickers:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->BackgroundToSavedMessages:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->InviteText2:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->InviteFriendsHelp:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->InviteToTelegram:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->ShareTelegram:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->TelegramVersion:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->AppUpdate:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->UnsupportedMedia:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureDeleteThisChatSavedMessages:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->AreYouSureClearHistorySavedMessages:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->PermissionBackgroundLocation:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page1Title:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page3Title:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page1Message:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page2Message:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page3Message:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page4Message:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page5Message:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->Page6Message:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupAudioRecordSaved:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupVideoRecordSaved:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo4:I

    if-eq p0, v0, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->AuthAnotherClientInfo5:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isRTLCharacter(C)Z
    .locals 3

    .line 2130
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result p0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$applyLanguage$7(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 1055
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    return-void
.end method

.method private synthetic lambda$applyLanguage$8(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1118
    invoke-virtual {p0, p1, v0, v1, v0}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$applyLanguage$9()V
    .locals 3

    .line 1126
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$applyRemoteLanguage$13([I[ILjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 2602
    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 2603
    aget p0, p0, v0

    aget p1, p1, v0

    if-lt p0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 2604
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$14(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 2621
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$15(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 2621
    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda10;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$16(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 2633
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$17(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 2632
    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda13;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$18(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 2650
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$19(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 2649
    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$20(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V
    .locals 0

    .line 2665
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyRemoteLanguage$21(Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 2664
    new-instance p5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda11;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLObject;ILjava/lang/Runnable;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkForcePatchLangpack$5(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 662
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "langpack_patched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_0

    .line 664
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    .line 666
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->patching:Z

    return-void
.end method

.method private synthetic lambda$checkForcePatchLangpack$6(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 661
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkPatchLangpack$4(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 650
    invoke-virtual {p0, p1, v0, v1, v0}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkUpdateForCurrentRemoteLocale$2(I)V
    .locals 1

    const/4 v0, 0x0

    .line 602
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 603
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocaleController;->checkPatchLangpack(I)V

    return-void
.end method

.method private synthetic lambda$checkUpdateForCurrentRemoteLocale$3(I)V
    .locals 1

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 611
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocaleController;->checkPatchLangpack(I)V

    return-void
.end method

.method private synthetic lambda$loadRemoteLanguages$11(Lorg/telegram/tgnet/TLObject;ZI)V
    .locals 9

    const/4 v0, 0x0

    .line 2528
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    .line 2529
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 2530
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v1, :cond_0

    .line 2531
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iput v3, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2533
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 2534
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    .line 2535
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_1

    .line 2536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loaded lang "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2538
    :cond_1
    new-instance v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 2539
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 2540
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->native_name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 2541
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->lang_code:Ljava/lang/String;

    const/16 v7, 0x2d

    const/16 v8, 0x5f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 2542
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->base_lang_code:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2543
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v6, ""

    .line 2545
    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    .line 2547
    :goto_2
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->plural_code:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 2548
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->rtl:Z

    iput-boolean v4, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    const-string/jumbo v4, "remote"

    .line 2549
    iput-object v4, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 2550
    iput v2, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    .line 2552
    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2554
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2555
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2557
    :cond_3
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 2558
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 2559
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    .line 2560
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 2561
    iget-object v6, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 2562
    iget v5, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iput v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    move-object v5, v4

    .line 2565
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2566
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    move p1, v0

    .line 2570
    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_9

    .line 2571
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2572
    iget v4, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    if-ne v4, v3, :cond_8

    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne v1, v4, :cond_6

    goto :goto_5

    .line 2575
    :cond_6
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_7

    .line 2576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove lang "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2578
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2579
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2581
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_8
    :goto_5
    add-int/2addr p1, v2

    goto :goto_4

    .line 2584
    :cond_9
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    .line 2585
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    .line 2587
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {p0, p1, v2, v0, p3}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I

    :cond_a
    return-void
.end method

.method private synthetic lambda$loadRemoteLanguages$12(ZILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2527
    new-instance p4, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda14;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/tgnet/TLObject;ZI)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 438
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(I)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 513
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentSystemLocale:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$saveRemoteLocaleStrings$10(ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    .line 2449
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->version:I

    iput p1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    goto :goto_0

    .line 2451
    :cond_0
    iget p1, p3, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->version:I

    iput p1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    .line 2453
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    const/4 p1, 0x0

    .line 2455
    :try_start_0
    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-ne p3, p2, :cond_6

    .line 2458
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "_"

    if-nez p3, :cond_1

    .line 2459
    :try_start_1
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 2460
    :cond_1
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 2461
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 2463
    :cond_2
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 2465
    :goto_1
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2466
    new-instance v0, Ljava/util/Locale;

    aget-object p3, p3, p1

    invoke-direct {v0, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 2468
    :cond_3
    new-instance v0, Ljava/util/Locale;

    aget-object v2, p3, p1

    aget-object p3, p3, v1

    invoke-direct {v0, v2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    :goto_2
    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    .line 2472
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p3

    .line 2473
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-string/jumbo v2, "language"

    .line 2474
    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2475
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2477
    iput-object p4, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    .line 2478
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 2479
    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 2480
    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 2481
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object p3, p3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 2483
    :cond_4
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p2, :cond_5

    .line 2484
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p2, :cond_5

    .line 2486
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string p3, "en"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 2489
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 2490
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 2491
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    .line 2492
    iget-object p3, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    iput-object p3, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2493
    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2494
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 2496
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->invalidateRestrictedLanguages()V

    goto :goto_3

    :cond_6
    const-string/jumbo p2, "saveRemoteLocaleStrings: currentLocaleInfo != localeInfo, do nothing"

    .line 2498
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 2501
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2502
    iput-boolean p1, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 2504
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 2505
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p5, :cond_7

    .line 2507
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method private loadOtherLanguages()V
    .locals 12

    .line 906
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "langconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "locales"

    const/4 v3, 0x0

    .line 907
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "&"

    if-nez v4, :cond_1

    .line 909
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 910
    array-length v4, v1

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    .line 911
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 913
    iget-object v8, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "remote"

    .line 917
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "_"

    const-string v7, "-"

    if-nez v4, :cond_3

    .line 919
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 920
    array-length v4, v1

    move v8, v2

    :goto_1
    if-ge v8, v4, :cond_3

    aget-object v9, v1, v8

    .line 921
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v9

    .line 922
    iget-object v10, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v10, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 923
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 926
    :cond_2
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v10, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "unofficial"

    .line 930
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 932
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 933
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 934
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->createWithString(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_4

    .line 938
    :cond_4
    iget-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 939
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private patched(Ljava/lang/String;)V
    .locals 3

    .line 3641
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set as patched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " langpack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3644
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lngpack_patched_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static resetImperialSystemType()V
    .locals 1

    const/4 v0, 0x0

    .line 3525
    sput-object v0, Lorg/telegram/messenger/LocaleController;->useImperialSystemType:Ljava/lang/Boolean;

    return-void
.end method

.method private saveOtherLanguages()V
    .locals 7

    .line 834
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "langconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 835
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    .line 837
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "&"

    if-ge v3, v4, :cond_2

    .line 838
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 839
    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 841
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 842
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "locales"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v2

    .line 849
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 850
    iget-object v4, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 851
    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 854
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 859
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "remote"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 861
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 862
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 863
    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getSaveString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 865
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 866
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 871
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unofficial"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 872
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private shouldReinstallLangpack(Ljava/lang/String;)Z
    .locals 5

    .line 3559
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->checkResetLangpack:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 3563
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lngpack_patched_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 3567
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/LocaleController;->calculateTranslatedCount(Ljava/util/HashMap;)I

    move-result v2

    if-lt v2, v0, :cond_2

    return v1

    .line 3571
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reinstalling "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " langpack because of patch ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keys, must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3572
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->patched(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static stringForMessageListDate(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 2230
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2231
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2233
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 2234
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2235
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2236
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    const-wide/32 v4, 0x1b77400

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x7

    if-le v0, v2, :cond_2

    if-gt v0, v1, :cond_2

    .line 2242
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2244
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2240
    :cond_3
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2248
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const-string p0, "LOC_ERR"

    return-object p0
.end method

.method private stringForQuantity(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "other"

    return-object p1

    :cond_0
    const-string/jumbo p1, "many"

    return-object p1

    :cond_1
    const-string p1, "few"

    return-object p1

    :cond_2
    const-string/jumbo p1, "two"

    return-object p1

    :cond_3
    const-string/jumbo p1, "one"

    return-object p1

    :cond_4
    const-string/jumbo p1, "zero"

    return-object p1
.end method


# virtual methods
.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 1019
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZILjava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZILjava/lang/Runnable;)I
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p6

    move-object/from16 v9, p7

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return v10

    .line 1027
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result v11

    .line 1028
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v12

    .line 1029
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v13

    if-nez p3, :cond_1

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->setLangCode(Ljava/lang/String;)V

    .line 1034
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1036
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1037
    iget-object v1, v7, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    iget-object v1, v7, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iget-object v1, v7, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v1, v7, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    goto :goto_0

    .line 1042
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1043
    iget-object v1, v7, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v1, v7, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    .line 1049
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v1

    const-string v14, " "

    const/4 v15, 0x1

    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-nez p5, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v11, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v10

    move v2, v1

    goto :goto_3

    .line 1050
    :cond_6
    :goto_1
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reload locale because one of file doesn\'t exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 1055
    new-instance v1, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda9;

    invoke-direct {v1, v7, v0, v8, v9}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/LocaleController;Lorg/telegram/messenger/LocaleController$LocaleInfo;ILjava/lang/Runnable;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    move v1, v10

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1057
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    move-result v1

    :goto_2
    move v2, v15

    .line 1063
    :goto_3
    :try_start_0
    iget-object v3, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "_"

    if-nez v3, :cond_9

    .line 1064
    :try_start_1
    iget-object v3, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1065
    :cond_9
    iget-object v3, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1066
    iget-object v3, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1068
    :cond_a
    iget-object v3, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1070
    :goto_4
    array-length v4, v3

    if-ne v4, v15, :cond_b

    .line 1071
    new-instance v4, Ljava/util/Locale;

    aget-object v5, v3, v10

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 1073
    :cond_b
    new-instance v4, Ljava/util/Locale;

    aget-object v5, v3, v10

    aget-object v6, v3, v15

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz p2, :cond_c

    .line 1076
    iget-object v5, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    iput-object v5, v7, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    .line 1078
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1079
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "language"

    .line 1080
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v6, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1081
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_c
    if-nez v12, :cond_d

    .line 1084
    iget-object v5, v7, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    goto :goto_7

    :cond_d
    if-nez p4, :cond_f

    if-eqz v11, :cond_e

    .line 1086
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v5

    goto :goto_6

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v5

    :goto_6
    invoke-direct {v7, v5}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, v7, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    if-eqz v11, :cond_f

    .line 1088
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1091
    :cond_f
    :goto_7
    iput-object v4, v7, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 1092
    iput-object v0, v7, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const-string v4, "applyLanguage: currentLocaleInfo is set"

    .line 1093
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1095
    iget-object v4, v7, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1096
    iget-object v4, v7, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v5, v7, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v4, v7, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1098
    :cond_10
    iget-object v4, v7, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v4, :cond_11

    .line 1099
    iget-object v4, v7, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v3, v7, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1101
    :cond_11
    iget-object v3, v7, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v3, :cond_12

    .line 1102
    iget-object v3, v7, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v4, v7, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object v3, v7, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1104
    :cond_12
    iget-object v3, v7, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez v3, :cond_13

    .line 1105
    new-instance v3, Lorg/telegram/messenger/LocaleController$PluralRules_None;

    invoke-direct {v3}, Lorg/telegram/messenger/LocaleController$PluralRules_None;-><init>()V

    iput-object v3, v7, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    :cond_13
    const/4 v3, 0x1

    .line 1107
    iput-boolean v3, v7, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 1108
    iget-object v3, v7, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1109
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 1110
    iget-object v4, v7, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1111
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1112
    iput-boolean v10, v7, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 1113
    iget-boolean v3, v7, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    if-nez v3, :cond_14

    if-nez v2, :cond_17

    if-nez p5, :cond_17

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {v7, v0}, Lorg/telegram/messenger/LocaleController;->shouldReinstallLangpack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1114
    :cond_14
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_15

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reload locale because one of file is corrupted "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_15
    if-eqz p3, :cond_16

    .line 1118
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda5;

    invoke-direct {v0, v7, v8}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_16
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1120
    invoke-virtual {v7, v8, v0, v3, v0}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    .line 1122
    :goto_8
    iput-boolean v10, v7, Lorg/telegram/messenger/LocaleController;->reloadLastFile:Z

    :cond_17
    if-nez v2, :cond_19

    if-eqz p3, :cond_18

    .line 1126
    sget-object v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda16;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 1128
    :cond_18
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1130
    :goto_9
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->invalidateRestrictedLanguages()V

    if-eqz v9, :cond_19

    .line 1132
    invoke-interface/range {p7 .. p7}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 1136
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1137
    iput-boolean v10, v7, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    .line 1139
    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    if-eqz p5, :cond_1a

    .line 1141
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v10, v2}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    :cond_1a
    return v1
.end method

.method public applyLanguageFile(Ljava/io/File;I)Z
    .locals 11

    const-string/jumbo v0, "|"

    const-string v1, "&"

    const/4 v2, 0x0

    .line 782
    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "LanguageName"

    .line 784
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "LanguageNameInEnglish"

    .line 785
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "LanguageCode"

    .line 786
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 788
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    if-eqz v5, :cond_6

    .line 789
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    if-eqz v6, :cond_6

    .line 790
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 792
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_0

    .line 795
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_0

    .line 798
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\\"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 802
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 803
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 807
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "local_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 808
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p1

    if-nez p1, :cond_4

    .line 810
    new-instance p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 811
    iput-object v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 812
    iput-object v5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 813
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 814
    iput-object v1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 816
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    :cond_4
    move-object v4, p1

    .line 823
    iput-object v3, p0, Lorg/telegram/messenger/LocaleController;->localeValues:Ljava/util/HashMap;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move v9, p2

    .line 824
    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZILjava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v2

    :catch_0
    move-exception p1

    .line 828
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    return v2
.end method

.method public calculateTranslatedCount(Ljava/util/HashMap;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 619
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const-string v5, "_other"

    .line 624
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 625
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string v5, "_zero"

    .line 626
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "_many"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "_one"

    .line 628
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "_two"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "_few"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 629
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 627
    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_6
    :goto_2
    if-nez v4, :cond_7

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 634
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 638
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return v2
.end method

.method public checkForcePatchLangpack(ILjava/lang/Runnable;)V
    .locals 6

    .line 657
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->checkResetLangpack:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "langpack_patched"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->patching:Z

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_1

    .line 660
    iput-boolean v3, p0, Lorg/telegram/messenger/LocaleController;->patching:Z

    const/4 v1, 0x0

    .line 661
    new-instance v2, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p2}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v1, v3, v2}, Lorg/telegram/messenger/LocaleController;->reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public checkPatchLangpack(I)V
    .locals 2

    .line 643
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocaleController;->shouldReinstallLangpack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "reload locale because locale file is not enough"

    .line 648
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 650
    :cond_1
    new-instance v0, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkUpdateForCurrentRemoteLocale(III)V
    .locals 7

    .line 595
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isUnofficial()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 599
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v0, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseVersion:I

    if-ge v0, p3, :cond_1

    .line 600
    iput-boolean v6, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 601
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    .line 607
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget v0, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    if-ge v0, p2, :cond_2

    .line 608
    iput-boolean v6, p0, Lorg/telegram/messenger/LocaleController;->checkingUpdateForCurrentRemoteLocale:Z

    .line 609
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/LocaleController;I)V

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public defaultLangIfIsRtl()Ljava/lang/String;
    .locals 1

    .line 110
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public deleteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;I)Z
    .locals 4

    .line 876
    iget-object v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v2, 0x1

    if-ne v0, p1, :cond_4

    const/4 v0, 0x0

    .line 881
    iget-object v3, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 882
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 885
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "en"

    .line 888
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    .line 890
    :cond_3
    invoke-virtual {p0, v0, v2, v1, p2}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I

    .line 893
    :cond_4
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 894
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 895
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->remoteLanguagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->otherLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 897
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 898
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    new-instance p2, Ljava/io/File;

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 901
    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController;->saveOtherLanguages()V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public formatCurrencyDecimalString(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 1554
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    .line 1557
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 1558
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "XPF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "XOF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "XAF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "VUV"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "VND"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "UYI"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "UGX"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TND"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "RWF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "PYG"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "OMR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "MRO"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "MGA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "LYD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "KWD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "KRW"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "KMF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "JPY"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "JOD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "ISK"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "IRR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "IQD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "GNF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_17
    const-string v0, "DJF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_18
    const-string v0, "CVE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_19
    const-string v0, "CLP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v0, "CLF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v0, "BYR"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v0, "BIF"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    move v3, v1

    goto :goto_0

    :sswitch_1d
    const-string v0, "BHD"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    move v3, v2

    :goto_0
    const-string v0, " %.2f"

    const-string v4, " %.0f"

    packed-switch v3, :pswitch_data_0

    long-to-double p1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v3

    goto :goto_1

    :pswitch_0
    long-to-double p1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v3

    const-string v0, " %.1f"

    goto :goto_1

    :pswitch_1
    long-to-float v3, p1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    float-to-double v5, v3

    const-wide/16 v7, 0x64

    .line 1566
    rem-long/2addr p1, v7

    const-wide/16 v7, 0x0

    cmp-long p1, p1, v7

    if-nez p1, :cond_1e

    move-object v0, v4

    :cond_1e
    move-wide p1, v5

    goto :goto_1

    :pswitch_2
    long-to-double p1, p1

    const-wide v3, 0x40c3880000000000L    # 10000.0

    div-double/2addr p1, v3

    const-string v0, " %.4f"

    goto :goto_1

    :pswitch_3
    long-to-double p1, p1

    move-object v0, v4

    goto :goto_1

    :pswitch_4
    long-to-double p1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v3

    const-string v0, " %.3f"

    .line 1618
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eqz p4, :cond_1f

    goto :goto_2

    :cond_1f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {v3, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1d
        0x100df -> :sswitch_1c
        0x102db -> :sswitch_1b
        0x104fd -> :sswitch_1a
        0x10507 -> :sswitch_19
        0x10632 -> :sswitch_18
        0x10880 -> :sswitch_17
        0x1143f -> :sswitch_16
        0x11c1c -> :sswitch_15
        0x11c49 -> :sswitch_14
        0x11c61 -> :sswitch_13
        0x11f9f -> :sswitch_12
        0x11fd3 -> :sswitch_11
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_f
        0x12458 -> :sswitch_e
        0x12857 -> :sswitch_d
        0x129e7 -> :sswitch_c
        0x12b4a -> :sswitch_b
        0x13234 -> :sswitch_a
        0x1375e -> :sswitch_9
        0x13ea1 -> :sswitch_8
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_6
        0x14a25 -> :sswitch_5
        0x14c8c -> :sswitch_4
        0x14d77 -> :sswitch_3
        0x1527d -> :sswitch_2
        0x1542f -> :sswitch_1
        0x1544e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v6, p3

    .line 1418
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JZZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatCurrencyString(JZZZLjava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1422
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 1426
    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 1427
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v9

    .line 1428
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v12, "IRR"

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v11, "XPF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v10, 0x1d

    goto/16 :goto_1

    :sswitch_1
    const-string v11, "XOF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v10, 0x1c

    goto/16 :goto_1

    :sswitch_2
    const-string v11, "XAF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v10, 0x1b

    goto/16 :goto_1

    :sswitch_3
    const-string v11, "VUV"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v10, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string v11, "VND"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v10, 0x19

    goto/16 :goto_1

    :sswitch_5
    const-string v11, "UYI"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v10, 0x18

    goto/16 :goto_1

    :sswitch_6
    const-string v11, "UGX"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v10, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string v11, "TND"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v10, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string v11, "RWF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v10, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v11, "PYG"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v10, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string v11, "OMR"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v10, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string v11, "MRO"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v10, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string v11, "MGA"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v10, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string v11, "LYD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v10, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v11, "KWD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v10, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v11, "KRW"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v10, 0xe

    goto/16 :goto_1

    :sswitch_10
    const-string v11, "KMF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v10, 0xd

    goto/16 :goto_1

    :sswitch_11
    const-string v11, "JPY"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v10, 0xc

    goto/16 :goto_1

    :sswitch_12
    const-string v11, "JOD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v10, 0xb

    goto/16 :goto_1

    :sswitch_13
    const-string v11, "ISK"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v10, 0xa

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v10, 0x9

    goto/16 :goto_1

    :sswitch_15
    const-string v11, "IQD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v10, 0x8

    goto/16 :goto_1

    :sswitch_16
    const-string v11, "GNF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    goto :goto_1

    :cond_17
    const/4 v10, 0x7

    goto :goto_1

    :sswitch_17
    const-string v11, "DJF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    goto :goto_1

    :cond_18
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_18
    const-string v11, "CVE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    goto :goto_1

    :cond_19
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_19
    const-string v11, "CLP"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    goto :goto_1

    :cond_1a
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_1a
    const-string v11, "CLF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    goto :goto_1

    :cond_1b
    const/4 v10, 0x3

    goto :goto_1

    :sswitch_1b
    const-string v11, "BYR"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    goto :goto_1

    :cond_1c
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_1c
    const-string v11, "BIF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    goto :goto_1

    :cond_1d
    move v10, v5

    goto :goto_1

    :sswitch_1d
    const-string v11, "BHD"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    goto :goto_1

    :cond_1e
    move v10, v6

    :goto_1
    const-string v11, " %.2f"

    const-string v13, " %.0f"

    packed-switch v10, :pswitch_data_0

    long-to-double v2, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v7

    goto :goto_2

    :pswitch_0
    long-to-double v2, v7

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v7

    const-string v11, " %.1f"

    goto :goto_2

    :pswitch_1
    long-to-float v10, v7

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v10, v14

    float-to-double v14, v10

    if-eqz p3, :cond_1f

    const-wide/16 v16, 0x64

    .line 1436
    rem-long v7, v7, v16

    cmp-long v2, v7, v2

    if-nez v2, :cond_1f

    move-object v11, v13

    :cond_1f
    move-wide v2, v14

    goto :goto_2

    :pswitch_2
    long-to-double v2, v7

    const-wide v7, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v7

    const-string v11, " %.4f"

    goto :goto_2

    :pswitch_3
    long-to-double v2, v7

    move-object v11, v13

    goto :goto_2

    :pswitch_4
    long-to-double v2, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v7

    const-string v11, " %.3f"

    :goto_2
    if-nez p4, :cond_20

    goto :goto_3

    :cond_20
    move-object v13, v11

    :goto_3
    const-string v7, "-"

    const-string v8, ""

    if-eqz v9, :cond_27

    .line 1492
    iget-object v5, v0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-eqz v5, :cond_21

    goto :goto_4

    :cond_21
    iget-object v5, v0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    :goto_4
    invoke-static {v5}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    .line 1493
    invoke-virtual {v5, v9}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    if-eqz p5, :cond_22

    .line 1495
    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    :cond_22
    if-eqz p4, :cond_23

    if-eqz p3, :cond_24

    .line 1497
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1498
    :cond_23
    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1500
    :cond_24
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_25

    goto :goto_5

    :cond_25
    move-object v7, v8

    :goto_5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_26

    .line 1503
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 1504
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_26

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_26

    .line 1505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_26
    return-object v2

    .line 1510
    :cond_27
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_28

    goto :goto_6

    :cond_28
    move-object v7, v8

    :goto_6
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x100be -> :sswitch_1d
        0x100df -> :sswitch_1c
        0x102db -> :sswitch_1b
        0x104fd -> :sswitch_1a
        0x10507 -> :sswitch_19
        0x10632 -> :sswitch_18
        0x10880 -> :sswitch_17
        0x1143f -> :sswitch_16
        0x11c1c -> :sswitch_15
        0x11c49 -> :sswitch_14
        0x11c61 -> :sswitch_13
        0x11f9f -> :sswitch_12
        0x11fd3 -> :sswitch_11
        0x12324 -> :sswitch_10
        0x123d0 -> :sswitch_f
        0x12458 -> :sswitch_e
        0x12857 -> :sswitch_d
        0x129e7 -> :sswitch_c
        0x12b4a -> :sswitch_b
        0x13234 -> :sswitch_a
        0x1375e -> :sswitch_9
        0x13ea1 -> :sswitch_8
        0x1450a -> :sswitch_7
        0x14806 -> :sswitch_6
        0x14a25 -> :sswitch_5
        0x14c8c -> :sswitch_4
        0x14d77 -> :sswitch_3
        0x1527d -> :sswitch_2
        0x1542f -> :sswitch_1
        0x1544e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getBuiltinLanguageByPlural(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 4

    .line 545
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 546
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 547
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "remote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "_raw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    iget-object v2, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .locals 1

    .line 1151
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 1

    .line 1147
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object v0
.end method

.method public getLanguageFromDict(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 542
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object p1
.end method

.method public getSystemDefaultLocale()Ljava/util/Locale;
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTranslitString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2675
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslitString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2679
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslitString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2687
    :cond_0
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v3, "m"

    const-string/jumbo v4, "p"

    const-string/jumbo v5, "v"

    const-string v6, "b"

    const-string/jumbo v7, "k"

    const-string v8, "h"

    const-string/jumbo v9, "z"

    const-string v10, "g"

    const-string v11, "d"

    const-string/jumbo v12, "n"

    const-string/jumbo v13, "t"

    const-string/jumbo v14, "s"

    const-string/jumbo v15, "l"

    const-string v1, "i"

    move-object/from16 v16, v8

    const-string/jumbo v8, "r"

    move-object/from16 v17, v13

    const-string/jumbo v13, "u"

    move-object/from16 v18, v13

    const-string v13, "a"

    move-object/from16 v19, v14

    const-string v14, "e"

    move-object/from16 v20, v8

    const-string/jumbo v8, "o"

    if-nez v2, :cond_1

    .line 2688
    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v21, v4

    const/16 v4, 0x21

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0430"

    .line 2689
    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0431"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0432"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0433"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0434"

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0435"

    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0451"

    move-object/from16 v22, v10

    const-string/jumbo v10, "yo"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0436"

    const-string/jumbo v10, "zh"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2697
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0437"

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2698
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0438"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2699
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0439"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2700
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043a"

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043b"

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043c"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2703
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043d"

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043e"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u043f"

    move-object/from16 v10, v21

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0440"

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2707
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0441"

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0442"

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2709
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0443"

    move-object/from16 v5, v18

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0444"

    move-object/from16 v18, v9

    const-string v9, "f"

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0445"

    move-object/from16 v9, v16

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2712
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0446"

    move-object/from16 v16, v10

    const-string/jumbo v10, "ts"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2713
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0447"

    const-string v10, "ch"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0448"

    const-string/jumbo v10, "sh"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2715
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0449"

    const-string/jumbo v10, "sch"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044b"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044c"

    const-string v10, ""

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044a"

    const-string v10, ""

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044d"

    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044e"

    const-string/jumbo v10, "yu"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u044f"

    const-string/jumbo v10, "ya"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v22, v10

    move-object/from16 v3, v20

    move-object/from16 v20, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v4

    move-object/from16 v26, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v26

    .line 2724
    :goto_0
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 2725
    new-instance v2, Ljava/util/HashMap;

    const/16 v4, 0x1e8

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u023c"

    const-string v10, "c"

    .line 2726
    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2727
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1d87"

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0256"

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1eff"

    move-object/from16 v23, v12

    const-string/jumbo v12, "y"

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1d13"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2731
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u00f8"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2732
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e01"

    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2733
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u02af"

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2734
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0177"

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2735
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u029e"

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2736
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1eeb"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2737
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\ua733"

    move-object/from16 v24, v5

    const-string v5, "aa"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2738
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0133"

    const-string v5, "ij"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2739
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e3d"

    invoke-virtual {v2, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2740
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u026a"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2741
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e07"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2742
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0280"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2743
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u011b"

    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\ufb03"

    const-string v5, "ffi"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u01a1"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2746
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u2c79"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1ed3"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u01d0"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\ua755"

    move-object/from16 v5, v16

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u00fd"

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2751
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e1d"

    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2752
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u2092"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u2c65"

    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0299"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e1b"

    invoke-virtual {v2, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0188"

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0266"

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2758
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1d6c"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2759
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1e63"

    move-object/from16 v16, v9

    move-object/from16 v9, v18

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2760
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u0111"

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u1ed7"

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2762
    iget-object v2, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v4, "\u025f"

    move-object/from16 v18, v1

    const-string/jumbo v1, "j"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9a"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u024f"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2765
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028c"

    move-object/from16 v4, v19

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua753"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2767
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb01"

    const-string v4, "fi"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2768
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d84"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e0f"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0c"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0117"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0b"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2773
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u010b"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0281"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0195"

    const-string v4, "hv"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2776
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0180"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2777
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e4d"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2778
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0223"

    const-string/jumbo v4, "ou"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f0"

    const-string/jumbo v4, "j"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2780
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d83"

    move-object/from16 v4, v22

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e4b"

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2782
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0249"

    move-object/from16 v23, v11

    const-string/jumbo v11, "j"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2783
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e7"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f3"

    const-string v11, "dz"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017a"

    move-object/from16 v11, v20

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2786
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua737"

    move-object/from16 v20, v6

    const-string v6, "au"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2787
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d6"

    move-object/from16 v6, v24

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d79"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2789
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u022f"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2790
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0250"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0105"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2792
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f5"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027b"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2794
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua74d"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01df"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2796
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0234"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2797
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0282"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb02"

    move-object/from16 v24, v8

    const-string v8, "fl"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0209"

    move-object/from16 v8, v18

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2800
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c7b"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e49"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ef"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f1"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2804
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d09"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0287"

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2806
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e93"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2807
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef7"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0233"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2809
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e69"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2811
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u011d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2812
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1d"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2813
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e33"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua76b"

    move-object/from16 v17, v12

    const-string v12, "et"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2815
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u012b"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2816
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2817
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua73f"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2818
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029f"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2819
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua739"

    const-string v12, "av"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2820
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00fb"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e6"

    const-string v12, "ae"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2822
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0103"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2823
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d8"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2824
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua785"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2825
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d63"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2826
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d00"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0183"

    move-object/from16 v12, v20

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2828
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e29"

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2829
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e67"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2830
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2091"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2831
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029c"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2832
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e8b"

    move-object/from16 v16, v9

    const-string/jumbo v9, "x"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2833
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua745"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2834
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e0b"

    move-object/from16 v9, v23

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01a3"

    move-object/from16 v23, v5

    const-string/jumbo v5, "oi"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua751"

    move-object/from16 v5, v22

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0127"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c74"

    move-object/from16 v22, v15

    move-object/from16 v15, v19

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e87"

    move-object/from16 v19, v8

    const-string/jumbo v8, "w"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2840
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f9"

    move-object/from16 v25, v8

    move-object/from16 v8, v18

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026f"

    move-object/from16 v18, v7

    move-object/from16 v7, v21

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0261"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0274"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d18"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d65"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u016b"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e03"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e57"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e5"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0255"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ecd"

    move-object/from16 v21, v5

    move-object/from16 v5, v24

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eaf"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0192"

    move-object/from16 v24, v4

    const-string v4, "f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e3"

    const-string v4, "ae"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua761"

    const-string/jumbo v4, "vy"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb00"

    const-string v4, "ff"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2857
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d89"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2858
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f4"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2859
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ff"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e73"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2861
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0225"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e1f"

    const-string v4, "f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2863
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e13"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0207"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0215"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0235"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u02a0"

    const-string/jumbo v4, "q"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea5"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2869
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e9"

    move-object/from16 v4, v18

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0129"

    move-object/from16 v18, v7

    move-object/from16 v7, v19

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2871
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e75"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0167"

    move-object/from16 v7, v23

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027e"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0199"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e6b"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua757"

    move-object/from16 v23, v4

    const-string/jumbo v4, "q"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ead"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0284"

    const-string/jumbo v4, "j"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2879
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u019a"

    move-object/from16 v4, v20

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2880
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d82"

    const-string v4, "f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2881
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d74"

    move-object/from16 v4, v16

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2882
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua783"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2883
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8c"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0275"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2885
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e09"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2886
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d64"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2887
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e91"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2888
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e79"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2889
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0148"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2890
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028d"

    move-object/from16 v16, v10

    move-object/from16 v10, v25

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea7"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2892
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01c9"

    move-object/from16 v25, v15

    const-string/jumbo v15, "lj"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2893
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0253"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2894
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027c"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2895
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f2"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e98"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2897
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0257"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2898
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua73d"

    const-string v15, "ay"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2899
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01b0"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2900
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d80"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2901
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01dc"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2902
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb9"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2903
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e1"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2904
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0265"

    move-object/from16 v15, v22

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2905
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e4f"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d4"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2907
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028e"

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0231"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2909
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec7"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2910
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ebf"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u012d"

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c78"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2913
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e6f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2914
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d91"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2915
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e27"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2916
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e65"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2917
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00eb"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2918
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0d"

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f6"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2920
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e9"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2921
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0131"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2922
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2923
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2924
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef5"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0175"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2926
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec1"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2927
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee9"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2928
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01b6"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2929
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0135"

    move-object/from16 v18, v10

    const-string/jumbo v10, "j"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2930
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e0d"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u016d"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2932
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029d"

    const-string/jumbo v10, "j"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2933
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ea"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01da"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2935
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0121"

    move-object/from16 v10, v24

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2936
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e59"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u019e"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e17"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2940
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d81"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2941
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0137"

    move-object/from16 v10, v23

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2942
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d02"

    move-object/from16 v23, v13

    const-string v13, "ae"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2943
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0258"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2944
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee3"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2945
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e3f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua730"

    const-string v13, "f"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2947
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb5"

    move-object/from16 v13, v17

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2948
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua74f"

    move-object/from16 v17, v5

    const-string/jumbo v5, "oo"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2949
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d86"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d7d"

    move-object/from16 v5, v21

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2951
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eef"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c6a"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e25"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0163"

    move-object/from16 v21, v10

    move-object/from16 v10, v19

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d71"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e41"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2957
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e1"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2958
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0e"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua75f"

    move-object/from16 v19, v4

    move-object/from16 v4, v25

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2960
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e8"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2961
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8e"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2962
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua77a"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2963
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d88"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2964
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026b"

    move-object/from16 v25, v5

    move-object/from16 v5, v20

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d22"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2966
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0271"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e5d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2968
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e7d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0169"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2970
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00df"

    move-object/from16 v20, v7

    const-string/jumbo v7, "ss"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2971
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0125"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2972
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d75"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2973
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0290"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2974
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e5f"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2975
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0272"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2976
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e0"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2977
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e99"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef3"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d14"

    const-string/jumbo v7, "oe"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2980
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2093"

    const-string/jumbo v7, "x"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0217"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c7c"

    const-string/jumbo v7, "j"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2983
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eab"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2984
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0291"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9b"

    move-object/from16 v7, v19

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e2d"

    move-object/from16 v19, v8

    move-object/from16 v8, v23

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua735"

    move-object/from16 v23, v4

    const-string v4, "ao"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0240"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ff"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01dd"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ed"

    move-object/from16 v4, v17

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2992
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d05"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2993
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d85"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2994
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f9"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea1"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2996
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e05"

    move-object/from16 v17, v9

    move-object/from16 v9, v22

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2997
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee5"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb1"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1b"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01b4"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c66"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3002
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c61"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3003
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0237"

    const-string/jumbo v9, "j"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d76"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3005
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e2b"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3006
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c73"

    move-object/from16 v9, v18

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e35"

    move-object/from16 v18, v15

    move-object/from16 v15, v21

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1edd"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ee"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3010
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0123"

    move-object/from16 v15, v24

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3011
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0205"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3012
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0227"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb3"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3014
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u024b"

    const-string/jumbo v15, "q"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3015
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e6d"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3016
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua778"

    const-string/jumbo v15, "um"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3017
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d04"

    move-object/from16 v15, v16

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3018
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e8d"

    const-string/jumbo v15, "x"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3019
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee7"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3020
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec9"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1a"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3022
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u015b"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3023
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua74b"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef9"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e61"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3026
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01cc"

    const-string/jumbo v15, "nj"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3027
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0201"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e97"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u013a"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017e"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d7a"

    const-string/jumbo v15, "th"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u018c"

    move-object/from16 v15, v17

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0219"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3034
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0161"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d99"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3036
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ebd"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e9c"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0247"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e77"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3040
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ed1"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u023f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d20"

    move-object/from16 v17, v12

    move-object/from16 v12, v23

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua76d"

    move-object/from16 v23, v5

    const-string/jumbo v5, "is"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3044
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u025b"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01fb"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3047
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb04"

    const-string v5, "ffl"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c7a"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3049
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u020b"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3050
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6b"

    const-string/jumbo v5, "ue"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0221"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3052
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c6c"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e81"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3054
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8f"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua787"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3056
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u011f"

    move-object/from16 v5, v24

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0273"

    move-object/from16 v24, v9

    move-object/from16 v9, v19

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u029b"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3059
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d1c"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3060
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea9"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e45"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3062
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0268"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3063
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d19"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3064
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ce"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u022b"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3067
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027f"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ad"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e2f"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3070
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01fd"

    const-string v9, "ae"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c71"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3072
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0276"

    const-string/jumbo v9, "oe"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3073
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e43"

    move-object/from16 v9, v20

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u017c"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0115"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3076
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua73b"

    const-string v9, "av"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3077
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1edf"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec5"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3079
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026c"

    move-object/from16 v9, v23

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3080
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ecb"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6d"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3082
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ufb06"

    move-object/from16 v23, v12

    const-string/jumbo v12, "st"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e37"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0155"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d15"

    const-string/jumbo v12, "ou"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0288"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3087
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0101"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e19"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3089
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d11"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3090
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e7"

    move-object/from16 v12, v16

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3091
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8a"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eb7"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3093
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0173"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3094
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ea3"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01e5"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua741"

    move-object/from16 v16, v6

    move-object/from16 v6, v21

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e95"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u015d"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e15"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0260"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua749"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua77c"

    const-string v11, "f"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d8d"

    const-string/jumbo v11, "x"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3104
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01d2"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0119"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ed5"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01ab"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01eb"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3109
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "i\u0307"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e47"

    move-object/from16 v11, v19

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0107"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d77"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3113
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e85"

    move-object/from16 v19, v12

    move-object/from16 v12, v24

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3114
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e11"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e39"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3116
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0153"

    const-string/jumbo v15, "oe"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3117
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d73"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3118
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u013c"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3119
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0211"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u022d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d70"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d01"

    const-string v15, "ae"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0140"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3124
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e4"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01a5"

    move-object/from16 v15, v25

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ecf"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u012f"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0213"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3129
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01c6"

    move-object/from16 v21, v7

    const-string v7, "dz"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3130
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e21"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3131
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e7b"

    move-object/from16 v7, v16

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3132
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u014d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3133
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u013e"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e83"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u021b"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0144"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3137
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u024d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0203"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00fc"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3140
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua781"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3141
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d10"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1edb"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3143
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d03"

    move-object/from16 v16, v6

    move-object/from16 v6, v22

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0279"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3145
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d72"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3146
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028f"

    move-object/from16 v6, v17

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d6e"

    const-string v6, "f"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2c68"

    move-object/from16 v6, v18

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u014f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00fa"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e5b"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u02ae"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00f3"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3154
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u016f"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3155
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ee1"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e55"

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d96"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3158
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ef1"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3159
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e3"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d62"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e71"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3162
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ec3"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1eed"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ed"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0254"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3166
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u027a"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3167
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0262"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e96"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0171"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3171
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u020d"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e3b"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e23"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0236"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3175
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0146"

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d92"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3177
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00ec"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e89"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0113"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d07"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3181
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3182
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ed9"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3183
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u026d"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3184
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e8f"

    move-object/from16 v7, v17

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3185
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d0a"

    const-string/jumbo v7, "j"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3186
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e31"

    move-object/from16 v7, v16

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3187
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e7f"

    move-object/from16 v9, v23

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0229"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3189
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u00e2"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u015f"

    move-object/from16 v10, v21

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3191
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0157"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u028b"

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2090"

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3194
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u2184"

    move-object/from16 v3, v19

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3195
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d93"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3196
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0270"

    move-object/from16 v9, v20

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d21"

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3198
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u020f"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3199
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u010d"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3200
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u01f5"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3201
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0109"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1d97"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3203
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua743"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua759"

    const-string/jumbo v3, "q"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3205
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e51"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3206
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua731"

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3207
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1e53"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3208
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u021f"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3209
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0151"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3210
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\ua729"

    const-string/jumbo v3, "tz"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u1ebb"

    invoke-virtual {v1, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3212
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0456"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3213
    iget-object v1, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    const-string/jumbo v2, "\u0457"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3216
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_b

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v6, p1

    .line 3219
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_3

    .line 3221
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 3222
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move/from16 v26, v4

    move-object v4, v3

    move/from16 v3, v26

    .line 3225
    :cond_3
    iget-object v7, v0, Lorg/telegram/messenger/LocaleController;->translitChars:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_4

    if-eqz p2, :cond_4

    .line 3227
    iget-object v7, v0, Lorg/telegram/messenger/LocaleController;->ruTranslitChars:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :cond_4
    if-eqz v7, :cond_7

    if-eqz p3, :cond_6

    if-eqz v3, :cond_6

    .line 3231
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_5

    .line 3232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 3234
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 3237
    :cond_6
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_7
    if-eqz p3, :cond_a

    const/4 v7, 0x0

    .line 3240
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-lt v7, v8, :cond_8

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_8

    const/16 v8, 0x30

    if-lt v7, v8, :cond_8

    const/16 v8, 0x39

    if-le v7, v8, :cond_9

    :cond_8
    const/16 v8, 0x20

    if-eq v7, v8, :cond_9

    const/16 v8, 0x27

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_9

    const/16 v8, 0x26

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_9

    const/4 v1, 0x0

    return-object v1

    :cond_9
    if-eqz v3, :cond_a

    .line 3245
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3248
    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v5

    goto/16 :goto_1

    .line 3251
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isCurrentLocalLocale()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v0

    return v0
.end method

.method public loadRemoteLanguages(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2516
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(IZ)V

    return-void
.end method

.method public loadRemoteLanguages(IZ)V
    .locals 3

    .line 2520
    iget-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2523
    iput-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->loadingRemoteLanguages:Z

    .line 2524
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getLanguages;-><init>()V

    .line 2525
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/LocaleController;ZI)V

    const/16 p1, 0x8

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onDeviceConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1676
    iget-boolean v0, p0, Lorg/telegram/messenger/LocaleController;->changingConfiguration:Z

    if-eqz v0, :cond_0

    return-void

    .line 1679
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    .line 1680
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->systemDefaultLocale:Ljava/util/Locale;

    .line 1681
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->languageOverride:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1682
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v0, 0x0

    .line 1683
    iput-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1684
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZI)I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 1688
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1689
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1690
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1691
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 1693
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    .line 1694
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1695
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1697
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p1, :cond_4

    .line 1698
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    if-nez p1, :cond_4

    .line 1700
    iget-object p1, p0, Lorg/telegram/messenger/LocaleController;->allRules:Ljava/util/HashMap;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$PluralRules;

    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentPluralRules:Lorg/telegram/messenger/LocaleController$PluralRules;

    .line 1705
    :cond_4
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object p1

    .line 1706
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentSystemLocale:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1707
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController;->currentSystemLocale:Ljava/lang/String;

    .line 1708
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->setSystemLangCode(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public recreateFormatters()V
    .locals 9

    .line 2080
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 2082
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2084
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "en"

    .line 2088
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2089
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ar"

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "he"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "iw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    const-string v2, "ar_"

    .line 2090
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "fa_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "he_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "iw_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRtl:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v5

    :goto_1
    sput-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const-string/jumbo v2, "ko"

    .line 2092
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_2

    :cond_5
    move v7, v5

    :goto_2
    sput v7, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    .line 2094
    sget v7, Lorg/telegram/messenger/R$string;->formatterBoostExpired:I

    const-string v8, "formatterBoostExpired"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMM dd, yyyy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterBoostExpired:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2095
    sget v7, Lorg/telegram/messenger/R$string;->formatterGiveawayCard:I

    const-string v8, "formatterGiveawayCard"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dd MMM yyyy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayCard:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2096
    sget v7, Lorg/telegram/messenger/R$string;->formatterGiveawayMonthDay:I

    const-string v8, "formatterGiveawayMonthDay"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMMM dd"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2097
    sget v7, Lorg/telegram/messenger/R$string;->formatterGiveawayMonthDayYear:I

    const-string v8, "formatterGiveawayMonthDayYear"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMMM dd, yyyy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterGiveawayMonthDayYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2098
    sget v7, Lorg/telegram/messenger/R$string;->formatterMonthYear:I

    const-string v8, "formatterMonthYear"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMM yyyy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2099
    sget v7, Lorg/telegram/messenger/R$string;->formatterMonth:I

    const-string v8, "formatterMonth"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dd MMM"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterDayMonth:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2100
    sget v7, Lorg/telegram/messenger/R$string;->formatterYear:I

    const-string v8, "formatterYear"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dd.MM.yy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2101
    sget v7, Lorg/telegram/messenger/R$string;->formatterYearMax:I

    const-string v8, "formatterYearMax"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "dd.MM.yyyy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterYearMax:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2102
    sget v7, Lorg/telegram/messenger/R$string;->chatDate:I

    const-string v8, "chatDate"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "d MMMM"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->chatDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2103
    sget v7, Lorg/telegram/messenger/R$string;->chatFullDate:I

    const-string v8, "chatFullDate"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "d MMMM yyyy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->chatFullDate:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2104
    sget v7, Lorg/telegram/messenger/R$string;->formatterWeek:I

    const-string v8, "formatterWeek"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "EEE"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterWeek:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2105
    sget v7, Lorg/telegram/messenger/R$string;->formatterWeekLong:I

    const-string v8, "formatterWeekLong"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "EEEE"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterWeekLong:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2106
    sget v7, Lorg/telegram/messenger/R$string;->formatDateSchedule:I

    const-string v8, "formatDateSchedule"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMM d"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2107
    sget v7, Lorg/telegram/messenger/R$string;->formatDateScheduleYear:I

    const-string v8, "formatDateScheduleYear"

    invoke-direct {p0, v8, v7}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MMM d yyyy"

    invoke-direct {p0, v0, v7, v8}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2108
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_4

    :cond_7
    :goto_3
    move-object v1, v0

    :goto_4
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_8

    sget v2, Lorg/telegram/messenger/R$string;->formatterDay24H:I

    const-string v4, "formatterDay24H"

    goto :goto_5

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->formatterDay12H:I

    const-string v4, "formatterDay12H"

    :goto_5
    invoke-direct {p0, v4, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v4, :cond_9

    const-string v4, "HH:mm"

    goto :goto_6

    :cond_9
    const-string v4, "h:mm a"

    :goto_6
    invoke-direct {p0, v1, v2, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2109
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_a

    sget v1, Lorg/telegram/messenger/R$string;->formatterStats24H:I

    const-string v2, "formatterStats24H"

    goto :goto_7

    :cond_a
    sget v1, Lorg/telegram/messenger/R$string;->formatterStats12H:I

    const-string v2, "formatterStats12H"

    :goto_7
    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    const-string v4, "MMM dd yyyy, HH:mm"

    const-string v7, "MMM dd yyyy, h:mm a"

    if-eqz v2, :cond_b

    move-object v2, v4

    goto :goto_8

    :cond_b
    move-object v2, v7

    :goto_8
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterStats:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2110
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_c

    sget v1, Lorg/telegram/messenger/R$string;->formatterBannedUntil24H:I

    const-string v2, "formatterBannedUntil24H"

    goto :goto_9

    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->formatterBannedUntil12H:I

    const-string v2, "formatterBannedUntil12H"

    :goto_9
    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    move-object v4, v7

    :goto_a
    invoke-direct {p0, v0, v1, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntil:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2111
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v1, :cond_e

    sget v1, Lorg/telegram/messenger/R$string;->formatterBannedUntilThisYear24H:I

    const-string v2, "formatterBannedUntilThisYear24H"

    goto :goto_b

    :cond_e
    sget v1, Lorg/telegram/messenger/R$string;->formatterBannedUntilThisYear12H:I

    const-string v2, "formatterBannedUntilThisYear12H"

    :goto_b
    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->is24HourFormat:Z

    if-eqz v2, :cond_f

    const-string v2, "MMM dd, HH:mm"

    goto :goto_c

    :cond_f
    const-string v2, "MMM dd, h:mm a"

    :goto_c
    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterBannedUntilThisYear:Lorg/telegram/messenger/time/FastDateFormat;

    .line 2112
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    sget v2, Lorg/telegram/messenger/R$string;->SendTodayAt:I

    const-string v4, "SendTodayAt"

    invoke-direct {p0, v4, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\'Send today at\' HH:mm"

    invoke-direct {p0, v0, v2, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    aput-object v2, v1, v3

    .line 2113
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    sget v2, Lorg/telegram/messenger/R$string;->SendDayAt:I

    const-string v3, "SendDayAt"

    invoke-direct {p0, v3, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Send on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    aput-object v2, v1, v5

    .line 2114
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    sget v2, Lorg/telegram/messenger/R$string;->SendDayYearAt:I

    const-string v3, "SendDayYearAt"

    invoke-direct {p0, v3, v2}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'Send on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2115
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/4 v2, 0x3

    sget v3, Lorg/telegram/messenger/R$string;->RemindTodayAt:I

    const-string v4, "RemindTodayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Remind today at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2116
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/4 v2, 0x4

    sget v3, Lorg/telegram/messenger/R$string;->RemindDayAt:I

    const-string v4, "RemindDayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Remind on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2117
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/4 v2, 0x5

    sget v3, Lorg/telegram/messenger/R$string;->RemindDayYearAt:I

    const-string v4, "RemindDayYearAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Remind on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2118
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/4 v2, 0x6

    sget v3, Lorg/telegram/messenger/R$string;->StartTodayAt:I

    const-string v4, "StartTodayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Start today at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2119
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/4 v2, 0x7

    sget v3, Lorg/telegram/messenger/R$string;->StartDayAt:I

    const-string v4, "StartDayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Start on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2120
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/16 v2, 0x8

    sget v3, Lorg/telegram/messenger/R$string;->StartDayYearAt:I

    const-string v4, "StartDayYearAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Start on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2121
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/16 v2, 0x9

    sget v3, Lorg/telegram/messenger/R$string;->StartShortTodayAt:I

    const-string v4, "StartShortTodayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Today,\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2122
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/16 v2, 0xa

    sget v3, Lorg/telegram/messenger/R$string;->StartShortDayAt:I

    const-string v4, "StartShortDayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMM d\',\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2123
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/16 v2, 0xb

    sget v3, Lorg/telegram/messenger/R$string;->StartShortDayYearAt:I

    const-string v4, "StartShortDayYearAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMM d yyyy, HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2124
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/16 v2, 0xc

    sget v3, Lorg/telegram/messenger/R$string;->StartsTodayAt:I

    const-string v4, "StartsTodayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Starts today at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2125
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/16 v2, 0xd

    sget v3, Lorg/telegram/messenger/R$string;->StartsDayAt:I

    const-string v4, "StartsDayAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Starts on\' MMM d \'at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2126
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->formatterScheduleSend:[Lorg/telegram/messenger/time/FastDateFormat;

    const/16 v2, 0xe

    sget v3, Lorg/telegram/messenger/R$string;->StartsDayYearAt:I

    const-string v4, "StartsDayYearAt"

    invoke-direct {p0, v4, v3}, Lorg/telegram/messenger/LocaleController;->getStringInternal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'Starts on\' MMM d yyyy \'at\' HH:mm"

    invoke-direct {p0, v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->createFormatter(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    aput-object v0, v1, v2

    return-void
.end method

.method public reloadCurrentRemoteLocale(ILjava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6

    if-eqz p2, :cond_0

    const-string v0, "-"

    const-string v1, "_"

    .line 585
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    if-eqz v2, :cond_1

    .line 587
    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 588
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-object v0, p0

    move v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/LocaleController;->applyRemoteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Ljava/lang/String;ZILjava/lang/Runnable;)I

    :cond_2
    return-void
.end method

.method public saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V
    .locals 11

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_13

    .line 2380
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_d

    .line 2389
    :cond_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->lang_code:Ljava/lang/String;

    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2391
    iget-object v2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    move v6, p3

    goto :goto_0

    .line 2393
    :cond_1
    iget-object v2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    const-string v2, ")"

    if-ne v6, v3, :cond_3

    .line 2399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "saveRemoteLocaleStrings: unknown language "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (locale short="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", base="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v6, :cond_4

    .line 2404
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v1

    goto :goto_1

    .line 2406
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v1

    .line 2410
    :goto_1
    :try_start_0
    iget v3, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->from_version:I

    if-nez v3, :cond_5

    const-string/jumbo v2, "saveRemoteLocaleStrings: difference is straight from the beginning"

    .line 2411
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2412
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    .line 2414
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveRemoteLocaleStrings: difference is from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->from_version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ours "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (base version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2415
    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;Z)Ljava/util/HashMap;

    move-result-object v2

    :goto_2
    move v3, p3

    .line 2417
    :goto_3
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 2418
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$LangPackString;

    .line 2419
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackString;

    if-eqz v5, :cond_6

    .line 2420
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->value:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 2421
    :cond_6
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackStringPluralized;

    if-eqz v5, :cond_d

    .line 2422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_zero"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->zero_value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_7

    :try_start_1
    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v8

    :goto_4
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_one"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->one_value:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_8
    move-object v7, v8

    :goto_5
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_two"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->two_value:Ljava/lang/String;

    if-eqz v7, :cond_9

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    move-object v7, v8

    :goto_6
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_few"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->few_value:Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_a
    move-object v7, v8

    :goto_7
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_many"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->many_value:Ljava/lang/String;

    if-eqz v7, :cond_b

    invoke-direct {p0, v7}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_b
    move-object v7, v8

    :goto_8
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_other"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->other_value:Ljava/lang/String;

    if-eqz v4, :cond_c

    invoke-direct {p0, v4}, Lorg/telegram/messenger/LocaleController;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_c
    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2428
    :cond_d
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_langPackStringDeleted;

    if-eqz v5, :cond_e

    .line 2429
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$LangPackString;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 2432
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save locale file to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2433
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    .line 2434
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "<resources>\n"

    .line 2435
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const-string v5, "<string name=\"%1$s\">%2$s</string>\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 2437
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, p3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    const-string p3, "</resources>"

    .line 2439
    invoke-virtual {v3, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2440
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 2441
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->hasBaseLang()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 2442
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToBaseFile()Ljava/io/File;

    move-result-object v0

    goto :goto_b

    :cond_11
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz p3, :cond_12

    .line 2444
    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getPathToFile()Ljava/io/File;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/messenger/LocaleController;->getLocaleFileStrings(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {v9, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2446
    :cond_12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "saved locale file to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2447
    new-instance p3, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda6;

    move-object v4, p3

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/LocaleController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/LocaleController;ILorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception p1

    .line 2511
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_c
    return-void

    .line 2381
    :cond_13
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveRemoteLocaleStrings: empty difference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_15

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->strings:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_e

    :cond_14
    move p2, p3

    goto :goto_f

    :cond_15
    :goto_e
    move p2, v0

    :goto_f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "; locale is local or null="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_10

    :cond_16
    move v0, p3

    :cond_17
    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {p0}, Lorg/telegram/messenger/LocaleController;->recreateFormatters()V

    .line 2383
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p4, :cond_18

    .line 2385
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_18
    return-void
.end method

.method public saveRemoteLocaleStringsForCurrentLocale(Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;I)V
    .locals 3

    .line 2369
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    if-nez v0, :cond_0

    return-void

    .line 2372
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;->lang_code:Ljava/lang/String;

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2373
    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->baseLangCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2376
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/LocaleController;->currentLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/telegram/messenger/LocaleController;->saveRemoteLocaleStrings(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/tgnet/TLRPC$TL_langPackDifference;ILjava/lang/Runnable;)V

    return-void
.end method
