.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveRequest(Ljava/lang/String;JLjava/lang/Object;)V
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
.field final synthetic $requestId:J

.field final synthetic $result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $sessionKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;",
            "Ljava/lang/String;",
            "JTT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->$sessionKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->$requestId:J

    iput-object p5, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->$result:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWcClients$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->$sessionKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/WCClient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->$requestId:J

    iget-object v3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;->$result:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->approveRequest(JLjava/lang/Object;)Z

    :goto_0
    return-void
.end method
