.class public interface abstract Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;
.super Ljava/lang/Object;
.source "CryptoAccessManager.kt"


# virtual methods
.method public abstract deleteAllWallets()V
.end method

.method public abstract deleteWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
.end method

.method public abstract getAllWallets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCreatedWalletsBlockchains()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;
.end method

.method public abstract getFirstBip39PhraseBasedBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;
.end method

.method public abstract getLastLoggedInAddress(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;
.end method

.method public abstract getLastLoggedInGuid()Ljava/lang/String;
.end method

.method public abstract getTRONWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$TRON;
.end method

.method public abstract getUnactivatedBip39PhraseBasedBlockchainTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;
.end method

.method public abstract getWalletPassword()Ljava/lang/String;
.end method

.method public abstract isAnyBip39PhraseBasedWalletCreated()Z
.end method

.method public abstract isAnyWalletCreated()Z
.end method

.method public abstract isAuthorized(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z
.end method

.method public abstract isCurrentBlockchainWalletCreated()Z
.end method

.method public abstract isWalletCreated(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z
.end method

.method public abstract logoutAllWallets()V
.end method

.method public abstract onUserChanged()V
.end method

.method public abstract setWallet(Lcom/smedialink/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
.end method
