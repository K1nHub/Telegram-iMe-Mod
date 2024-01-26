.class final Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TokenBalanceProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/AccountItem$Token;Ljava/util/List;)V
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
.field final synthetic $item:Lcom/iMe/model/wallet/home/AccountItem$Token;

.field final synthetic $this_with:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/AccountItem$Token;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;->$item:Lcom/iMe/model/wallet/home/AccountItem$Token;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;->$this_with:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    iput-object p3, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;->this$0:Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;->invoke(Landroidx/appcompat/widget/AppCompatImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 7

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;->$item:Lcom/iMe/model/wallet/home/AccountItem$Token;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/AccountItem$Token;->isNetworkLogoVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p1, v3, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;->$this_with:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 135
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider$convert$2$1;->this$0:Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;

    .line 137
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 138
    invoke-static {v1}, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;->access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {p1, v3, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
