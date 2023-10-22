.class public final Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;
.super Ljava/lang/Object;
.source "RequestAppUpdateMetadata.kt"


# instance fields
.field private count:I

.field private lastRequestTime:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;-><init>(JILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

    .line 7
    iput p3, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->count:I

    .line 8
    iput-object p4, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->version:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-string p4, ""

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;-><init>(JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->count:I

    iget v3, p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->count:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->version:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->count:I

    return v0
.end method

.method public final getLastRequestTime()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

    return-wide v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAnyRequestsBefore()Z
    .locals 4

    .line 10
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

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

    .line 7
    iput p1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->count:I

    return-void
.end method

.method public final setLastRequestTime(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestAppUpdateMetadata(lastRequestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->lastRequestTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
