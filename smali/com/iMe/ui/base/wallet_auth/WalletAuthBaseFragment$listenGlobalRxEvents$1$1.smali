.class final Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAuthBaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->listenGlobalRxEvents()V
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
.field final synthetic this$0:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$1$1;->this$0:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment$listenGlobalRxEvents$1$1;->this$0:Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method