.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenSelectTokenScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenSelectTokenScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkId:Ljava/lang/String;

.field public final selectTokensScreenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;)V
    .locals 1

    .line 512
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openSelectTokenScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 514
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenSelectTokenScreenCommand;->selectTokensScreenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    .line 515
    iput-object p3, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenSelectTokenScreenCommand;->networkId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenSelectTokenScreenCommand;->selectTokensScreenType:Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenSelectTokenScreenCommand;->networkId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->openSelectTokenScreen(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 506
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OpenSelectTokenScreenCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
