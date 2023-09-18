.class public final Lcom/google/android/gms/internal/wearable/zzt;
.super Lcom/google/android/gms/internal/wearable/zzbs;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/wearable/zzdd;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzu;->zzi()Lcom/google/android/gms/internal/wearable/zzu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wearable/zzbs;-><init>(Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/wearable/zzm;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/wearable/zzu;->zzi()Lcom/google/android/gms/internal/wearable/zzu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wearable/zzbs;-><init>(Lcom/google/android/gms/internal/wearable/zzbv;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzw(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzB(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzA(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzz(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/wearable/zzv;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzx(Lcom/google/android/gms/internal/wearable/zzu;Lcom/google/android/gms/internal/wearable/zzv;)V

    return-object p0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/wearable/zzu;->zzC(Lcom/google/android/gms/internal/wearable/zzu;J)V

    return-object p0
.end method

.method public final zzg(Z)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzv(Lcom/google/android/gms/internal/wearable/zzu;Z)V

    return-object p0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzu(Lcom/google/android/gms/internal/wearable/zzu;I)V

    return-object p0
.end method

.method public final zzi(Lcom/google/android/gms/internal/wearable/zzaw;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzr(Lcom/google/android/gms/internal/wearable/zzu;Lcom/google/android/gms/internal/wearable/zzaw;)V

    return-object p0
.end method

.method public final zzj(D)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/wearable/zzu;->zzD(Lcom/google/android/gms/internal/wearable/zzu;D)V

    return-object p0
.end method

.method public final zzk(F)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzE(Lcom/google/android/gms/internal/wearable/zzu;F)V

    return-object p0
.end method

.method public final zzl(I)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzt(Lcom/google/android/gms/internal/wearable/zzu;I)V

    return-object p0
.end method

.method public final zzm(J)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/wearable/zzu;->zzs(Lcom/google/android/gms/internal/wearable/zzu;J)V

    return-object p0
.end method

.method public final zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/wearable/zzt;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/wearable/zzbs;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wearable/zzbs;->zza:Lcom/google/android/gms/internal/wearable/zzbv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/wearable/zzu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wearable/zzu;->zzy(Lcom/google/android/gms/internal/wearable/zzu;Ljava/lang/String;)V

    return-object p0
.end method
