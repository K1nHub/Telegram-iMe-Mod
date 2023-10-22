.class final Lcom/iMe/ui/wallet/send/WalletSendFragment$clipboardManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSendFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendFragment;-><init>(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/ClipboardManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$clipboardManager$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/ClipboardManager;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$clipboardManager$2;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/send/WalletSendFragment$clipboardManager$2;->invoke()Landroid/content/ClipboardManager;

    move-result-object v0

    return-object v0
.end method
