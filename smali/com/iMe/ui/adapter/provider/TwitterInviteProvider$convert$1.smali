.class final Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterInviteProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TwitterInviteItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/FrameLayout;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterInviteProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterInviteProvider.kt\ncom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/twitter/TwitterInviteItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;


# direct methods
.method public static synthetic $r8$lambda$YgFJyFklkgSFBfMs4gx8R7Gey58(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;->invoke$lambda$1$lambda$0(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V

    return-void
.end method

.method constructor <init>(Lcom/iMe/model/twitter/TwitterInviteItem;Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;->$item:Lcom/iMe/model/twitter/TwitterInviteItem;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->getOnInviteClickAction()Lcom/iMe/fork/utils/Callbacks$Callback1;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;->invoke(Landroid/widget/FrameLayout;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/FrameLayout;)V
    .locals 7

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 44
    new-instance v0, Lorg/telegram/ui/Cells/StickerSetCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/StickerSetCell;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;->$item:Lcom/iMe/model/twitter/TwitterInviteItem;

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;

    .line 46
    invoke-virtual {v1}, Lcom/iMe/model/twitter/TwitterInviteItem;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v2}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->twitter_search_invite_subtitle:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_drawer_social_twitter:I

    const/4 v6, 0x1

    .line 45
    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Cells/StickerSetCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 51
    sget v3, Lorg/telegram/messenger/R$string;->Invite:I

    const-string v4, "Invite"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerSetCell;->setCustomButtonText(Ljava/lang/String;)V

    .line 52
    new-instance v3, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/model/twitter/TwitterInviteItem;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/StickerSetCell;->setCustomButtonAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 53
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;

    invoke-static {v1, v0}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->access$setStickerSetCell$p(Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lorg/telegram/ui/Cells/StickerSetCell;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
