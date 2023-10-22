.class final Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTransactionsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->setupListeners()V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$setupListeners$2$1$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
