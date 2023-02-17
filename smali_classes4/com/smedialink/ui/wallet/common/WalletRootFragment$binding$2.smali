.class final Lcom/smedialink/ui/wallet/common/WalletRootFragment$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletRootFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/common/WalletRootFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/common/WalletRootFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/common/WalletRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/common/WalletRootFragment$binding$2;->this$0:Lcom/smedialink/ui/wallet/common/WalletRootFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/common/WalletRootFragment$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/smedialink/ui/wallet/common/WalletRootFragment$binding$2;->this$0:Lcom/smedialink/ui/wallet/common/WalletRootFragment;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    return-object v0
.end method
