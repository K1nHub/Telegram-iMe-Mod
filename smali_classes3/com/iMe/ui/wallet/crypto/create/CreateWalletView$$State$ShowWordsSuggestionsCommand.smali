.class public Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowWordsSuggestionsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowWordsSuggestionsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation


# instance fields
.field public final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showWordsSuggestions"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 201
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowWordsSuggestionsCommand;->words:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowWordsSuggestionsCommand;->words:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->showWordsSuggestions(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowWordsSuggestionsCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
