.class final Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAppearanceSettingsRecycleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/settings/InterfaceSettingItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Components/Switch;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/settings/InterfaceSettingItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/settings/InterfaceSettingItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter$convert$1;->$item:Lcom/iMe/model/wallet/settings/InterfaceSettingItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lorg/telegram/ui/Components/Switch;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter$convert$1;->invoke(Lorg/telegram/ui/Components/Switch;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/Switch;)V
    .locals 5

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter$convert$1;->$item:Lcom/iMe/model/wallet/settings/InterfaceSettingItem;

    .line 41
    instance-of v1, v0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$Networks;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    instance-of v0, v0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p1, v4, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter$convert$1;->$item:Lcom/iMe/model/wallet/settings/InterfaceSettingItem;

    check-cast v0, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/settings/InterfaceSettingItem$SwitchableOption;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    .line 49
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    .line 50
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    .line 51
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    .line 48
    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
