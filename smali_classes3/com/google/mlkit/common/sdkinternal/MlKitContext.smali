.class public Lcom/google/mlkit/common/sdkinternal/MlKitContext;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/mlkit/common/sdkinternal/MlKitContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/firebase/components/ComponentRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    .line 3
    invoke-static {p1, v0}, Lcom/google/firebase/components/ComponentDiscovery;->forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/components/ComponentDiscovery;->discover()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/firebase/components/ComponentRuntime;

    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/components/Component;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 6
    invoke-static {p1, v4, v6}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p1

    aput-object p1, v3, v5

    const-class p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    new-array v4, v5, [Ljava/lang/Class;

    .line 7
    invoke-static {p0, p1, v4}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/components/ComponentRuntime;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/Component;)V

    iput-object v1, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Lcom/google/firebase/components/ComponentRuntime;

    .line 8
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/ComponentRuntime;->initializeEagerComponents(Z)V

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 21
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MlKitContext has not been initialized"

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 2

    .line 12
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p0, v1

    .line 17
    :cond_0
    invoke-direct {v0, p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;-><init>(Landroid/content/Context;)V

    .line 18
    sget-object p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v1, "MlKitContext is already initialized"

    .line 19
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MlKitContext has been deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/ComponentRuntime;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
