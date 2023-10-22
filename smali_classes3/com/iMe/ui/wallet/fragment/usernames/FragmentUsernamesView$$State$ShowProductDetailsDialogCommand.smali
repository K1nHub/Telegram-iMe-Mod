.class public Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowProductDetailsDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "FragmentUsernamesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowProductDetailsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final productItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V
    .locals 1

    .line 274
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showProductDetailsDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 276
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowProductDetailsDialogCommand;->productItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowProductDetailsDialogCommand;->productItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showProductDetailsDialog(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 270
    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView$$State$ShowProductDetailsDialogCommand;->apply(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;)V

    return-void
.end method
