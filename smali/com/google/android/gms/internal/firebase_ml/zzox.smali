.class public final Lcom/google/android/gms/internal/firebase_ml/zzox;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;
    .locals 2

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;->zzjz()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->isChargingRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;->zzv(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->isDeviceIdleRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;->zzx(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;->isWifiRequired()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;->zzw(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb$zza;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    return-object p0
.end method

.method public static zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;Lcom/google/android/gms/internal/firebase_ml/zzor;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getModelHash()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_ml/zzor;->zzly()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;->zzjw()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getInitialDownloadConditions()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzox;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getUpdatesDownloadConditions()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_ml/zzox;->zza(Lcom/google/firebase/ml/common/modeldownload/FirebaseModelDownloadConditions;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;->zzb(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx;->zzju()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->getModelNameForBackend()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;->zzaz(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;->zzamq:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzc;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 11
    :cond_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;->zzbb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzx$zza;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseRemoteModel;->isModelUpdatesEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;->zzt(Z)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy$zza;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzy;

    return-object p0
.end method
