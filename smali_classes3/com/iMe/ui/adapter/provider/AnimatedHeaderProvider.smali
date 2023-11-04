.class public final Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "AnimatedHeaderProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/cryptobox/AnimatedHeaderItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final buttonCornerRadius$delegate:Lkotlin/Lazy;

.field private final itemViewType:I

.field private final layoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 23
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->ANIMATED_HEADER:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->itemViewType:I

    .line 24
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_animated_header:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->layoutId:I

    .line 26
    sget-object v0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$buttonCornerRadius$2;->INSTANCE:Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$buttonCornerRadius$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->buttonCornerRadius$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getButtonCornerRadius(Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;)I
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->getButtonCornerRadius()I

    move-result p0

    return p0
.end method

.method private final getButtonCornerRadius()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->buttonCornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V
    .locals 4

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget v0, Lorg/telegram/messenger/R$id;->linear_root:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 32
    sget v0, Lorg/telegram/messenger/R$id;->text_description:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 33
    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->getDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 34
    sget v0, Lorg/telegram/messenger/R$id;->image_header:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$1;

    invoke-direct {v1, p2}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$1;-><init>(Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 39
    sget v0, Lorg/telegram/messenger/R$id;->button_action:I

    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->getButton()Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setVisibleElseGone(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 41
    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->getButton()Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    new-instance v1, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$1;-><init>(Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 51
    sget v0, Lorg/telegram/messenger/R$id;->text_action:I

    .line 52
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    .line 50
    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v1, v2, [I

    aput v0, v1, v3

    .line 54
    invoke-static {p1, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 55
    invoke-virtual {p2}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->getButton()Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 56
    new-instance v1, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$2;

    invoke-direct {v1, p2}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$2$2;-><init>(Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_1
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->layoutId:I

    return v0
.end method
