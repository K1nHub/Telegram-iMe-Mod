.class public final Lcom/google/android/gms/vision/label/internal/client/zza;
.super Lcom/google/android/gms/internal/vision/zza;

# interfaces
.implements Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.vision.label.internal.client.INativeImageLabeler"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/vision/label/internal/client/LabelOptions;)[Lcom/google/android/gms/vision/label/internal/client/zze;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zza;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    .line 4
    invoke-static {}, Lcom/google/android/gms/vision/label/ImageLabeler$$ExternalSyntheticThrowNSME0;->m()Ljava/lang/NoSuchMethodError;

    move-result-object p1

    throw p1
.end method

.method public final zzs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zza;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/vision/zza;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
