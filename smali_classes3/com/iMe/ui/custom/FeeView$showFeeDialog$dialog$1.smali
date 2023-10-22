.class final Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FeeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/FeeView;->showFeeDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $availableFees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSelectedFee:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/ui/custom/FeeView;


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/iMe/ui/custom/FeeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/ui/custom/FeeView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;->$availableFees:Ljava/util/List;

    iput-object p2, p0, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;->$onSelectedFee:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;->this$0:Lcom/iMe/ui/custom/FeeView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;->$availableFees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 130
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;->$onSelectedFee:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;->this$0:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v0, p1}, Lcom/iMe/ui/custom/FeeView;->access$displayFee(Lcom/iMe/ui/custom/FeeView;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method
