.class final Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NftCollectionProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;)V
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
.field final synthetic $item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/nft/NftCollectionItem;Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;->this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;->invoke(Landroidx/appcompat/widget/AppCompatImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 7

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->isNetworkLogoVisible()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p1, v3, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getNetworkItem()Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$2;->this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    .line 94
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 93
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 96
    invoke-static {v1}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->access$getNetworkIconCornerSize(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p1, v3, v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
