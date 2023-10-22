.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
.super Ljava/lang/Object;
.source "TokenBalance.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;


# instance fields
.field private final ratePercentageChange24h:D

.field private final rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final total:D

.field private final totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    return-void
.end method

.method public constructor <init>(DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "totalInFiat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    .line 7
    iput-object p3, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    .line 8
    iput-object p4, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    .line 9
    iput-wide p5, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    .line 10
    iput-object p7, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    goto :goto_3

    :cond_3
    move-wide v5, p5

    :goto_3
    and-int/lit8 v7, p8, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    goto :goto_4

    :cond_4
    move-object v7, p7

    :goto_4
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-wide p5, v5

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy(DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    return-wide v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-object v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    return-wide v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final copy(DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 9

    const-string v0, "totalInFiat"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-object v1, v0

    move-wide v2, p1

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;-><init>(DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    iget-wide v3, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getRatePercentageChange24h()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    return-wide v0
.end method

.method public final getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getTotal()D
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    return-wide v0
.end method

.method public final getTotalInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenBalance(total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", totalInFiat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rateToFiat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->rateToFiat:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratePercentageChange24h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->ratePercentageChange24h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
