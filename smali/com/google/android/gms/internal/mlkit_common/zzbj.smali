.class public final Lcom/google/android/gms/internal/mlkit_common/zzbj;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_common/zzbm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzbm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbm;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbj;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbm;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbj;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbj;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzbn;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzbi;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbj;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbj;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzbm;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbi;-><init>(ILcom/google/android/gms/internal/mlkit_common/zzbm;)V

    return-object v0
.end method
