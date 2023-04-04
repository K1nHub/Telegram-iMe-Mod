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
.field private final code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field private final info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

.field private final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

.field private final total:D

.field private final totalInDollars:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;DFLcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/wallet/PriceRate;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceRate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 8
    iput-wide p2, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    .line 9
    iput p4, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    .line 10
    iput-object p5, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    .line 11
    iput-object p6, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    .line 12
    iput-object p7, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;DFLcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/wallet/PriceRate;Lcom/iMe/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p4, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    :cond_2
    move p9, p4

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move p6, p9

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;DFLcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/wallet/PriceRate;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    return-wide v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    return v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/wallet/PriceRate;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    return-object v0
.end method

.method public final component6()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;DFLcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/wallet/PriceRate;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 9

    const-string v0, "code"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceRate"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-object v1, v0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;DFLcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/wallet/PriceRate;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

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

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    iget v3, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getPriceRate()Lcom/iMe/storage/domain/model/wallet/PriceRate;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    return-object v0
.end method

.method public final getTotal()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    return-wide v0
.end method

.method public final getTotalInDollars()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/PriceRate;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenBalance(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->total:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", totalInDollars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->totalInDollars:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->info:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->priceRate:Lcom/iMe/storage/domain/model/wallet/PriceRate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
