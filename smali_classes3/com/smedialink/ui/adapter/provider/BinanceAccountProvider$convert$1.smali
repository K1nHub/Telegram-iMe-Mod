.class final Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BinanceAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;


# direct methods
.method public static synthetic $r8$lambda$DygpQZsePnJ-f_3ux5tTcJiO7Ns(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1;->invoke$lambda-0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_applyForView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1;->invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 5

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 43
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 44
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 45
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 46
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 47
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->RECEIVE:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer_24:I

    iget-object v3, p0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;

    invoke-static {v3}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;->access$getResourceManager$p(Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_receive:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 48
    sget v1, Lcom/smedialink/common/IdFabric$Menu;->LOGOUT:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_leave:I

    sget v3, Lorg/telegram/messenger/R$string;->LogOut:I

    const-string v4, "LogOut"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const-string v1, "actionBarDefaultSubmenuBackground"

    .line 49
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    const-string v1, "actionBarDefaultSubmenuItem"

    .line 50
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    const-string v0, "actionBarDefaultSubmenuItemIcon"

    .line 51
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    const-string v0, "listSelectorSDK21"

    .line 52
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setupPopupRadialSelectors(I)V

    .line 53
    new-instance v0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;->getActionBarMenuItemDelegate()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 55
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v1, "AccDescrMoreOptions"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
