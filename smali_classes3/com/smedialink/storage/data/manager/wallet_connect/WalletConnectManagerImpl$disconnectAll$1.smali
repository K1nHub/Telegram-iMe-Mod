.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnectAll()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,432:1\n1849#2,2:433\n*S KotlinDebug\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1\n*L\n207#1:433,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getWcClients$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trustwallet/walletconnect/WCClient;

    .line 207
    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/WCClient;->killSession()Z

    goto :goto_0

    :cond_0
    return-void
.end method
