.class final Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$1$1;
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

    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$1$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$configureDialogState$1$1$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;->access$getPresenter(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->acceptAirdrop()V

    return-void
.end method
