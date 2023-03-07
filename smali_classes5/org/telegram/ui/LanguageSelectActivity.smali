.class public Lorg/telegram/ui/LanguageSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LanguageSelectActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private catalogLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private customScreenType:I

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private onLanguageSelected:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private searchWas:Z

.field private searching:Z

.field private selectedLanguageId:I

.field private sortedLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private translateSettingsBackgroundHeight:I

.field private unofficialLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1a4HCpRf6AL3bwAPv3ysI0UcV2Y(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$didReceivedNotification$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$75k0KTXLP7TrZLXIe2XleApv38w(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$processSearch$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ih65pCE9YcfgRrko_8zeKQiiaeQ(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ThBGVAtWQYTp3EvfL8RY9-XXpFc(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$5(Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YVsIzwK1lTM-jVgB_241FlgwZBQ(Lorg/telegram/ui/LanguageSelectActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$4(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Nzl4Zw7rdWGicRNm740oAmlC54(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$updateSearchResults$10(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ez74Ea96iZDun8-GTuq3czQcroM(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$fillLanguages$8(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j7jm67ektGhd-c7wsY4R3VpNZ80(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qBzeYH4Ap91wdSYTgBKGJkHuWug(Lorg/telegram/ui/LanguageSelectActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$6(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ttzKQswdW5FpY3Bi2fwVi4kHJG8(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$yyLs5ey6b1ec8lMdqVBRSQpSj_Y(Lorg/telegram/ui/LanguageSelectActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$2(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lorg/telegram/ui/LanguageSelectActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    return p1
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->isCatalogType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LanguageSelectActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->selectedLanguageId:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LanguageSelectActivity;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->translateSettingsBackgroundHeight:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    return-object p0
.end method

.method private fillLanguages()V
    .locals 7

    .line 455
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->isCatalogType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->catalogLanguages:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    return-void

    .line 461
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    .line 462
    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    .line 481
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 483
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 484
    iget v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_1

    .line 485
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private getChatValue()Z
    .locals 1

    .line 574
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable()Z

    move-result v0

    return v0
.end method

.method private getContextValue()Z
    .locals 1

    .line 570
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->isContextTranslateEnabled()Z

    move-result v0

    return v0
.end method

.method private isCatalogType()Z
    .locals 2

    .line 107
    iget v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->customScreenType:I

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->LANGUAGE_SELECT_CATALOG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$0()V
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 337
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->updateLanguage()V

    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 2

    .line 333
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-nez p2, :cond_0

    .line 335
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    const-wide/16 v0, 0xa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$2(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 343
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private static synthetic lambda$createView$3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;I)V
    .locals 13

    .line 254
    :try_start_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e

    .line 255
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    add-int/2addr p2, v3

    if-ne p2, v3, :cond_3

    .line 258
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 259
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/TranslateController;->setContextTranslateEnabled(Z)V

    .line 260
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 261
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-ne p2, v1, :cond_5

    .line 263
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_4

    .line 264
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_4

    .line 265
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 p2, 0xd

    invoke-direct {p1, p0, p2, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 268
    :cond_4
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "translate_chat_button"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 270
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 272
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eq p1, v0, :cond_d

    .line 274
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p2, :cond_8

    const/4 p2, 0x1

    goto :goto_6

    :cond_8
    const/4 p2, 0x0

    :goto_6
    add-int/2addr p2, v3

    sub-int/2addr p2, v3

    const/4 v0, 0x0

    .line 276
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    iget-object v4, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p2, :cond_9

    instance-of v4, v1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v4, :cond_9

    .line 279
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    if-eqz v0, :cond_b

    .line 283
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDivider(Z)V

    :cond_b
    if-eqz p1, :cond_c

    .line 286
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_8

    .line 288
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_d
    :goto_8
    return-void

    .line 292
    :cond_e
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_f

    .line 293
    new-instance p1, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 296
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_1c

    instance-of p1, p1, Lorg/telegram/ui/Cells/TextRadioCell;

    if-nez p1, :cond_10

    goto/16 :goto_c

    .line 299
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-ne p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_9

    :cond_11
    const/4 p1, 0x0

    .line 301
    :goto_9
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->isCatalogType()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    .line 303
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    :goto_a
    rsub-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    sub-int/2addr v0, v4

    sub-int/2addr p2, v0

    add-int/2addr p2, v1

    :cond_13
    if-eqz p1, :cond_14

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_b

    .line 309
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    if-ltz p2, :cond_15

    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_15

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_b

    .line 312
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_16

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v3

    sub-int/2addr p2, p1

    .line 315
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 318
    :goto_b
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->isCatalogType()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 319
    iget p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iput p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->selectedLanguageId:I

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->onLanguageSelected:Lorg/fork/utils/Callbacks$Callback1;

    iget p2, p0, Lorg/telegram/ui/LanguageSelectActivity;->selectedLanguageId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_d

    :cond_17
    if-eqz p1, :cond_1d

    .line 325
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p2

    if-ne p2, p1, :cond_18

    const/4 v2, 0x1

    .line 328
    :cond_18
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    if-nez v2, :cond_19

    const-wide/16 v3, 0x1f4

    .line 330
    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 332
    :cond_19
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget v11, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v12, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;

    invoke-direct {v12, p0, v0, v2}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    move-object v5, p1

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZZILjava/lang/Runnable;)I

    move-result v1

    if-eqz v1, :cond_1a

    .line 342
    new-instance v2, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LanguageSelectActivity;I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 347
    :cond_1a
    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 348
    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 349
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 350
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v1

    .line 351
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 353
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 354
    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    if-eqz p1, :cond_1b

    const-string p2, "null"

    .line 355
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 356
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_1b
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "translate_button_restricted_languages"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/TranslateController;->checkRestrictedLanguagesUpdate()V

    .line 361
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/TranslateController;->cleanup()V

    .line 363
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->invalidateSuggestedLanguageCodes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :cond_1c
    :goto_c
    return-void

    :catch_0
    move-exception p1

    .line 366
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_d
    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 403
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/LocaleController;->deleteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 404
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->fillLanguages()V

    .line 405
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 406
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 409
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 411
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;I)Z
    .locals 6

    .line 372
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->isCatalogType()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_8

    instance-of p1, p1, Lorg/telegram/ui/Cells/TextRadioCell;

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 377
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 379
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 381
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    rsub-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    sub-int/2addr v0, v3

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x2

    :cond_3
    if-eqz p1, :cond_4

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_2

    .line 387
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    if-ltz p2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_5

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_2

    .line 390
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v1

    sub-int/2addr p2, p1

    .line 393
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    :goto_2
    if-eqz p1, :cond_8

    .line 395
    iget-object p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_7

    goto :goto_3

    .line 399
    :cond_7
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "DeleteLocalizationTitle"

    .line 400
    sget v3, Lorg/telegram/messenger/R$string;->DeleteLocalizationTitle:I

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "DeleteLocalizationText"

    .line 401
    sget v3, Lorg/telegram/messenger/R$string;->DeleteLocalizationText:I

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string v0, "Delete"

    .line 402
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string p1, "Cancel"

    .line 416
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 417
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 418
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 419
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const-string p2, "dialogTextRed2"

    .line 421
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_8
    :goto_3
    return v2

    :catch_0
    move-exception p1

    .line 424
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return v1
.end method

.method private synthetic lambda$didReceivedNotification$7()V
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$fillLanguages$8(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I
    .locals 3

    const/4 v0, -0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, p0, :cond_1

    return v1

    .line 467
    :cond_1
    iget p0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iget v2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    if-ne p0, v2, :cond_2

    .line 468
    iget-object p0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object p1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    if-le p0, v2, :cond_3

    return v1

    :cond_3
    if-ge p0, v2, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$processSearch$9(Ljava/lang/String;)V
    .locals 6

    .line 536
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 538
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void

    .line 541
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 545
    iget-object v4, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 546
    iget-object v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 547
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_6

    .line 552
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 553
    iget-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 554
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 558
    :cond_6
    invoke-direct {p0, v0}, Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$10(Ljava/util/ArrayList;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static newInstanceForCatalog(ILjava/util/ArrayList;Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/LanguageSelectActivity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/telegram/ui/LanguageSelectActivity;"
        }
    .end annotation

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->LANGUAGE_SELECT_CATALOG:I

    const-string v2, "custom_screen_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/LanguageSelectActivity;-><init>(Landroid/os/Bundle;)V

    .line 96
    iput p0, v1, Lorg/telegram/ui/LanguageSelectActivity;->selectedLanguageId:I

    .line 97
    iput-object p1, v1, Lorg/telegram/ui/LanguageSelectActivity;->catalogLanguages:Ljava/util/ArrayList;

    .line 98
    iput-object p2, v1, Lorg/telegram/ui/LanguageSelectActivity;->onLanguageSelected:Lorg/fork/utils/Callbacks$Callback1;

    return-object v1
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 2

    .line 534
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLanguage()V
    .locals 6

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 517
    sget v1, Lorg/telegram/messenger/R$string;->Language:I

    const-string v2, "Language"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x15e

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJLandroid/view/animation/Interpolator;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 563
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->isCatalogType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->language_select_startup:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->Language:I

    const-string v3, "Language"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/LanguageSelectActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LanguageSelectActivity$1;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 172
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/LanguageSelectActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LanguageSelectActivity$2;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 208
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-direct {v0, p0, p1, v3}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    .line 211
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    .line 213
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v2, "windowBackgroundGray"

    .line 214
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 217
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 218
    sget v4, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v5, "NoResult"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 220
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 221
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v2, Lorg/telegram/ui/LanguageSelectActivity$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$3;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 235
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 236
    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 239
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity$4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LanguageSelectActivity$4;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    const-wide/16 v1, 0x190

    .line 246
    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 247
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 248
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LanguageSelectActivity$5;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 443
    sget p2, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    if-ne p1, p2, :cond_0

    .line 445
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->isCatalogType()Z

    move-result p1

    if-nez p1, :cond_0

    .line 446
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 447
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->fillLanguages()V

    .line 448
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 834
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 836
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/LanguageCell;

    const/4 v12, 0x0

    aput-object v2, v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const-string v20, "actionBarDefaultSearch"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string v10, "actionBarDefaultSearchPlaceholder"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "emptyListPlaceholder"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v12

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    const-string v20, "divider"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v12

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "windowBackgroundGrayShadow"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LanguageCell;

    aput-object v4, v3, v12

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/LanguageCell;

    aput-object v5, v4, v12

    const-string v5, "textView2"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteGrayText3"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LanguageCell;

    aput-object v4, v3, v12

    const-string v4, "checkImage"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "featuredStickers_addedIcon"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "custom_screen_type"

    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->customScreenType:I

    .line 137
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->fillLanguages()V

    .line 138
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(IZ)V

    .line 139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 140
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 145
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 146
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 496
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 505
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->processSearch(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
