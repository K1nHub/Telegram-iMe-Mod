.class final Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeServicesFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$binding$2;->this$0:Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$binding$2;->this$0:Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeServicesBinding;

    move-result-object v0

    return-object v0
.end method
