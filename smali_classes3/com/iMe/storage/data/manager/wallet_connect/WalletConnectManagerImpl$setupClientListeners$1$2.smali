.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field final synthetic $this_with:Lcom/trustwallet/walletconnect/WCClient;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 254
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    .line 257
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v3

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/trustwallet/walletconnect/WCClient;->connect(Lcom/trustwallet/walletconnect/models/session/WCSession;Lcom/trustwallet/walletconnect/models/WCPeerMeta;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getErrorsSubject$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
