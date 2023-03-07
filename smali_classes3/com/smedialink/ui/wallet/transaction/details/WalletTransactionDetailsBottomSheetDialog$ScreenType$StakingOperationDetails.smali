.class public final Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;
.super Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;
.source "WalletTransactionDetailsBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingOperationDetails"
.end annotation


# instance fields
.field private final item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/wallet/transaction/StakingOperationItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 305
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 303
    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    .line 304
    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    iget-object v3, p1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object p1, p1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getItem()Lcom/smedialink/model/wallet/transaction/StakingOperationItem;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    return-object v0
.end method

.method public final getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transaction/StakingOperationItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingOperationDetails(item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->item:Lcom/smedialink/model/wallet/transaction/StakingOperationItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
