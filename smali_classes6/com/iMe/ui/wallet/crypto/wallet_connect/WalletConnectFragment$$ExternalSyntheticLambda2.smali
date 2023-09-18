.class public final synthetic Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->disconnectAll()V

    return-void
.end method
