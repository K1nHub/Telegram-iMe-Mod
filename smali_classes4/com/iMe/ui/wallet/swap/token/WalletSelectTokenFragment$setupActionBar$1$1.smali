.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "WalletSelectTokenFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    .line 147
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method
