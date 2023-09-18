.class public final synthetic Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;->resetAllWallets()V

    return-void
.end method
