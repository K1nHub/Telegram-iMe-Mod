.class public final Lcom/iMe/model/wallet/home/TokenSortingData;
.super Ljava/lang/Object;
.source "TokenSortingData.kt"


# instance fields
.field private final isPositiveBalances:Z

.field private final tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Z)V
    .locals 1

    const-string v0, "tokensOrderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    .line 7
    iput-boolean p2, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/TokenSortingData;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;ZILjava/lang/Object;)Lcom/iMe/model/wallet/home/TokenSortingData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/home/TokenSortingData;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Z)Lcom/iMe/model/wallet/home/TokenSortingData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Z)Lcom/iMe/model/wallet/home/TokenSortingData;
    .locals 1

    const-string v0, "tokensOrderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/TokenSortingData;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/home/TokenSortingData;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/TokenSortingData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/TokenSortingData;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    iget-boolean p1, p1, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPositiveBalances()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenSortingData(tokensOrderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->tokensOrderType:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPositiveBalances="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
