.class final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->connectToStoredSessions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,434:1\n1549#2:435\n1620#2,3:436\n*S KotlinDebug\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1\n*L\n87#1:435\n87#1:436,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 87
    invoke-static {v0, v2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$mapSessionStoreItem(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1;->this$0:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const-string v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$onErrorResult(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/model/Result$Error;)V

    :cond_1
    return-void
.end method
