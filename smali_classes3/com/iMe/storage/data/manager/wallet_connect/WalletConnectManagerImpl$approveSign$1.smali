.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveSign(Ljava/lang/String;JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

.field final synthetic $requestId:J

.field final synthetic $sessionKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$sessionKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$requestId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getCryptoAccessManager$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWallet(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getHdWallet()Lwallet/core/jni/HDWallet;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lwallet/core/jni/CoinType;->ETHEREUM:Lwallet/core/jni/CoinType;

    invoke-static {v0, v1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->getPrivateKey(Lwallet/core/jni/HDWallet;Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getType()Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwallet/core/jni/EthereumMessageSigner;->signTypedMessage(Lwallet/core/jni/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwallet/core/jni/EthereumMessageSigner;->signMessage(Lwallet/core/jni/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iget-object v2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$sessionKey:Ljava/lang/String;

    iget-wide v3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$requestId:J

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveRequest(Ljava/lang/String;JLjava/lang/Object;)V

    nop

    :cond_3
    :goto_1
    return-void
.end method
