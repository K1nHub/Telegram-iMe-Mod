.class final Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletLinkClickableManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->getAddressAlertOptions(Ljava/lang/String;)[Ljava/lang/String;
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
.field final synthetic this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;


# direct methods
.method constructor <init>(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/Unit;
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getViewState$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/manager/wallet/WalletLinkClickableView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getClickableItem$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/model/wallet/transaction/ClickableItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/model/wallet/transaction/ClickableItem;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getClickableItem$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/model/wallet/transaction/ClickableItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/model/wallet/transaction/ClickableItem;->getRecipientAddress()Ljava/lang/String;

    move-result-object v5

    .line 82
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getAddressAlertOptions$2;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getClickableItem$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/model/wallet/transaction/ClickableItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/model/wallet/transaction/ClickableItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    const-string v3, ""

    .line 79
    invoke-interface/range {v1 .. v6}, Lcom/smedialink/manager/wallet/WalletLinkClickableView;->actionMakeTransfer(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;ZLjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
