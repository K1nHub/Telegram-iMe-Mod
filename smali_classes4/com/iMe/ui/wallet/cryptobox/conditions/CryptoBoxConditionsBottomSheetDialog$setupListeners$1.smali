.class final Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupListeners$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxConditionsBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupListeners$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 279
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupListeners$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupListeners$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->access$getPresenter(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->onActionClick()V

    return-void
.end method
