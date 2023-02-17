.class public final Lcom/google/android/gms/internal/firebase_ml/zzip;
.super Lcom/google/android/gms/internal/firebase_ml/zzis;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_ml/zzis<",
        "Lcom/google/android/gms/internal/firebase_ml/zziv;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_ml/zziq;Lcom/google/android/gms/internal/firebase_ml/zziw;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/internal/firebase_ml/zziq;->zzaak:Lcom/google/android/gms/internal/firebase_ml/zzio;

    const-class v5, Lcom/google/android/gms/internal/firebase_ml/zziv;

    const-string v2, "POST"

    const-string v3, "v1/images:annotate"

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzis;-><init>(Lcom/google/android/gms/internal/firebase_ml/zzio;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzis;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzis;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzip;

    return-object p1
.end method

.method public final synthetic zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzer;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzip;

    return-object p1
.end method

.method public final synthetic zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzew;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzip;

    return-object p1
.end method

.method public final synthetic zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzis;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzip;

    return-object p1
.end method
