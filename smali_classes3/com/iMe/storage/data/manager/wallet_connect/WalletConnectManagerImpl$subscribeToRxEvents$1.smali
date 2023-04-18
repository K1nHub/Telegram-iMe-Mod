.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToRxEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToRxEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToRxEvents$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 331
    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToRxEvents$1;->invoke(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V
    .locals 0

    .line 331
    iget-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToRxEvents$1;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$updateSessionsChain(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    return-void
.end method
