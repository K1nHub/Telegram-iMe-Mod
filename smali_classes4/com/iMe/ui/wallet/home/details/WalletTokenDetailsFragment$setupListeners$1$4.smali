.class final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupListeners()V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$4;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 972
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$4;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$4;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    sget-object v0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;->newInstance(Landroid/app/Activity;)Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
