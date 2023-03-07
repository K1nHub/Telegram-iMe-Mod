.class public Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenBinanceReplenishScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field public final token:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 868
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openBinanceReplenishScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 870
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;->token:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 871
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;->token:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;->openBinanceReplenishScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 862
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V

    return-void
.end method
