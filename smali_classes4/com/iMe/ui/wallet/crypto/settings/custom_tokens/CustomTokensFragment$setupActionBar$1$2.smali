.class public final Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 115
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->ADD_TOKEN:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensFragment;)Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->onAddClicked()V

    :cond_1
    :goto_0
    return-void
.end method
