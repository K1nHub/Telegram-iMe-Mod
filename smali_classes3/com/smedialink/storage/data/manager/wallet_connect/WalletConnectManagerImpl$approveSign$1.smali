.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveSign(Ljava/lang/String;JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    iput-object p3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$sessionKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$requestId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getCryptoAccessManager$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Lcom/smedialink/storage/data/utils/crypto/CryptoEVMUtils;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoEVMUtils;

    .line 173
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWallet(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getData()Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getType()Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    move-result-object v3

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Lcom/smedialink/storage/data/utils/crypto/CryptoEVMUtils;->signMessage(Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iget-object v2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$sessionKey:Ljava/lang/String;

    iget-wide v3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;->$requestId:J

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveRequest(Ljava/lang/String;JLjava/lang/Object;)V

    :cond_1
    return-void
.end method
