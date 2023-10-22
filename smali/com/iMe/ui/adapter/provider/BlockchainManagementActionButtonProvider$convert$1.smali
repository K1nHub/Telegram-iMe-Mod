.class final Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BlockchainManagementActionButtonProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Cells/TextCell;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->$item:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;

    iput-object p3, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->invoke(Lorg/telegram/ui/Cells/TextCell;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Cells/TextCell;)V
    .locals 4

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fonts/rmedium.ttf"

    .line 34
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->$item:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;

    invoke-virtual {v1}, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->getText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->$item:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->getIconResId()I

    move-result v1

    .line 38
    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v3, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getAdapter()Lcom/chad/library/adapter/base/BaseNodeAdapter;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->$item:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->getColorKey()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->$item:Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$ActionButton;->getColorKey()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;

    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;->access$getItemElevation(Lcom/iMe/ui/adapter/provider/BlockchainManagementActionButtonProvider;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    return-void
.end method
