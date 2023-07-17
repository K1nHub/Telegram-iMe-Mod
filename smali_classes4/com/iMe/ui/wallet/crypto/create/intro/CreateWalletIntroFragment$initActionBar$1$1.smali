.class public final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$initActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CreateWalletIntroFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->initActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$initActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    .line 166
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 169
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$initActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 170
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->INFO:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$initActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->access$openTutorialScreen(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
