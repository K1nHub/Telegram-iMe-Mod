.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->setupViewsContents()V
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
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 819
    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    sget-object v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$TooBad;->INSTANCE:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$TooBad;

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 820
    invoke-static {v1, v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$setFragmentToRemove$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    .line 821
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 818
    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
