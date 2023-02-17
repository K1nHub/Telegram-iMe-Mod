.class final Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$openCustomPriceDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BuyCryptoProductFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;->openCustomPriceDialog(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$openCustomPriceDialog$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$openCustomPriceDialog$1;->invoke(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
    .locals 1

    const-string v0, "currency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$openCustomPriceDialog$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;)Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->purchase(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    return-void
.end method
