.class final Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->onSessionItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;->$sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;)Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$onSessionItemClick$1;->$sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->disconnect(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V

    return-void
.end method
