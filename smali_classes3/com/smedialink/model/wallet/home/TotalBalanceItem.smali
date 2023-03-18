.class public final Lcom/smedialink/model/wallet/home/TotalBalanceItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "TotalBalanceItem.kt"


# instance fields
.field private balance:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 8
    iput p1, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/home/TotalBalanceItem;FILjava/lang/Object;)Lcom/smedialink/model/wallet/home/TotalBalanceItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->copy(F)Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    return v0
.end method

.method public final copy(F)Lcom/smedialink/model/wallet/home/TotalBalanceItem;
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    invoke-direct {v0, p1}, Lcom/smedialink/model/wallet/home/TotalBalanceItem;-><init>(F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;

    iget v1, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    iget p1, p1, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBalance()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    return v0
.end method

.method public final getFormattedBalance(Z)Ljava/lang/String;
    .locals 3

    .line 16
    iget v0, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result v2

    .line 18
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getShortName()I

    move-result v1

    .line 14
    invoke-static {p1, v0, v2, v1}, Lcom/smedialink/utils/formatter/MaskFormatter;->formatBalanceOrMask(ZLjava/lang/Number;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public final setBalance(F)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TotalBalanceItem(balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/wallet/home/TotalBalanceItem;->balance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
