.class public Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$OnSuccessEnterSeedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessEnterSeedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation


# instance fields
.field public final seed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;Ljava/lang/String;)V
    .locals 1

    .line 229
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSuccessEnterSeed"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 231
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$OnSuccessEnterSeedCommand;->seed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$OnSuccessEnterSeedCommand;->seed:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onSuccessEnterSeed(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 225
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$OnSuccessEnterSeedCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
