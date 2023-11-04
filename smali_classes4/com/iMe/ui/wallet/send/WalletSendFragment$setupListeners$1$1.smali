.class final Lcom/iMe/ui/wallet/send/WalletSendFragment$setupListeners$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSendFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendFragment;->setupListeners()V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 640
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupListeners$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->access$getPresenter(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->startChooseNetworkDialog()V

    return-void
.end method
