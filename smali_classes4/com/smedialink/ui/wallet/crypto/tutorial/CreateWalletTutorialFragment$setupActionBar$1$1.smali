.class public final Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CreateWalletTutorialFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    .line 108
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$handleBackPressed(Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V

    :cond_0
    return-void
.end method
