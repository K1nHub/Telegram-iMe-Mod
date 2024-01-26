.class final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$setupListeners$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeCryptoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->setupListeners()V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$setupListeners$1$3;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$setupListeners$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 318
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$setupListeners$1$3;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;)Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->loadScreenInfo$default(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;ZZILjava/lang/Object;)V

    return-void
.end method
