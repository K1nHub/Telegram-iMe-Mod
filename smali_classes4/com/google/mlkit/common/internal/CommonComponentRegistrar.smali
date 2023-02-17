.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza:Lcom/google/firebase/components/Component;

    sget-object v2, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->COMPONENT:Lcom/google/firebase/components/Component;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza:Lcom/google/firebase/components/Component;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zza:Lcom/google/firebase/components/Component;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zza:Lcom/google/firebase/components/Component;

    const-class v6, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    .line 3
    invoke-static {v6}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v6

    const-class v7, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 4
    invoke-static {v7}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/mlkit/common/internal/zzb;->zza:Lcom/google/firebase/components/ComponentFactory;

    .line 5
    invoke-virtual {v6, v7}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v6

    .line 6
    invoke-virtual {v6}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v6

    const-class v7, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 7
    invoke-static {v7}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/mlkit/common/internal/zza;->zza:Lcom/google/firebase/components/ComponentFactory;

    .line 8
    invoke-virtual {v7, v8}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v7

    const-class v8, Lcom/google/mlkit/common/model/RemoteModelManager;

    .line 10
    invoke-static {v8}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v8

    const-class v9, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    .line 11
    invoke-static {v9}, Lcom/google/firebase/components/Dependency;->setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v8

    sget-object v9, Lcom/google/mlkit/common/internal/zzd;->zza:Lcom/google/firebase/components/ComponentFactory;

    .line 12
    invoke-virtual {v8, v9}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v8

    const-class v9, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 14
    invoke-static {v9}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v9

    const-class v10, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 15
    invoke-static {v10}, Lcom/google/firebase/components/Dependency;->requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v9

    sget-object v10, Lcom/google/mlkit/common/internal/zzc;->zza:Lcom/google/firebase/components/ComponentFactory;

    .line 16
    invoke-virtual {v9, v10}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v9

    .line 17
    invoke-virtual {v9}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v9

    .line 18
    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v10

    sget-object v11, Lcom/google/mlkit/common/internal/zzf;->zza:Lcom/google/firebase/components/ComponentFactory;

    invoke-virtual {v10, v11}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v10

    const-class v11, Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;

    .line 19
    invoke-static {v11}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v11

    .line 20
    invoke-static {v0}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    const-class v11, Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 21
    invoke-static {v11}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    sget-object v11, Lcom/google/mlkit/common/internal/zze;->zza:Lcom/google/firebase/components/ComponentFactory;

    .line 22
    invoke-virtual {v0, v11}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v11

    .line 24
    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/mlkit_common/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzad;

    move-result-object v0

    return-object v0
.end method
