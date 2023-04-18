.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTokenSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final maxInputDigits:I

.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public final side:Lcom/iMe/model/wallet/swap/SwapSide;

.field public final token:Lcom/iMe/model/wallet/select/SelectableToken;

.field public final tokenDecimal:I


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/model/wallet/select/SelectableToken;IILcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 410
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onTokenSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 412
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->side:Lcom/iMe/model/wallet/swap/SwapSide;

    .line 413
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->token:Lcom/iMe/model/wallet/select/SelectableToken;

    .line 414
    iput p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->maxInputDigits:I

    .line 415
    iput p5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->tokenDecimal:I

    .line 416
    iput-object p6, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 6

    .line 421
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->side:Lcom/iMe/model/wallet/swap/SwapSide;

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->token:Lcom/iMe/model/wallet/select/SelectableToken;

    iget v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->maxInputDigits:I

    iget v4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->tokenDecimal:I

    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/model/wallet/select/SelectableToken;IILcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 397
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
