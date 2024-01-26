.class public Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenActionIntroScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeServicesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenActionIntroScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final screenType:I


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;I)V
    .locals 1

    .line 303
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openActionIntroScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 305
    iput p2, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenActionIntroScreenCommand;->screenType:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;)V
    .locals 1

    .line 310
    iget v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenActionIntroScreenCommand;->screenType:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openActionIntroScreen(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 299
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$OpenActionIntroScreenCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;)V

    return-void
.end method
