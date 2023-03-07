.class public Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupSessionsItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupSessionsItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
            ">;)V"
        }
    .end annotation

    .line 153
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupSessionsItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 155
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupSessionsItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupSessionsItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;->setupSessionsItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 149
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupSessionsItemsCommand;->apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;)V

    return-void
.end method
