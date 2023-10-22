.class public final Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "CustomTokensFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;->$this_apply:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    .line 96
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;->$this_apply:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v1, Lcom/iMe/common/IdFabric$Menu;->ADD_TOKEN:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "getItem(IdFabric.Menu.ADD_TOKEN)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;->$this_apply:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v1, Lcom/iMe/common/IdFabric$Menu;->ADD_TOKEN:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "getItem(IdFabric.Menu.ADD_TOKEN)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method
