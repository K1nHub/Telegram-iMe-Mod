.class public Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State$OnLoadMoreCompleteCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CustomTokensView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadMoreCompleteCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State;)V
    .locals 1

    .line 360
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onLoadMoreComplete"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;)V
    .locals 0

    .line 365
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 358
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State$OnLoadMoreCompleteCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;)V

    return-void
.end method
