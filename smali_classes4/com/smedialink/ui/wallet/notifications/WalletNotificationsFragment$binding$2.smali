.class final Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletNotificationsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment$binding$2;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment$binding$2;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsFragment;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletNotificationsBinding;

    move-result-object v0

    return-object v0
.end method
