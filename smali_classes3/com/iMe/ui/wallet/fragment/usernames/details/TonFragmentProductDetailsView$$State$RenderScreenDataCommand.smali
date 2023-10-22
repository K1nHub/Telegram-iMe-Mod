.class public Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "TonFragmentProductDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderScreenDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final priceText:Ljava/lang/String;

.field public final titleText:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 153
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderScreenData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 155
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;->titleText:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;->username:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;->priceText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;->titleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;->priceText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;->renderScreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 145
    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView$$State$RenderScreenDataCommand;->apply(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;)V

    return-void
.end method
