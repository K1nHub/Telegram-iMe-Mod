.class public final Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;
.super Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;
.source "WalletTransactionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingOperationsTab"
.end annotation


# instance fields
.field private final operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/staking/StakingOperationType;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 258
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    iget-object p1, p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOperationsType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingOperationsTab(operationsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method