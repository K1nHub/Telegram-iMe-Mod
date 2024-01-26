.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzsr;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzss;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_common/zzsj;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_common/zzsu;

.field public final synthetic zzd:Lcom/google/mlkit/common/model/RemoteModel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzss;Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzsu;Lcom/google/mlkit/common/model/RemoteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzss;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzsu;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzss;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzsu;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzsr;->zzd:Lcom/google/mlkit/common/model/RemoteModel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzsu;Lcom/google/mlkit/common/model/RemoteModel;)V

    return-void
.end method
