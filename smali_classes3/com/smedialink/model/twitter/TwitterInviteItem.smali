.class public final Lcom/smedialink/model/twitter/TwitterInviteItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "TwitterInviteItem.kt"


# instance fields
.field private final id:J

.field private final nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const-string v0, "nickname"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    .line 7
    iput-object p3, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/twitter/TwitterInviteItem;JLjava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/twitter/TwitterInviteItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/model/twitter/TwitterInviteItem;->copy(JLjava/lang/String;)Lcom/smedialink/model/twitter/TwitterInviteItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;)Lcom/smedialink/model/twitter/TwitterInviteItem;
    .locals 1

    const-string v0, "nickname"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/twitter/TwitterInviteItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/model/twitter/TwitterInviteItem;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/twitter/TwitterInviteItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/twitter/TwitterInviteItem;

    iget-wide v3, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    iget-wide v5, p1, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    return-wide v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterInviteItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/twitter/TwitterInviteItem;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
