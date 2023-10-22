.class public final Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;
.super Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;
.source "BlockchainManagementItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddWallet"
.end annotation


# instance fields
.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 4

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_add:I

    .line 36
    sget v1, Lorg/telegram/messenger/R$string;->wallet_blockchain_add_wallet:I

    .line 37
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;Lcom/iMe/storage/domain/model/crypto/BlockchainType;ILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->copy(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;
    .locals 1

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    invoke-direct {v0, p1}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    iget-object p1, p1, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method

.method public getText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->getTexResId()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->getTitleResId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 40
    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddWallet(blockchainType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton$AddWallet;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
