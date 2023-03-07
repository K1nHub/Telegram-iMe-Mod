.class public final Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;
.super Ljava/lang/Object;
.source "BinanceConvertQuote.kt"


# instance fields
.field private final inputAmount:D

.field private final inputToken:Ljava/lang/String;

.field private final inputTokenShortName:Ljava/lang/String;

.field private final outputAmount:D

.field private final outputToken:Ljava/lang/String;

.field private final outputTokenShortName:Ljava/lang/String;

.field private final quoteId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "quoteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTokenShortName"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputTokenShortName"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    .line 6
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    .line 8
    iput-object p7, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;
    .locals 10

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p10, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    goto :goto_3

    :cond_3
    move-wide v5, p5

    :goto_3
    and-int/lit8 v7, p10, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p10, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit8 v9, p10, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    move-object p1, v1

    move-wide p2, v2

    move-object p4, v4

    move-wide p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-virtual/range {p0 .. p9}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->copy(Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;
    .locals 11

    const-string v0, "quoteId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputTokenShortName"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputTokenShortName"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    move-object v1, v0

    move-wide v3, p2

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;-><init>(Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getInputAmount()D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    return-wide v0
.end method

.method public final getInputToken()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputTokenShortName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputAmount()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    return-wide v0
.end method

.method public final getOutputToken()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputTokenShortName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceConvertQuote(quoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->quoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", inputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", outputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputTokenShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->inputTokenShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputTokenShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;->outputTokenShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
