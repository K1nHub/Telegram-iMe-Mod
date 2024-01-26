.class public final Lcom/google/android/gms/internal/firebase_ml/zzqg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzno;
.implements Lcom/google/android/gms/internal/firebase_ml/zznx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_ml/zzno<",
        "TResultType;",
        "Lcom/google/android/gms/internal/firebase_ml/zzqe;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_ml/zznx;"
    }
.end annotation


# instance fields
.field private final zzbam:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzbao:Lcom/google/android/gms/internal/firebase_ml/zzqf;

.field private final synthetic zzbap:Lcom/google/android/gms/internal/firebase_ml/zzqd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zzqd;Lcom/google/firebase/FirebaseApp;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbap:Lcom/google/android/gms/internal/firebase_ml/zzqd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 4
    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/auth/api/AuthProxy;->API:Lcom/google/android/gms/common/api/Api;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbam:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbam:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbam:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 10
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqf;->zza(Lcom/google/firebase/FirebaseApp;ZLcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/firebase_ml/zzqf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbao:Lcom/google/android/gms/internal/firebase_ml/zzqf;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbam:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_ml/zzns;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzqe;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbap:Lcom/google/android/gms/internal/firebase_ml/zzqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbao:Lcom/google/android/gms/internal/firebase_ml/zzqf;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqf;->zza(Lcom/google/android/gms/internal/firebase_ml/zzqe;)Lcom/google/android/gms/internal/firebase_ml/zzit;

    move-result-object v1

    iget p1, p1, Lcom/google/android/gms/internal/firebase_ml/zzqe;->zzbah:F

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzqd;->zza(Lcom/google/android/gms/internal/firebase_ml/zzit;F)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzll()Lcom/google/android/gms/internal/firebase_ml/zznx;
    .locals 0

    return-object p0
.end method

.method public final zzln()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqg;->zzbam:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x3

    .line 14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    const/16 v1, 0xe

    const-string v2, "Failed to contact Google Play services"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/ml/common/FirebaseMLException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
