.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzso;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.10.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_common/zzss;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_common/zzsj;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_common/zzng;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzss;Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzng;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zza:Lcom/google/android/gms/internal/mlkit_common/zzss;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzng;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zza:Lcom/google/android/gms/internal/mlkit_common/zzss;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzsj;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzng;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzso;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_common/zzss;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzsj;Lcom/google/android/gms/internal/mlkit_common/zzng;Ljava/lang/String;)V

    return-void
.end method
