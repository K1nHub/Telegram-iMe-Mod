.class public Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnTokenSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSelectTokenView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTokenSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;",
        ">;"
    }
.end annotation


# instance fields
.field public final rate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

.field public final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 1

    .line 298
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "onTokenSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 300
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnTokenSelectedCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 301
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnTokenSelectedCommand;->rate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnTokenSelectedCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnTokenSelectedCommand;->rate:Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;->onTokenSelected(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 292
    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$OnTokenSelectedCommand;->apply(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;)V

    return-void
.end method
