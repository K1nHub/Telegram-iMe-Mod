.class public Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$RenderItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSelectTokenView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;)V"
        }
    .end annotation

    .line 281
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 283
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$RenderItemsCommand;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$RenderItemsCommand;->tokens:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 277
    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView$$State$RenderItemsCommand;->apply(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;)V

    return-void
.end method
