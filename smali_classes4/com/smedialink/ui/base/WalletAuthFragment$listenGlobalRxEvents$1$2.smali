.class final Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAuthFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/base/WalletAuthFragment;->listenGlobalRxEvents()V
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
.field final synthetic this$0:Lcom/smedialink/ui/base/WalletAuthFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/base/WalletAuthFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$1$2;->this$0:Lcom/smedialink/ui/base/WalletAuthFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/base/WalletAuthFragment$listenGlobalRxEvents$1$2;->this$0:Lcom/smedialink/ui/base/WalletAuthFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method
