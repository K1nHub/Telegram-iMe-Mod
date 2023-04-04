.class public final Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;
.super Ljava/lang/Object;
.source "CloudAlbumDb.kt"


# instance fields
.field private albumId:J

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->userId:J

    .line 8
    iput-wide p3, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->albumId:J

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const-wide/16 v0, 0x0

    if-eqz p6, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    move-wide p3, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->userId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->userId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->albumId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->albumId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAlbumId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->albumId:J

    return-wide v0
.end method

.method public final getUserId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->userId:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->albumId:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudAlbumDb(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;->albumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
