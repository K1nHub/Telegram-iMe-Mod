.class public Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeServicesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstScreenInitWithItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dashboardUiItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 155
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "firstScreenInitWithItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 157
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;->dashboardUiItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;->dashboardUiItems:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;->firstScreenInitWithItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 151
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;)V

    return-void
.end method
