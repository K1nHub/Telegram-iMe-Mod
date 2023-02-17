.class public final Lcom/smedialink/storage/data/di/module/FirebaseModuleKt;
.super Ljava/lang/Object;
.source "FirebaseModule.kt"


# static fields
.field private static firebaseModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    sget-object v0, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/FirebaseModuleKt$firebaseModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt;->firebaseModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getFirebaseModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 13
    sget-object v0, Lcom/smedialink/storage/data/di/module/FirebaseModuleKt;->firebaseModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final initRemoteConfig(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 4

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p0

    const-string v0, "getInstance(app)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    .line 23
    sget-object v1, Lcom/smedialink/storage/data/common/RemoteConfigConstants;->INSTANCE:Lcom/smedialink/storage/data/common/RemoteConfigConstants;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/common/RemoteConfigConstants;->getMinFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v0

    const-string v2, "Builder()\n              \u2026\n                .build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/smedialink/storage/data/common/RemoteConfigConstants;->getDefaultValues()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method
