.class public final Lcom/iMe/ui/adapter/provider/HeaderProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "HeaderProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/home/HeaderItem;",
        ">;"
    }
.end annotation


# instance fields
.field private extraPadding:F

.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 18
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/HeaderProvider;->itemViewType:I

    .line 19
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_dashboard_header:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/HeaderProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/HeaderItem;)V
    .locals 11

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lorg/telegram/messenger/R$id;->text_wallet_header:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 24
    invoke-static {p1, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v3

    .line 26
    sget v4, Lorg/telegram/messenger/R$id;->frame_root:I

    .line 27
    iget v7, p0, Lcom/iMe/ui/adapter/provider/HeaderProvider;->extraPadding:F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    move v5, v7

    .line 25
    invoke-static/range {v3 .. v10}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setPadding$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IFFFFILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/iMe/model/wallet/home/HeaderItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/HeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/HeaderItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/ui/adapter/provider/HeaderProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/ui/adapter/provider/HeaderProvider;->layoutId:I

    return v0
.end method

.method public final setExtraPadding(F)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/iMe/ui/adapter/provider/HeaderProvider;->extraPadding:F

    return-void
.end method
