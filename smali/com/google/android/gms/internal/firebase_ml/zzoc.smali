.class final Lcom/google/android/gms/internal/firebase_ml/zzoc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;

.field private final zzaua:Lcom/google/android/gms/internal/firebase_ml/zznx;

.field private final zzaub:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzoa;Lcom/google/android/gms/internal/firebase_ml/zznx;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaua:Lcom/google/android/gms/internal/firebase_ml/zznx;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaub:Ljava/lang/String;

    return-void
.end method

.method private final zzlu()Ljava/lang/Void;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaub:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "OPERATION_RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ModelResourceManager"

    if-nez v1, :cond_1

    const-string v1, "OPERATION_LOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaua:Lcom/google/android/gms/internal/firebase_ml/zznx;

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzf(Lcom/google/android/gms/internal/firebase_ml/zznx;)V
    :try_end_0
    .catch Lcom/google/firebase/ml/common/FirebaseMLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzlq()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object v1

    const-string v3, "Error preloading model resource"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaua:Lcom/google/android/gms/internal/firebase_ml/zznx;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzlq()Lcom/google/android/gms/common/internal/GmsLogger;

    move-result-object v1

    const-string v3, "Releasing modelResource"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase_ml/zznx;->release()V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzatt:Lcom/google/android/gms/internal/firebase_ml/zzoa;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zzoa;->zzc(Lcom/google/android/gms/internal/firebase_ml/zzoa;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzlu()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 17
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_ml/zzoc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzoc;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaua:Lcom/google/android/gms/internal/firebase_ml/zznx;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaua:Lcom/google/android/gms/internal/firebase_ml/zznx;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaub:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaub:Ljava/lang/String;

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaua:Lcom/google/android/gms/internal/firebase_ml/zznx;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzoc;->zzaub:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
