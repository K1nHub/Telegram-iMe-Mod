.class public final Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;
.super Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;
.source "WalletTransactionDetailsScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoBoxActionDetails"
.end annotation


# instance fields
.field private final item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

.field private final network:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    .line 16
    iput-object p2, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;ILjava/lang/Object;)Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->copy(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final copy(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;-><init>(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    iget-object v3, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object p1, p1, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getItem()Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    return-object v0
.end method

.method public final getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxActionDetails(item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$CryptoBoxActionDetails;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
