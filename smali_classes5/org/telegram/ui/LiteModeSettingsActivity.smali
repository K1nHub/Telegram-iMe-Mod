.class public Lorg/telegram/ui/LiteModeSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LiteModeSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LiteModeSettingsActivity$Item;,
        Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;,
        Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;,
        Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

.field contentView:Landroid/widget/FrameLayout;

.field private expanded:[Z

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/LiteModeSettingsActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/LiteModeSettingsActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field restrictBulletin:Lorg/telegram/ui/Components/Bulletin;


# direct methods
.method public static synthetic $r8$lambda$AmAhgaRzkvk-UN5JuR0T0Ym_2Lw(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$createView$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$KAIO71KhWIC0vzhfiGtthHmm3eE(Lorg/telegram/ui/LiteModeSettingsActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 163
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 165
    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LiteModeSettingsActivity;I)I
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LiteModeSettingsActivity;)[Z
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateInfo()V

    return-void
.end method

.method private getExpandedIndex(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x701c

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const v0, 0x81e0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;IFF)V
    .locals 3

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    .line 109
    iget-object p4, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p2, p4, :cond_0

    goto/16 :goto_2

    .line 112
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    .line 114
    iget p4, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p4, v0, :cond_2

    const/4 v2, 0x4

    if-ne p4, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    if-ne p4, p3, :cond_6

    .line 132
    iget p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->type:I

    if-nez p2, :cond_6

    .line 133
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "view_animations"

    .line 134
    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    .line 135
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    xor-int/lit8 v0, p4, 0x1

    .line 136
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    xor-int/lit8 p3, p4, 0x1

    .line 137
    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->setAnimationsEnabled(Z)V

    .line 138
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    goto/16 :goto_2

    .line 115
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p4

    const/4 v2, -0x1

    if-eqz p4, :cond_3

    .line 116
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BatteryDrawable;

    const p3, 0x3dcccccd    # 0.1f

    const-string p4, "dialogSwipeRemove"

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p4

    const v0, 0x3fa66666    # 1.3f

    invoke-direct {p2, p3, v2, p4, v0}, Lorg/telegram/ui/Components/BatteryDrawable;-><init>(FIIF)V

    sget p3, Lorg/telegram/messenger/R$string;->LiteBatteryRestricted:I

    const-string p4, "LiteBatteryRestricted"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 119
    :cond_3
    iget p4, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p4, v0, :cond_5

    invoke-virtual {p2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result p4

    if-le p4, v1, :cond_5

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0x4b

    if-eqz p4, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_5

    .line 120
    :goto_1
    iget p1, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 122
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean p3, p2, p1

    xor-int/2addr p3, v1

    aput-boolean p3, p2, p1

    .line 123
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    return-void

    .line 128
    :cond_5
    iget p1, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabledSetting(I)Z

    move-result p1

    .line 129
    iget p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    xor-int/2addr p1, v1

    invoke-static {p2, p1}, Lorg/telegram/messenger/LiteMode;->toggleFlag(IZ)V

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    return-void
.end method

.method private updateInfo()V
    .locals 7

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    goto :goto_1

    .line 237
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    .line 239
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_2

    .line 240
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoDisabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_3

    .line 242
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoEnabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 243
    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoBelow:I

    new-array v3, v2, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%d%%"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 238
    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateItems()V
    .locals 9

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSlider()Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    .line 189
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    if-gtz v3, :cond_0

    .line 190
    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryInfoDisabled:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 192
    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryInfoEnabled:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 193
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->LiteBatteryInfoBelow:I

    new-array v4, v2, [Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%d%%"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 188
    :goto_0
    invoke-static {v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v3, "LiteOptionsTitle"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    sget v4, Lorg/telegram/messenger/R$string;->LiteOptionsStickers:I

    const-string v5, "LiteOptionsStickers"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v1

    const/4 v3, 0x2

    const-string v4, "LiteOptionsAutoplayChat"

    const-string v5, "LiteOptionsAutoplayKeyboard"

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg2_smile_status:I

    sget v7, Lorg/telegram/messenger/R$string;->LiteOptionsEmoji:I

    const-string v8, "LiteOptionsEmoji"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x701c

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x4004

    invoke-static {v5, v6}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v5, "LiteOptionsAutoplayReactions"

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2008

    invoke-static {v5, v6}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1010

    invoke-static {v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg2_ask_question:I

    const-string v5, "LiteOptionsChat"

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x81e0

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_6

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v3, "LiteOptionsBackground"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v3, "LiteOptionsTopics"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v3, "LiteOptionsSpoiler"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-lt v0, v2, :cond_5

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsBlur"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteOptionsScale"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x8000

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_call_earpiece:I

    const-string v3, "LiteOptionsCalls"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x200

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_videocall:I

    const-string v3, "LiteOptionsAutoplayVideo"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_gif:I

    const-string v3, "LiteOptionsAutoplayGifs"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x800

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-static {v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v2, "LiteSmoothTransitions"

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteSmoothTransitionsInfo"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateValues()V
    .locals 5

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 254
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 258
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 259
    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_2

    .line 262
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    .line 263
    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    .line 266
    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    invoke-virtual {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->update()V

    goto :goto_2

    .line 264
    :cond_4
    :goto_1
    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->update(Lorg/telegram/ui/LiteModeSettingsActivity$Item;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result v0

    if-nez v0, :cond_7

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PowerUsage:I

    const-string v2, "PowerUsage"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 95
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    const-string v1, "windowBackgroundGray"

    .line 96
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 98
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 99
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Lorg/telegram/ui/LiteModeSettingsActivity$1;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x15e

    .line 102
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 103
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 105
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    .line 148
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    .line 159
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->removeOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 1

    .line 153
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->addOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 0

    .line 1011
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1012
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->savePreference()V

    .line 1013
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAll()V

    .line 1014
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    return-void
.end method
