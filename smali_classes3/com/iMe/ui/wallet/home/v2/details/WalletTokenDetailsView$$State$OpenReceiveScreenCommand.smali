.class public Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenReceiveScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 865
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openReceiveScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 867
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 868
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;->address:Ljava/lang/String;

    .line 869
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;)V
    .locals 3

    .line 874
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;->code:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openReceiveScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 857
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenReceiveScreenCommand;->apply(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;)V

    return-void
.end method
