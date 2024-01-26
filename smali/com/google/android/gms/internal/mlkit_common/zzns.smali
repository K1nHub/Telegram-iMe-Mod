.class public final Lcom/google/android/gms/internal/mlkit_common/zzns;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_common/zznp;

.field private final zzg:Ljava/lang/Long;

.field private final zzh:Ljava/lang/Boolean;

.field private final zzi:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzno;Lcom/google/android/gms/internal/mlkit_common/zznr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzno;->zzi(Lcom/google/android/gms/internal/mlkit_common/zzno;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zza:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzno;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzno;)Lcom/google/android/gms/internal/mlkit_common/zznq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzd:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzno;->zzh(Lcom/google/android/gms/internal/mlkit_common/zzno;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zze:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzno;->zze(Lcom/google/android/gms/internal/mlkit_common/zzno;)Lcom/google/android/gms/internal/mlkit_common/zznp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzg:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzh:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzi:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_common/zzns;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzns;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zza:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_common/zzns;->zza:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zze:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_common/zzns;->zze:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznp;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznp;

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zze:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznp;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_common/zznp;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_common/zzbn;
        zza = 0x6
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznp;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zznq;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_common/zzbn;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_common/zzbn;
        zza = 0x5
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_common/zzbn;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzns;->zza:Ljava/lang/String;

    return-object v0
.end method
