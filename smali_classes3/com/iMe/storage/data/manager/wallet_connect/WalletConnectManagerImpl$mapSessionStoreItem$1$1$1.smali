.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->mapSessionStoreItem(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
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
.field final synthetic $it:Lcom/trustwallet/walletconnect/WCClient;

.field final synthetic $this_with:Lcom/trustwallet/walletconnect/WCSessionStoreItem;


# direct methods
.method constructor <init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->$it:Lcom/trustwallet/walletconnect/WCClient;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->$this_with:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->$it:Lcom/trustwallet/walletconnect/WCClient;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->$this_with:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->$this_with:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->$this_with:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {v3}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;->$this_with:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {v4}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/trustwallet/walletconnect/WCClient;->connect(Lcom/trustwallet/walletconnect/models/session/WCSession;Lcom/trustwallet/walletconnect/models/WCPeerMeta;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
