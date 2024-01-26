.class public final Lcom/google/firebase/ml/vision/automl/internal/zzb;
.super Lcom/google/android/gms/internal/firebase_ml/zzb;

# interfaces
.implements Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/ml/vision/automl/internal/zzh;)[Lcom/google/firebase/ml/vision/automl/internal/zzf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase_ml/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/google/firebase/ml/vision/automl/internal/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/firebase/ml/vision/automl/internal/zzf;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final zzln()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzlw()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzb;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
