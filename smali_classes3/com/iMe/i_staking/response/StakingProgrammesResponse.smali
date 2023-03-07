.class public final Lcom/iMe/i_staking/response/StakingProgrammesResponse;
.super Ljava/lang/Object;
.source "StakingProgrammesResponse.kt"


# instance fields
.field private final programmes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/i_staking/response/StakingMetadataResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final total:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/i_staking/response/StakingMetadataResponse;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "programmes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    .line 5
    iput p2, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/i_staking/response/StakingProgrammesResponse;Ljava/util/List;IILjava/lang/Object;)Lcom/iMe/i_staking/response/StakingProgrammesResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->copy(Ljava/util/List;I)Lcom/iMe/i_staking/response/StakingProgrammesResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/i_staking/response/StakingMetadataResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    return v0
.end method

.method public final copy(Ljava/util/List;I)Lcom/iMe/i_staking/response/StakingProgrammesResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/i_staking/response/StakingMetadataResponse;",
            ">;I)",
            "Lcom/iMe/i_staking/response/StakingProgrammesResponse;"
        }
    .end annotation

    const-string v0, "programmes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;

    invoke-direct {v0, p1, p2}, Lcom/iMe/i_staking/response/StakingProgrammesResponse;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/i_staking/response/StakingProgrammesResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/i_staking/response/StakingProgrammesResponse;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    iget p1, p1, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getProgrammes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/i_staking/response/StakingMetadataResponse;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingProgrammesResponse(programmes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->programmes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
