.class public Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderTimeLeftCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TonFragmentProductDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderTimeLeftCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final timeLeftText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State;Ljava/lang/String;)V
    .locals 1

    .line 170
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderTimeLeft"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 172
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderTimeLeftCommand;->timeLeftText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderTimeLeftCommand;->timeLeftText:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;->renderTimeLeft(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 166
    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderTimeLeftCommand;->apply(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;)V

    return-void
.end method
