.class final Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupListeners$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletNotificationsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupListeners$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$setupListeners$1$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;)Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->loadNotification(Z)V

    return-void
.end method
