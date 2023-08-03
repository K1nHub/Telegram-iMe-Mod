.class final Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->setupViewsContents()V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 907
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    .line 908
    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    sget-object v2, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$TooBad;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$TooBad;

    invoke-virtual {v1, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    .line 909
    invoke-static {v1, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->access$setFragmentToRemove$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 907
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
