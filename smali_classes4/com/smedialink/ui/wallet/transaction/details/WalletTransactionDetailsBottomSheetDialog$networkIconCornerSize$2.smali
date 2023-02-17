.class final Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTransactionDetailsBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;Lorg/fork/utils/Callbacks$Callback1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2;->this$0:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2;->this$0:Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$dimen;->icon_size_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2;->invoke()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
