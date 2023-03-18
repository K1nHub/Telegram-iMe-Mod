.class final Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletLinkClickableManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->setupClickableLink()V
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
.field final synthetic $clickableText:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;


# direct methods
.method constructor <init>(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    iput-object p2, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;->$clickableText:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getViewState$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/manager/wallet/WalletLinkClickableView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    iget-object v2, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;->$clickableText:Ljava/lang/String;

    invoke-static {v1}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getClickableItem$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/model/wallet/transaction/ClickableItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/smedialink/model/wallet/transaction/ClickableItem;->getLinkedTextType()Lcom/smedialink/model/wallet/transaction/LinkedTextType;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getAlertOptionsByType(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;Ljava/lang/String;Lcom/smedialink/model/wallet/transaction/LinkedTextType;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1$1;

    iget-object v3, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-direct {v2, v3}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$setupClickableLink$1$1;-><init>(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)V

    invoke-interface {v0, v1, v2}, Lcom/smedialink/manager/wallet/WalletLinkClickableView;->showClickableTextDialog([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method
