.class final Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProtocolsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;-><init>(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$binding$2;->this$0:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$binding$2;->this$0:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/BaseFragmentExtKt;->getLayoutInflater(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    move-result-object v0

    return-object v0
.end method
