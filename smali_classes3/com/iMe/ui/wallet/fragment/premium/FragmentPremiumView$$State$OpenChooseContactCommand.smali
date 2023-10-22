.class public Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$OpenChooseContactCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "FragmentPremiumView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenChooseContactCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;",
        ">;"
    }
.end annotation


# instance fields
.field public final args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Landroid/os/Bundle;)V
    .locals 1

    .line 290
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openChooseContact"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 292
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$OpenChooseContactCommand;->args:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$OpenChooseContactCommand;->args:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->openChooseContact(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 286
    check-cast p1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$OpenChooseContactCommand;->apply(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;)V

    return-void
.end method
