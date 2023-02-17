.class public final Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "CreateAccountProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/smedialink/model/wallet/home/AccountItem$Create;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 20
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->CREATE_ACCOUNT:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;->itemViewType:I

    .line 21
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_account_empty:I

    iput v0, p0, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/AccountItem$Create;)V
    .locals 3

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Lorg/telegram/messenger/R$id;->card_empty_account:I

    const-string v1, "windowBackgroundWhite"

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedCardBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 28
    sget v1, Lorg/telegram/messenger/R$id;->frame_root:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setAlpha(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILandroid/graphics/drawable/Drawable;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    sget v0, Lorg/telegram/messenger/R$id;->horizontal_action_buttons:I

    new-instance v1, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider$convert$1;

    invoke-direct {v1, p2}, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider$convert$1;-><init>(Lcom/smedialink/model/wallet/home/AccountItem$Create;)V

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/AccountItem$Create;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/smedialink/model/wallet/home/AccountItem$Create;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget p3, Lorg/telegram/messenger/R$id;->horizontal_action_buttons:I

    new-instance v0, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider$convert$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider$convert$2;-><init>(Lcom/smedialink/model/wallet/home/AccountItem$Create;)V

    invoke-static {p1, p3, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/smedialink/model/wallet/home/AccountItem$Create;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/AccountItem$Create;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/smedialink/model/wallet/home/AccountItem$Create;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/AccountItem$Create;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;->layoutId:I

    return v0
.end method
