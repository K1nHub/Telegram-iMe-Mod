.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field final synthetic $this_with:Lcom/trustwallet/walletconnect/WCClient;

.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 264
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {p0, v0, v1, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;->invoke(JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p3}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getType()Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 266
    iget-object p3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;->$this_with:Lcom/trustwallet/walletconnect/WCClient;

    const-string v0, "Method is unsupported"

    invoke-virtual {p3, p1, p2, v0}, Lcom/trustwallet/walletconnect/WCClient;->rejectRequest(JLjava/lang/String;)Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;->$sessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 267
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onEthSign(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    :goto_0
    return-void
.end method
