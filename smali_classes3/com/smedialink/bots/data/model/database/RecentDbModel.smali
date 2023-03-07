.class public final Lcom/smedialink/bots/data/model/database/RecentDbModel;
.super Ljava/lang/Object;
.source "RecentDbModel.kt"


# instance fields
.field private final botId:Ljava/lang/String;

.field private final counter:I

.field private final position:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    .line 9
    iput p3, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    .line 10
    iput p4, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/bots/data/model/database/RecentDbModel;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/smedialink/bots/data/model/database/RecentDbModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/bots/data/model/database/RecentDbModel;->copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/smedialink/bots/data/model/database/RecentDbModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;II)Lcom/smedialink/bots/data/model/database/RecentDbModel;
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/bots/data/model/database/RecentDbModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/bots/data/model/database/RecentDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/bots/data/model/database/RecentDbModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/bots/data/model/database/RecentDbModel;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    iget v3, p1, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    iget p1, p1, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBotId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCounter()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentDbModel(botId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->botId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/bots/data/model/database/RecentDbModel;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
