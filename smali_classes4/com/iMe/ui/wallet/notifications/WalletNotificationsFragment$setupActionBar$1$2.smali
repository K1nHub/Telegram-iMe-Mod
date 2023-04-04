.class public final Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletNotificationsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->access$getNotificationAdapter(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->markAllNotificationAsRead(Ljava/util/List;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_0
    return-void
.end method
