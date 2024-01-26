.class public final Lcom/google/android/gms/internal/mlkit_common/zzmu;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zznp;

.field private final zzb:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzms;Lcom/google/android/gms/internal/mlkit_common/zzmt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzms;->zzd(Lcom/google/android/gms/internal/mlkit_common/zzms;)Lcom/google/android/gms/internal/mlkit_common/zznp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->zza:Lcom/google/android/gms/internal/mlkit_common/zznp;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzms;->zze(Lcom/google/android/gms/internal/mlkit_common/zzms;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->zzb:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_common/zznp;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_common/zzbn;
        zza = 0x1
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->zza:Lcom/google/android/gms/internal/mlkit_common/zznp;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lcom/google/android/gms/internal/mlkit_common/zzbn;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->zzb:Ljava/lang/Boolean;

    return-object v0
.end method
