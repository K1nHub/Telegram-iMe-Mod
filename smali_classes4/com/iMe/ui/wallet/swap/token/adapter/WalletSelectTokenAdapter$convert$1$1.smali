.class final Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSelectTokenAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/select/SelectableTokenItem;)V
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
.field final synthetic $item:Lcom/iMe/model/wallet/select/SelectableTokenItem;

.field final synthetic $this_with:Lcom/iMe/model/wallet/select/SelectableTokenItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/select/SelectableTokenItem;Lcom/iMe/model/wallet/select/SelectableTokenItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1$1;->$item:Lcom/iMe/model/wallet/select/SelectableTokenItem;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1$1;->$this_with:Lcom/iMe/model/wallet/select/SelectableTokenItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1$1;->invoke(Landroidx/appcompat/widget/AppCompatImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 7

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1$1;->$item:Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->isBinance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1$1;->$this_with:Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$1$1;->$this_with:Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
