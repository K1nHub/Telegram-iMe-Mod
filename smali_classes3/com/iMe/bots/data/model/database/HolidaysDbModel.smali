.class public final Lcom/iMe/bots/data/model/database/HolidaysDbModel;
.super Ljava/lang/Object;
.source "HolidaysDbModel.kt"


# instance fields
.field private final tags:Ljava/lang/String;

.field private final userId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    .line 10
    iput-object p3, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/bots/data/model/database/HolidaysDbModel;JLjava/lang/String;ILjava/lang/Object;)Lcom/iMe/bots/data/model/database/HolidaysDbModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->copy(JLjava/lang/String;)Lcom/iMe/bots/data/model/database/HolidaysDbModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;)Lcom/iMe/bots/data/model/database/HolidaysDbModel;
    .locals 1

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/bots/data/model/database/HolidaysDbModel;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/bots/data/model/database/HolidaysDbModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/bots/data/model/database/HolidaysDbModel;

    iget-wide v3, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    iget-wide v5, p1, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getTags()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HolidaysDbModel(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/bots/data/model/database/HolidaysDbModel;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method