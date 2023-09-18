.class final Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletLinkClickableManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/wallet/WalletLinkClickableManager;->getUserIdAlertOptions(J)[Ljava/lang/String;
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

.field final synthetic this$0:Lcom/iMe/manager/wallet/WalletLinkClickableManager;


# direct methods
.method constructor <init>(Lcom/iMe/manager/wallet/WalletLinkClickableManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;->this$0:Lcom/iMe/manager/wallet/WalletLinkClickableManager;

    iput-wide p2, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;->$userId:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;->invoke()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/Unit;
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;->this$0:Lcom/iMe/manager/wallet/WalletLinkClickableManager;

    invoke-static {v0}, Lcom/iMe/manager/wallet/WalletLinkClickableManager;->access$getViewState$p(Lcom/iMe/manager/wallet/WalletLinkClickableManager;)Lcom/iMe/manager/wallet/WalletLinkClickableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-wide v1, p0, Lcom/iMe/manager/wallet/WalletLinkClickableManager$getUserIdAlertOptions$1;->$userId:J

    .line 67
    invoke-interface {v0, v1, v2}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->actionOpenProfileScreen(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
