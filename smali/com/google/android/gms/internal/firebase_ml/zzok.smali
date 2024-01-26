.class public final Lcom/google/android/gms/internal/firebase_ml/zzok;
.super Ljava/lang/Object;


# instance fields
.field private zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzom;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzom;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzok;->zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzok;->zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzpe;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzok;->zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzmn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzpe;->zzmo()Lcom/google/android/gms/internal/firebase_ml/zzor;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/ml/common/FirebaseMLException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzok;->zzaud:Lcom/google/android/gms/internal/firebase_ml/zzom;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzom;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase_ml/zzor;)Z

    move-result p1

    return p1
.end method
