.class public Lcom/google/android/gms/wearable/DataItemBuffer;
.super Lcom/google/android/gms/common/data/EntityBuffer;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/EntityBuffer<",
        "Lcom/google/android/gms/wearable/DataItem;",
        ">;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/EntityBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/DataItemBuffer;->zza:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic getEntry(II)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/wearable/internal/zzdk;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected final getPrimaryDataMarkerColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "path"

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/DataItemBuffer;->zza:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
