.class public final synthetic Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    iput-object p3, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->$r8$lambda$3qnb2RFEOOfeXxDUIa5UO8wjieU(Ljava/util/List;Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
