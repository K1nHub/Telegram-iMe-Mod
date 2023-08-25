.class public final Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;
.super Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;
.source "WalletTransactionsScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingDetailsTab"
.end annotation


# instance fields
.field private final operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

.field private final stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;


# direct methods
.method public constructor <init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/staking/StakingOperationType;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput-object p1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 18
    iput-object p2, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/staking/StakingOperationType;ILjava/lang/Object;)Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->copy(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/staking/StakingOperationType;)Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/staking/StakingOperationType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public final copy(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/staking/StakingOperationType;)Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;-><init>(Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/staking/StakingOperationType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    iget-object p1, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getOperationsType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    return-object v0
.end method

.method public final getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingDetailsTab(stakingDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", operationsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionsScreenType$StakingDetailsTab;->operationsType:Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
