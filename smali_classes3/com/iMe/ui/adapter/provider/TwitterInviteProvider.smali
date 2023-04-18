.class public final Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TwitterInviteProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/twitter/TwitterInviteItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemViewType:I

.field private final layoutId:I

.field private onInviteClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/twitter/TwitterInviteItem;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private stickerSetCell:Lorg/telegram/ui/Cells/StickerSetCell;


# direct methods
.method public static synthetic $r8$lambda$BYq5WGM_UpQcRUOLQef8yIu1QSY(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->convert$lambda$2$lambda$1(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WC8zFu6nj3xHCKjwamimaTANUdg(Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->onInviteClickAction$lambda$0(Lcom/iMe/model/twitter/TwitterInviteItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 21
    sget-object p1, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->onInviteClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 24
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TWITTER_INVITE:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->itemViewType:I

    .line 25
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_twitter_user:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->layoutId:I

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$setStickerSetCell$p(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lorg/telegram/ui/Cells/StickerSetCell;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->stickerSetCell:Lorg/telegram/ui/Cells/StickerSetCell;

    return-void
.end method

.method private static final convert$lambda$2$lambda$1(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->onInviteClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {p0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onInviteClickAction$lambda$0(Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget v0, Lorg/telegram/messenger/R$id;->frame_container:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;

    invoke-direct {v1, p2, p0}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;-><init>(Lcom/iMe/model/twitter/TwitterInviteItem;Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterInviteItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/twitter/TwitterInviteItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payloads"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->stickerSetCell:Lorg/telegram/ui/Cells/StickerSetCell;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TwitterInviteItem;->getNickname()Ljava/lang/String;

    move-result-object p3

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->twitter_search_invite_subtitle:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_twitter:I

    const/4 v2, 0x1

    .line 60
    invoke-virtual {p1, p3, v0, v1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 66
    new-instance p3, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/StickerSetCell;->setCustomButtonAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/iMe/model/twitter/TwitterInviteItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterInviteItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/iMe/model/twitter/TwitterInviteItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterInviteItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->layoutId:I

    return v0
.end method

.method public final getOnInviteClickAction()Lcom/iMe/fork/utils/Callbacks$Callback1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/twitter/TwitterInviteItem;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->onInviteClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-object v0
.end method

.method public final onViewRecycled()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->stickerSetCell:Lorg/telegram/ui/Cells/StickerSetCell;

    return-void
.end method

.method public final setOnInviteClickAction(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/twitter/TwitterInviteItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->onInviteClickAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method
