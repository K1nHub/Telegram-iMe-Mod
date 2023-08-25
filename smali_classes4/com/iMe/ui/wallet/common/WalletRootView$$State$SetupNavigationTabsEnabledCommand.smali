.class public Lcom/iMe/ui/wallet/common/WalletRootView$$State$SetupNavigationTabsEnabledCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/common/WalletRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupNavigationTabsEnabledCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/common/WalletRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public final availableTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/common/WalletRootView$$State;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 199
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupNavigationTabsEnabled"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 201
    iput-object p2, p0, Lcom/iMe/ui/wallet/common/WalletRootView$$State$SetupNavigationTabsEnabledCommand;->availableTabs:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/common/WalletRootView;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootView$$State$SetupNavigationTabsEnabledCommand;->availableTabs:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/common/WalletRootView;->setupNavigationTabsEnabled(Ljava/util/HashMap;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/iMe/ui/wallet/common/WalletRootView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/common/WalletRootView$$State$SetupNavigationTabsEnabledCommand;->apply(Lcom/iMe/ui/wallet/common/WalletRootView;)V

    return-void
.end method
