.class public final Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "TokenManagementFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;

    .line 246
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 249
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 250
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment;)Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->startChooseNetworkDialog()V

    :cond_1
    :goto_0
    return-void
.end method
