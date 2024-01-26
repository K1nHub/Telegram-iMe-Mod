.class public final Lcom/google/android/gms/internal/firebase_ml/zzqm;
.super Ljava/lang/Object;


# direct methods
.method public static zzbn(I)I
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid rotation: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static zzbo(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid landmark type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static zzbp(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid mode type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static zzbq(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid classification type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/firebase_ml/zzqp;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;->zzakx:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    goto :goto_1

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame$Metadata;->getFormat()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const v1, 0x32315659

    if-eq v0, v1, :cond_2

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;->zzakt:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;

    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;->zzakw:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;

    goto :goto_0

    .line 27
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;->zzakv:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;

    goto :goto_0

    .line 26
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;->zzaku:Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {p0}, Lcom/google/android/gms/vision/Frame;->getGrayscaleImageData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    .line 32
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;->zzjn()Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;->zza(Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zzb;)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;->zzaq(I)Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt$zza;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzuu$zzb;->zzrq()Lcom/google/android/gms/internal/firebase_ml/zzwe;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzuu;

    check-cast p0, Lcom/google/android/gms/internal/firebase_ml/zzlu$zzt;

    return-object p0
.end method
