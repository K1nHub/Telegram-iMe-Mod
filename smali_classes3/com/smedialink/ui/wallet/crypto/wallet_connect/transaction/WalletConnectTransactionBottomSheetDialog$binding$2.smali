.class final Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectTransactionBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;-><init>(Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$binding$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$binding$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;->access$getFragment$p(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;

    move-result-object v0

    return-object v0
.end method
