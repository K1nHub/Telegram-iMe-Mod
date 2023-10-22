.class public final Lcom/iMe/ui/adapter/provider/SectionProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "SectionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Section;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 13
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SECTION_SPACE:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/SectionProvider;->itemViewType:I

    .line 14
    sget v0, Lorg/telegram/messenger/R$layout;->fork_section_view:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/SectionProvider;->layoutId:I

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Section;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget p2, Lorg/telegram/messenger/R$id;->section:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Section;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/SectionProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Section;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SectionProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/iMe/ui/adapter/provider/SectionProvider;->layoutId:I

    return v0
.end method
