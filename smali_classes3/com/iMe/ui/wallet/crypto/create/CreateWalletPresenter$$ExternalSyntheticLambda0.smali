.class public final synthetic Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->updateLoadingState(Z)V

    return-void
.end method
