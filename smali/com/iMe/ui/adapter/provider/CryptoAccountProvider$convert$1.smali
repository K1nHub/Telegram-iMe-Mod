.class final Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V
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
.field final synthetic $item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;


# direct methods
.method public static synthetic $r8$lambda$xsU0blAogTdGB3uX_H7fQknDbVk(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->invoke$lambda$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_applyForView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 4

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 47
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 48
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 49
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 50
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v3}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->access$setupMenuItems(Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)V

    .line 51
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 52
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 53
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 54
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setupPopupRadialSelectors(I)V

    .line 55
    new-instance v0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->getActionBarMenuItemDelegate()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 57
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v1, "AccDescrMoreOptions"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method