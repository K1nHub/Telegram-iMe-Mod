.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 307
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 309
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 310
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    .line 311
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 298
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V

    return-void
.end method