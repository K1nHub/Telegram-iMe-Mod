.class public final Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;
.super Ljava/lang/Object;
.source "StakingTransactionGas.kt"


# instance fields
.field private final asNativeToken:Ljava/math/BigDecimal;

.field private final asUsd:Ljava/math/BigDecimal;

.field private final duration:I

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "asNativeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asUsd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    .line 8
    iput-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    .line 9
    iput p3, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    .line 10
    iput-object p4, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->copy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    return v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final copy(Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;
    .locals 1

    const-string v0, "asNativeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asUsd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;-><init>(Ljava/math/BigDecimal;Ljava/math/BigDecimal;ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    iget v3, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAsNativeToken()Ljava/math/BigDecimal;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getAsUsd()Ljava/math/BigDecimal;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    return v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingTransactionGas(asNativeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asNativeToken:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asUsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->asUsd:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
