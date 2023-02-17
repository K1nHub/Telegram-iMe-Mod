.class public abstract Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler$zza;
.super Lcom/google/android/gms/internal/vision/zzb;

# interfaces
.implements Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.vision.label.internal.client.INativeImageLabeler"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;->zzs()V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 5
    sget-object p1, Lcom/google/android/gms/vision/label/internal/client/LabelOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Lcom/google/android/gms/vision/label/ImageLabeler$$ExternalSyntheticThrowNSME0;->m()Ljava/lang/NoSuchMethodError;

    move-result-object p1

    throw p1
.end method
