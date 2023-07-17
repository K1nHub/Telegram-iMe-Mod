.class public final Lcom/iMe/model/wallet/home/AccountItem$Token;
.super Lcom/iMe/model/wallet/home/AccountItem;
.source "AccountItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/AccountItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# instance fields
.field private balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private final isBalanceHidden:Z

.field private final isQuotationVisible:Z


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;ZZ)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/iMe/model/wallet/home/AccountItem;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    iput-object p1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 17
    iput-boolean p2, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    .line 18
    iput-boolean p3, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/AccountItem$Token;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;ZZILjava/lang/Object;)Lcom/iMe/model/wallet/home/AccountItem$Token;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/home/AccountItem$Token;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;ZZ)Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;ZZ)Lcom/iMe/model/wallet/home/AccountItem$Token;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/home/AccountItem$Token;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/AccountItem$Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    iget-boolean v3, p1, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    iget-boolean p1, p1, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isBalanceHidden()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    return v0
.end method

.method public final isQuotationVisible()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    return v0
.end method

.method public setBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token(balance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isQuotationVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isQuotationVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBalanceHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/AccountItem$Token;->isBalanceHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
