.class public final Lcom/google/android/gms/wearable/internal/zzdd;
.super Lcom/google/android/gms/common/data/DataBufferRef;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/wearable/DataEvent;


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput p3, p0, Lcom/google/android/gms/wearable/internal/zzdd;->zza:I

    return-void
.end method


# virtual methods
.method public final synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzdc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzdc;-><init>(Lcom/google/android/gms/wearable/DataEvent;)V

    return-object v0
.end method

.method public final getDataItem()Lcom/google/android/gms/wearable/DataItem;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataBufferRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferRef;->mDataRow:I

    iget v3, p0, Lcom/google/android/gms/wearable/internal/zzdd;->zza:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/zzdk;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method public final getType()I
    .locals 1

    const-string v0, "event_type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "event_type"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "changed"

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataBufferRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "deleted"

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzdd;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataEventRef{ type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dataitem="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
