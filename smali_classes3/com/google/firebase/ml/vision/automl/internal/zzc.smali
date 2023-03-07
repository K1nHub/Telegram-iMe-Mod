.class public final Lcom/google/firebase/ml/vision/automl/internal/zzc;
.super Lcom/google/android/gms/internal/firebase_ml/zzb;

# interfaces
.implements Lcom/google/firebase/ml/vision/automl/internal/zza;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabelerCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final newOnDeviceAutoMLImageLabeler(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/firebase/ml/vision/automl/internal/OnDeviceAutoMLImageLabelerOptionsParcel;)Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;
    .locals 2
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
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.firebase.ml.vision.automl.internal.IOnDeviceAutoMLImageLabeler"

    .line 10
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    if-eqz v1, :cond_1

    .line 12
    move-object p2, v0

    check-cast p2, Lcom/google/firebase/ml/vision/automl/internal/IOnDeviceAutoMLImageLabeler;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/firebase/ml/vision/automl/internal/zzb;

    invoke-direct {v0, p2}, Lcom/google/firebase/ml/vision/automl/internal/zzb;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
