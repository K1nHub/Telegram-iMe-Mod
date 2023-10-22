.class public final Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;
.super Ljava/lang/Object;
.source "RequestAppReviewMetadata.kt"


# instance fields
.field private count:I

.field private lastRequestTime:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;-><init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    .line 5
    iput p3, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->count:I

    return-void
.end method

.method public synthetic constructor <init>(JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->count:I

    iget p1, p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->count:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->count:I

    return v0
.end method

.method public final getLastRequestTime()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAnyRequestsBefore()Z
    .locals 4

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCount(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->count:I

    return-void
.end method

.method public final setLastRequestTime(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestAppReviewMetadata(lastRequestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->lastRequestTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
