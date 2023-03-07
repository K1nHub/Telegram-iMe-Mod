.class public final Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletSelectTokenFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;

    .line 83
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
