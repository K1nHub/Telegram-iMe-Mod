.class final Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonFragmentPremiumProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/FrameLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$2$1;->$item:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$2$1;->invoke(Landroid/widget/FrameLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/FrameLayout;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 99
    instance-of v0, p1, Lorg/telegram/ui/Components/CheckBox2;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/CheckBox2;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$2$1;->$item:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    :cond_1
    return-void
.end method
