.class final Lcom/google/android/gms/internal/fido/zzbj;
.super Lcom/google/android/gms/internal/fido/zzbk;
.source "com.google.android.gms:play-services-fido@@19.0.0"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzbh;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzbh;-><init>(Ljava/lang/String;[C)V

    .line 2
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/fido/zzbk;-><init>(Lcom/google/android/gms/internal/fido/zzbh;Ljava/lang/Character;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzbh;->zzc(Lcom/google/android/gms/internal/fido/zzbh;)[C

    move-result-object p1

    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzas;->zzc(Z)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/Appendable;[BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/gms/internal/fido/zzas;->zze(III)V

    move p3, p4

    :goto_0
    const/4 v1, 0x3

    if-lt p3, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/google/android/gms/internal/fido/zzbk;->zzb:Lcom/google/android/gms/internal/fido/zzbh;

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    ushr-int/lit8 v2, v0, 0x12

    .line 3
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/fido/zzbh;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzbk;->zzb:Lcom/google/android/gms/internal/fido/zzbh;

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fido/zzbh;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzbk;->zzb:Lcom/google/android/gms/internal/fido/zzbh;

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fido/zzbh;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzbk;->zzb:Lcom/google/android/gms/internal/fido/zzbh;

    and-int/lit8 v0, v0, 0x3f

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/fido/zzbh;->zza(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p3, p3, -0x3

    goto :goto_0

    :cond_0
    if-ge v0, p4, :cond_1

    sub-int/2addr p4, v0

    .line 7
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/fido/zzbk;->zzc(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method
