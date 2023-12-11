.class public Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "FragmentPremiumView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderButtonCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;",
        ">;"
    }
.end annotation


# instance fields
.field public final buttonText:Ljava/lang/String;

.field public final isEnabled:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State;Ljava/lang/String;Z)V
    .locals 1

    .line 322
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderButton"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 324
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;->buttonText:Ljava/lang/String;

    .line 325
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;->buttonText:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;->isEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderButton(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 316
    check-cast p1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView$$State$RenderButtonCommand;->apply(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;)V

    return-void
.end method
