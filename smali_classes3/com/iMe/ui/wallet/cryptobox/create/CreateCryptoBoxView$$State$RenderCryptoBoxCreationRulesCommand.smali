.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderCryptoBoxCreationRulesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isInfoClickable:Z

.field public final item:Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V
    .locals 1

    .line 524
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderCryptoBoxCreationRules"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 526
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;->item:Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;

    .line 527
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;->isInfoClickable:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;->item:Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;->isInfoClickable:Z

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;->renderCryptoBoxCreationRules(Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 518
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
