.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createQRButton()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;
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
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 665
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createQRButton$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 667
    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getQrCodeBottomSheet(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    .line 669
    sget v1, Lorg/telegram/messenger/R$string;->wallet_backup_secret_words_qr_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 670
    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v3, "Close"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeBackup(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 666
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
