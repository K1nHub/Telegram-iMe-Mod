.class public Lcom/google/android/gms/internal/mlkit_common/zzgb;
.super Ljava/io/IOException;
.source "com.google.mlkit:common@@17.0.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_common/zzhb;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzhb;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/mlkit_common/zzga;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzga;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzga;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
