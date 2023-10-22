.class public final Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletSwapProtocolsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    .line 112
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
