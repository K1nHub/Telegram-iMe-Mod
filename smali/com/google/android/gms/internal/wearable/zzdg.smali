.class final Lcom/google/android/gms/internal/wearable/zzdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/wearable/zzdn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/wearable/zzdc;

.field private final zzb:Lcom/google/android/gms/internal/wearable/zzee;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/wearable/zzbk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/wearable/zzee;Lcom/google/android/gms/internal/wearable/zzbk;Lcom/google/android/gms/internal/wearable/zzdc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzb:Lcom/google/android/gms/internal/wearable/zzee;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/wearable/zzbk;->zzc(Lcom/google/android/gms/internal/wearable/zzdc;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    iput-object p3, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zza:Lcom/google/android/gms/internal/wearable/zzdc;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/wearable/zzee;Lcom/google/android/gms/internal/wearable/zzbk;Lcom/google/android/gms/internal/wearable/zzdc;)Lcom/google/android/gms/internal/wearable/zzdg;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/wearable/zzdg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/wearable/zzdg;-><init>(Lcom/google/android/gms/internal/wearable/zzee;Lcom/google/android/gms/internal/wearable/zzbk;Lcom/google/android/gms/internal/wearable/zzdc;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzb:Lcom/google/android/gms/internal/wearable/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzee;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wearable/zzee;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzbk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzbo;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzb:Lcom/google/android/gms/internal/wearable/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzee;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzbk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzbo;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zza:Lcom/google/android/gms/internal/wearable/zzdc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzdc;->zzV()Lcom/google/android/gms/internal/wearable/zzdb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/wearable/zzdb;->zzv()Lcom/google/android/gms/internal/wearable/zzdc;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzb:Lcom/google/android/gms/internal/wearable/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzee;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzbk;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzb:Lcom/google/android/gms/internal/wearable/zzee;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/wearable/zzdp;->zzF(Lcom/google/android/gms/internal/wearable/zzee;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/wearable/zzdp;->zzE(Lcom/google/android/gms/internal/wearable/zzbk;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/wearable/zzaj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/wearable/zzbv;

    iget-object p3, p2, Lcom/google/android/gms/internal/wearable/zzbv;->zzc:Lcom/google/android/gms/internal/wearable/zzef;

    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzef;->zzc()Lcom/google/android/gms/internal/wearable/zzef;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzef;->zze()Lcom/google/android/gms/internal/wearable/zzef;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/wearable/zzbv;->zzc:Lcom/google/android/gms/internal/wearable/zzef;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/wearable/zzbt;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/wearable/zzew;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/wearable/zzbk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzbo;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzb:Lcom/google/android/gms/internal/wearable/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzee;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzb:Lcom/google/android/gms/internal/wearable/zzee;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/wearable/zzee;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzbk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzbo;

    iget-object p1, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/wearable/zzbk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzbo;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzdg;->zzd:Lcom/google/android/gms/internal/wearable/zzbk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wearable/zzbk;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/wearable/zzbo;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
