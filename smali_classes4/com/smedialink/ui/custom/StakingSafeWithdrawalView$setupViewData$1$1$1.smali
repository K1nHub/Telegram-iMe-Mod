.class final Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingSafeWithdrawalView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->setupViewData(ZLorg/fork/utils/Callbacks$Callback1;Lorg/fork/utils/Callbacks$Callback;)V
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
.field final synthetic $onCheckedAction:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_with:Lorg/telegram/ui/Components/CheckBoxSquare;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/CheckBoxSquare;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Components/CheckBoxSquare;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;->$this_with:Lorg/telegram/ui/Components/CheckBoxSquare;

    iput-object p2, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;->$onCheckedAction:Lorg/fork/utils/Callbacks$Callback1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;->$this_with:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 41
    iget-object p1, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;->$onCheckedAction:Lorg/fork/utils/Callbacks$Callback1;

    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;->$this_with:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method
