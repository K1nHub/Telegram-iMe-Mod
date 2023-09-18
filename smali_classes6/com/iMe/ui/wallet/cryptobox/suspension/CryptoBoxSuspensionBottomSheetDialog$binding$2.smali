.class final Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxSuspensionBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->access$getFragment$p(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    return-object v0
.end method
