.class public final Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;
.super Lcom/iMe/model/wallet/crypto/create/WalletCreationType;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/create/WalletCreationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activate"
.end annotation


# instance fields
.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 3

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_create:I

    .line 51
    sget v1, Lorg/telegram/messenger/R$string;->wallet_dashboard_activate_wallet:I

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method


# virtual methods
.method public getActionText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getButtonTextResId()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->getTitleResId()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 55
    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object v0
.end method
