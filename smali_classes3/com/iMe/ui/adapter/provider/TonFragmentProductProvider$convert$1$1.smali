.class final Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonFragmentProductProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$convert$1$1;->invoke(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;

    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;->access$getItemElevation(Lcom/iMe/ui/adapter/provider/TonFragmentProductProvider;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method
