.class public Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$RenderDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TokenFamilyView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;",
        ">;"
    }
.end annotation


# instance fields
.field public final foundTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 169
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 171
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$RenderDataCommand;->foundTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$RenderDataCommand;->foundTokens:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;->renderData(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 165
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView$$State$RenderDataCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;)V

    return-void
.end method
