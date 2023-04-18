.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field final synthetic $this_with:Lcom/trustwallet/walletconnect/WCClient;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 294
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->invoke(JI)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(JI)V
    .locals 4

    .line 295
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain;->Companion:Lcom/iMe/storage/domain/model/crypto/Chain$Companion;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/Chain$Companion;->getChainById(J)Lcom/iMe/storage/domain/model/crypto/Chain;

    move-result-object p3

    .line 296
    instance-of p3, p3, Lcom/iMe/storage/domain/model/crypto/Chain$Unknown;

    if-eqz p3, :cond_0

    .line 297
    iget-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-virtual {p3}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onWalletChangeUnsupportedNetwork()V

    .line 298
    iget-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/trustwallet/walletconnect/WCClient;->rejectRequest(JLjava/lang/String;)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-virtual {p3}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object p3

    .line 303
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 304
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v3, v1, v2}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->fromChainId(J)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    .line 301
    invoke-interface {p3, p1, p2, v0, v1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onWalletChangeNetwork(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    :goto_0
    return-void
.end method
