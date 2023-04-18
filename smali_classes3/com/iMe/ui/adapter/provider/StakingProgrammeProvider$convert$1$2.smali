.class final Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingProgrammeProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;->this$0:Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;->invoke(Landroidx/appcompat/widget/AppCompatImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$2;->this$0:Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;

    const-string v2, "windowBackgroundWhite"

    .line 68
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 69
    invoke-static {v1}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
