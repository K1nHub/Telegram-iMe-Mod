.class public Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State$OpenTokenManagementScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CustomTokensView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenTokenManagementScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;",
        ">;"
    }
.end annotation


# instance fields
.field public final screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State;Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;)V
    .locals 1

    .line 231
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openTokenManagementScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 233
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State$OpenTokenManagementScreenCommand;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State$OpenTokenManagementScreenCommand;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;->openTokenManagementScreen(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 227
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView$$State$OpenTokenManagementScreenCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;)V

    return-void
.end method
