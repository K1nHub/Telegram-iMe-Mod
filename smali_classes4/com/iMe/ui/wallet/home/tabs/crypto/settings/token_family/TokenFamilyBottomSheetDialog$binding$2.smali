.class final Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TokenFamilyBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;-><init>(Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$binding$2;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->access$getFragment$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object v0

    return-object v0
.end method
