.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;
.super Ljava/lang/Object;
.source "TokenDetailedWithRate.kt"


# instance fields
.field private final rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenDetailedWithRate(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rateToFiat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
