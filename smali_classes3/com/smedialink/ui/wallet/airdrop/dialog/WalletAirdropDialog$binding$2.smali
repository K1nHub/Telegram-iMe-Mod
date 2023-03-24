.class final Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAirdropDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$binding$2;->this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog$binding$2;->this$0:Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;

    move-result-object v0

    const-string v1, "inflate(LayoutInflater.from(context))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
