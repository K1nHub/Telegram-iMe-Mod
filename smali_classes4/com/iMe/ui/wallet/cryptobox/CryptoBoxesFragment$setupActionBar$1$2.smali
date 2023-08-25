.class public final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CryptoBoxesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    .line 221
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 224
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 225
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;->access$getPresenter(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesFragment;)Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->onSelectNetworkClick()V

    :cond_1
    :goto_0
    return-void
.end method
