.class public final Lcom/iMe/storage/common/AppConfiguration$Common;
.super Ljava/lang/Object;
.source "AppConfiguration.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Common;

.field private static final prodGoogleServices:Lcom/google/firebase/FirebaseOptions;

.field private static final stageGoogleServices:Lcom/google/firebase/FirebaseOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/iMe/storage/common/AppConfiguration$Common;

    invoke-direct {v0}, Lcom/iMe/storage/common/AppConfiguration$Common;-><init>()V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Common;

    .line 20
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v1, "AIzaSyDFc-hXz0kN_vaEF31KDWeGoX1nKDLZpiM"

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "1:444157464191:android:dd047cf092fd1ad8"

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "https://ime-messenger.firebaseio.com"

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "ime-messenger"

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "ime-messenger.appspot.com"

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "444157464191"

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    const-string v1, "Builder()\n              \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->prodGoogleServices:Lcom/google/firebase/FirebaseOptions;

    .line 29
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v2, "AIzaSyA3wilu5mej209oqRYot2xCbjOOPb9rl8U"

    .line 30
    invoke-virtual {v0, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v2, "1:272440335749:android:fcba4e2ff52c4dadd8b8ec"

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v2, "https://ime-messenger-stage.firebaseio.com"

    .line 32
    invoke-virtual {v0, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v2, "ime-messenger-stage"

    .line 33
    invoke-virtual {v0, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v2, "ime-messenger-stage.appspot.com"

    .line 34
    invoke-virtual {v0, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v2, "272440335749"

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->stageGoogleServices:Lcom/google/firebase/FirebaseOptions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProdGoogleServices()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 20
    sget-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->prodGoogleServices:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method

.method public final getStageGoogleServices()Lcom/google/firebase/FirebaseOptions;
    .locals 1

    .line 29
    sget-object v0, Lcom/iMe/storage/common/AppConfiguration$Common;->stageGoogleServices:Lcom/google/firebase/FirebaseOptions;

    return-object v0
.end method
