.class public final Lcom/google/android/gms/vision/label/internal/client/zzi;
.super Lcom/google/android/gms/internal/vision/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzm;"
    }
.end annotation


# instance fields
.field private zzdr:Lcom/google/android/gms/vision/label/internal/client/ImageLabelerOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/label/internal/client/ImageLabelerOptions;)V
    .locals 2

    const-string v0, "LabelerNativeHandle"

    const-string v1, "imagelabel"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzt;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/vision/label/internal/client/zzi;->zzdr:Lcom/google/android/gms/vision/label/internal/client/ImageLabelerOptions;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzm;->zzq()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.label.ChimeraNativeImageLabelerCreator"

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/vision/label/internal/client/zzc;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/vision/label/internal/client/zzb;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/vision/label/internal/client/zzi;->zzdr:Lcom/google/android/gms/vision/label/internal/client/ImageLabelerOptions;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/vision/label/internal/client/zzb;->newImageLabeler(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/vision/label/internal/client/ImageLabelerOptions;)Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/vision/label/internal/client/LabelOptions;)[Lcom/google/android/gms/vision/label/ImageLabel;
    .locals 6

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzm;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/vision/label/ImageLabel;

    return-object p1

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzm;->zzq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/vision/label/internal/client/LabelOptions;)[Lcom/google/android/gms/vision/label/internal/client/zze;

    move-result-object p1

    .line 9
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/gms/vision/label/ImageLabel;

    move v0, v1

    .line 10
    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_1

    .line 11
    new-instance v2, Lcom/google/android/gms/vision/label/ImageLabel;

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/google/android/gms/vision/label/internal/client/zze;->zzdn:Ljava/lang/String;

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/google/android/gms/vision/label/internal/client/zze;->label:Ljava/lang/String;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/google/android/gms/vision/label/internal/client/zze;->zzdo:F

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/vision/label/ImageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    aput-object v2, p2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "LabelerNativeHandle"

    const-string v0, "Error calling native image labeler"

    .line 15
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lcom/google/android/gms/vision/label/ImageLabel;

    return-object p1
.end method

.method protected final zzm()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzm;->zzq()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;

    invoke-interface {v0}, Lcom/google/android/gms/vision/label/internal/client/INativeImageLabeler;->zzs()V

    return-void
.end method
