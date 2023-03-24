.class final Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAirdropDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->configureDialogState(ZZLcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$4$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$4$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$4$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->access$getFragment$p(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    sget-object v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    new-instance v1, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Import;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 105
    iget-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$4$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    invoke-virtual {p1}, Lcom/smedialink/ui/base/mvp/MvpAlertDialog;->finishScreen()V

    return-void
.end method
