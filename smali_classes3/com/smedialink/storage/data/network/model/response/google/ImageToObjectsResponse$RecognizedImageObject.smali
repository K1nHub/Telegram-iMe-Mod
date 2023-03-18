.class public final Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;
.super Ljava/lang/Object;
.source "ImageToObjectsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizedImageObject"
.end annotation


# instance fields
.field private final entityId:Ljava/lang/String;

.field private final recognizedObject:Ljava/lang/String;

.field private final score:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1

    const-string v0, "recognizedObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    .line 8
    iput-wide p2, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    .line 9
    iput-object p4, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;Ljava/lang/String;DLjava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->copy(Ljava/lang/String;DLjava/lang/String;)Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;DLjava/lang/String;)Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;
    .locals 1

    const-string v0, "recognizedObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    iget-wide v5, p1, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEntityId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecognizedObject()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizedImageObject(recognizedObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->recognizedObject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->score:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/response/google/ImageToObjectsResponse$RecognizedImageObject;->entityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
