.class public Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap<",
        "Lcom/google/mlkit/common/model/RemoteModel;",
        "Lcom/google/android/gms/internal/mlkit_common/zzdx;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

.field private final zzb:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;->zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;->zzb:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzdy;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V

    return-void
.end method


# virtual methods
.method protected synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 5
    check-cast p1, Lcom/google/mlkit/common/model/RemoteModel;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;->zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzdx$zza;->zzb:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/mlkit_common/zzdx;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzds;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/android/gms/internal/mlkit_common/zzdy;)V

    return-object v0
.end method
