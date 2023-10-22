.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowMinMaxInputValuesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final information:Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

.field public final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V
    .locals 1

    .line 795
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showMinMaxInputValues"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 797
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 798
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;->information:Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;->information:Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showMinMaxInputValues(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 789
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
