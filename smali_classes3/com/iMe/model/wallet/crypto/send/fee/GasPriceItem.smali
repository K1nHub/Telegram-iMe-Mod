.class public final Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
.super Ljava/lang/Object;
.source "GasPriceItem.kt"

# interfaces
.implements Lcom/iMe/model/common/DialogChooseItem;


# instance fields
.field private final feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

.field private final info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

.field private final speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V
    .locals 1

    const-string v0, "speedLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 13
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    .line 14
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;ILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->copy(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    const-string v0, "speedLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    iget-object p1, p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFeeTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final getSpeedLevel()Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-object v0
.end method

.method public getTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_title:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->getTitle()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 21
    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 5

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_value:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getFee()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v3

    invoke-static {v2, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 29
    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 30
    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getFeeInDollars()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result v4

    invoke-static {v2, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 31
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->getShortName()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 26
    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GasPriceItem(speedLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->speedLevel:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feeTokenInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->info:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
