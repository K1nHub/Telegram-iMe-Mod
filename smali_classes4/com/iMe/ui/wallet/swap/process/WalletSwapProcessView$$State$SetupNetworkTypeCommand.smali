.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupNetworkTypeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public final side:Lcom/iMe/model/wallet/swap/SwapSide;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    .line 443
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupNetworkType"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 445
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 446
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;->side:Lcom/iMe/model/wallet/swap/SwapSide;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;->side:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 437
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$SetupNetworkTypeCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
