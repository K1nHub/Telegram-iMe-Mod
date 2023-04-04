.class public final Lcom/iMe/storage/domain/model/staking/StakingProgrammes;
.super Ljava/lang/Object;
.source "StakingProgrammes.kt"


# instance fields
.field private final programmes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final total:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;)V"
        }
    .end annotation

    const-string v0, "programmes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/staking/StakingProgrammes;ILjava/util/List;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/staking/StakingProgrammes;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->copy(ILjava/util/List;)Lcom/iMe/storage/domain/model/staking/StakingProgrammes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/util/List;)Lcom/iMe/storage/domain/model/staking/StakingProgrammes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;)",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;"
        }
    .end annotation

    const-string v0, "programmes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;

    iget v1, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    iget v3, p1, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

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
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingProgrammes(total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", programmes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->programmes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
