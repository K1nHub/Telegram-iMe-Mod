.class public final Lcom/iMe/model/wallet/home/TotalBalanceItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "TotalBalanceItem.kt"


# instance fields
.field private final balanceText:Ljava/lang/String;

.field private final isBalanceHidden:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 2

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 19
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    .line 20
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {p2, p1, v1, v0}, Lcom/iMe/utils/formatter/MaskFormatter;->formatBalanceOrMask(ZLjava/lang/Number;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "balanceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/TotalBalanceItem;Ljava/lang/String;ZILjava/lang/Object;)Lcom/iMe/model/wallet/home/TotalBalanceItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;->copy(Ljava/lang/String;Z)Lcom/iMe/model/wallet/home/TotalBalanceItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/iMe/model/wallet/home/TotalBalanceItem;
    .locals 1

    const-string v0, "balanceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    iget-boolean p1, p1, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBalanceText()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isBalanceHidden()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TotalBalanceItem(balanceText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->balanceText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBalanceHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/TotalBalanceItem;->isBalanceHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
