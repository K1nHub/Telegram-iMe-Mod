.class final Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TonFragmentPremiumProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V
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

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$1;->$item:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$1;->invoke(Landroid/widget/FrameLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/FrameLayout;)V
    .locals 10

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TonFragmentPremiumProvider$convert$1$1;->$item:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    const/16 v2, 0xa

    .line 57
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 59
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    .line 60
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    .line 61
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    .line 58
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 63
    invoke-virtual {v1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    const/16 v3, 0x18

    const/16 v4, 0x18

    const/16 v5, 0x10

    const/16 v6, 0xe

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    .line 65
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
