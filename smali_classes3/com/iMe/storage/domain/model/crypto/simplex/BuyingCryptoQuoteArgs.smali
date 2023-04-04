.class public final Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;
.super Ljava/lang/Object;
.source "BuyingCryptoQuoteArgs.kt"


# instance fields
.field private final amount:F

.field private final digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

.field private final fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

.field private final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FLcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "digitalCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    .line 9
    iput p4, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    .line 10
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FLcom/iMe/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->copy(Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FLcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-object v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    return v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FLcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;
    .locals 7

    const-string v0, "digitalCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FLcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAmount()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    return v0
.end method

.method public final getDigitalCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-object v0
.end method

.method public final getFiatCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-object v0
.end method

.method public final getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getRequestedCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuyingCryptoQuoteArgs(digitalCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->digitalCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fiatCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->fiatCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestedCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->requestedCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->amount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
