.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnect(Ljava/lang/String;)V
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
.field final synthetic $sessionKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;->$sessionKey:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWcClients$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;->$sessionKey:Ljava/lang/String;

    .line 198
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/WCClient;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/WCClient;->killSession()Z

    .line 199
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
