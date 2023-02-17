.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->setupViewsContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 830
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 831
    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "parentActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2$1;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {v3, v4}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupViewsContents$1$2$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/smedialink/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog$Companion;->newInstance(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)Lcom/smedialink/ui/wallet/crypto/create/secret_words_count/SecretWordsCountBottomSheetDialog;

    move-result-object v1

    .line 830
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
