.class final Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$3;
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


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/select/SelectableTokenItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$3;->$item:Lcom/iMe/model/wallet/select/SelectableTokenItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$3;->invoke(Landroidx/appcompat/widget/AppCompatImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/adapter/WalletSelectTokenAdapter$convert$3;->$item:Lcom/iMe/model/wallet/select/SelectableTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/model/wallet/select/SelectableToken;)V

    return-void
.end method
