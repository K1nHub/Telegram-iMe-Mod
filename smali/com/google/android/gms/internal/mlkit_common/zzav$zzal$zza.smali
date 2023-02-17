.class public final Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;
.super Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb<",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzau;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzb;)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zzc;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;Ljava/lang/String;)V

    return-object p0
.end method
