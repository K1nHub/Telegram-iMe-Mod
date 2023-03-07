.class public final Lcom/google/android/gms/wearable/internal/zzgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/Status;

.field private final zzb:Lcom/google/android/gms/wearable/Node;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzgc;->zza:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzgc;->zzb:Lcom/google/android/gms/wearable/Node;

    return-void
.end method


# virtual methods
.method public final getNode()Lcom/google/android/gms/wearable/Node;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzgc;->zzb:Lcom/google/android/gms/wearable/Node;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzgc;->zza:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
