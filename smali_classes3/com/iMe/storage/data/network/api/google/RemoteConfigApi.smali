.class public final Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;
.super Ljava/lang/Object;
.source "RemoteConfigApi.kt"


# instance fields
.field private final remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method public static synthetic $r8$lambda$AmW3-xoedsZ-vL95UDTDVxET_kE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->getBoolean$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V
    .locals 1

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-void
.end method

.method public static final synthetic access$getRemoteConfig$p(Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-object p0
.end method

.method private final fetchAndActivate()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->remoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "remoteConfig\n           \u2026      .fetchAndActivate()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->asSingleTask(Lcom/google/android/gms/tasks/Task;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method private static final getBoolean$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->fetchAndActivate()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;-><init>(Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "fun getBoolean(key: Stri\u2026eConfig.getBoolean(key) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
