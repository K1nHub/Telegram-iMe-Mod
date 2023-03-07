.class final Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletLinkClickableManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->getUserIdAlertOptions(J)[Ljava/lang/String;
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
.field final synthetic $userId:J

.field final synthetic this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;


# direct methods
.method constructor <init>(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    iput-wide p2, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->$userId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/Unit;
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getViewState$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/manager/wallet/WalletLinkClickableView;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getClickableItem$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/model/wallet/transaction/ClickableItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/model/wallet/transaction/ClickableItem;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    iget-wide v3, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->$userId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 66
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getTelegramGateway$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    iget-wide v4, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->$userId:J

    invoke-interface {v0, v4, v5}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result v4

    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getClickableItem$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/model/wallet/transaction/ClickableItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/model/wallet/transaction/ClickableItem;->getRecipientAddress()Ljava/lang/String;

    move-result-object v5

    .line 67
    iget-object v0, p0, Lcom/smedialink/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$3;->this$0:Lcom/smedialink/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/smedialink/manager/wallet/WalletLinkClickableManager;->access$getClickableItem$p(Lcom/smedialink/manager/wallet/WalletLinkClickableManager;)Lcom/smedialink/model/wallet/transaction/ClickableItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/model/wallet/transaction/ClickableItem;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    .line 64
    invoke-interface/range {v1 .. v6}, Lcom/smedialink/manager/wallet/WalletLinkClickableView;->actionMakeTransfer(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;ZLjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object v0
.end method
