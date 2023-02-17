.class final Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BuyCryptoProductFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;->showErrorPurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/widget/TextView;",
        "Lorg/telegram/ui/ActionBar/AlertDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1;->$orderId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1;->invoke(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1;->$orderId:Ljava/lang/String;

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1$1;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$showErrorPurchase$1$1;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1, v0, v1}, Lcom/smedialink/utils/dialogs/DialogExtKt;->makeClickableDescription(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/widget/TextView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
