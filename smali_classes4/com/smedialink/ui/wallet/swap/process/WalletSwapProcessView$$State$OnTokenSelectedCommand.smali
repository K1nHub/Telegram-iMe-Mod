.class public Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTokenSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final maxInputDigits:I

.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field public final side:Lcom/smedialink/model/wallet/swap/SwapSide;

.field public final token:Lcom/smedialink/model/wallet/select/SelectableToken;

.field public final tokenDecimal:I


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 392
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onTokenSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 394
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->side:Lcom/smedialink/model/wallet/swap/SwapSide;

    .line 395
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 396
    iput p4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->maxInputDigits:I

    .line 397
    iput p5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->tokenDecimal:I

    .line 398
    iput-object p6, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 6

    .line 403
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->side:Lcom/smedialink/model/wallet/swap/SwapSide;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    iget v3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->maxInputDigits:I

    iget v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->tokenDecimal:I

    iget-object v5, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 379
    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$OnTokenSelectedCommand;->apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
