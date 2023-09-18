.class public final Lcom/iMe/storage/common/AppConfiguration$Common;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Common;

.field private static final prodGoogleServices:Lcom/google/firebase/FirebaseOptions;

.field private static final stageGoogleServices:Lcom/google/firebase/FirebaseOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/common/AppConfiguration$Common;

    invoke-direct {v0}, Lcom/iMe/storage/common/AppConfiguration$Common;-><init>()V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Common;

    .line 26
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v1, "AIzaSyDFc-hXz0kN_vaEF31KDWeGoX1nKDLZpiM"

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "1:444157464191:android:dd047cf092fd1ad8"

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "https://ime-messenger.firebaseio.com"

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "ime-messenger"

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "ime-messenger.appspot.com"

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "444157464191"

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    const-string v1, "Builder()\n            .s\u202691\")\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->prodGoogleServices:Lcom/google/firebase/FirebaseOptions;

    .line 35
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v1, "AIzaSyA3wilu5mej209oqRYot2xCbjOOPb9rl8U"

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "1:272440335749:android:fcba4e2ff52c4dadd8b8ec"

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "https://ime-messenger-stage.firebaseio.com"

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "ime-messenger-stage"

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "ime-messenger-stage.appspot.com"

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "272440335749"

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    const-string v1, "Builder()\n            .s\u202649\")\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->stageGoogleServices:Lcom/google/firebase/FirebaseOptions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDynamicLinkDomain()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformation()Lcom/iMe/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/EnvironmentInformation;->getDynamicLinksDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getProdGoogleServices()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 26
    sget-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->prodGoogleServices:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method

.method public final getStageGoogleServices()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 35
    sget-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->stageGoogleServices:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method
