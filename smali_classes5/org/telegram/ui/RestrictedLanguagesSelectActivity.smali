.class public Lorg/telegram/ui/RestrictedLanguagesSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "RestrictedLanguagesSelectActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private allLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/TranslateController$Language;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private firstSelectedLanguages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private preferences:Landroid/content/SharedPreferences;

.field private searchListViewAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/TranslateController$Language;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field private searchWas:Z

.field private searching:Z

.field private selectedLanguages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private separatorRow:I


# direct methods
.method public static synthetic $r8$lambda$6TdFbJTq3R5lpXPajfXndM4Fw0Y(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$createView$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GMTlgz2w9HRQ6TbdydTr_-OgU2E(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$getExtendedDoNotTranslate$7(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UKJCsmbS_4ueCXhj-FkeH3H3jfg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$createView$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dZTp0tXaYo6qiPdIxk8B8ICYD7s(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$getExtendedDoNotTranslate$5(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fSyrPYuAGlnW1wi8WsrBVe5QJTg(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$getExtendedDoNotTranslate$4(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$psspHfadqfwLznkZAjXzt-lcjMc(Ljava/util/HashSet;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$checkRestrictedLanguages$2(Ljava/util/HashSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0XD_IPtYwhcDefWY90j4QeLPT0(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$getExtendedDoNotTranslate$3(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xsDZHhGf8aePrKV0vqg9m1CSZrQ(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->lambda$getExtendedDoNotTranslate$6(Ljava/util/HashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searching:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Ljava/util/HashSet;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    return-object p0
.end method

.method public static checkRestrictedLanguages(Z)V
    .locals 4

    .line 535
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "translate_button_restricted_languages_changed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 536
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "translate_button_restricted_languages_version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    .line 539
    :cond_0
    sget-object p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda6;

    invoke-static {p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getExtendedDoNotTranslate(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_1
    return-void
.end method

.method public static cleanup()V
    .locals 2

    .line 525
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "translate_button_restricted_languages_changed"

    .line 526
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "translate_button_restricted_languages_version"

    .line 527
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "translate_button_restricted_languages"

    .line 528
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 530
    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->checkRestrictedLanguages(Z)V

    return-void
.end method

.method private fillLanguages()V
    .locals 9

    .line 307
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    .line 309
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->firstSelectedLanguages:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 313
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 314
    iget-object v6, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/TranslateController$Language;

    .line 315
    iget-object v7, v6, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    iget-object v4, v6, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v4, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    move-object v4, v6

    goto :goto_1

    .line 320
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->firstSelectedLanguages:Ljava/util/HashSet;

    iget-object v8, v6, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 321
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v6, v6, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    iget-object v6, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 328
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 329
    new-instance v5, Lorg/telegram/messenger/TranslateController$Language;

    invoke-direct {v5}, Lorg/telegram/messenger/TranslateController$Language;-><init>()V

    .line 330
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 331
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/TranslateController$Language;->ownDisplayName:Ljava/lang/String;

    .line 332
    iget-object v6, v5, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/TranslateController$Language;->q:Ljava/lang/String;

    .line 333
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 336
    :cond_3
    iput v3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 338
    iget v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    if-eqz v4, :cond_4

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 341
    iget v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    .line 343
    :cond_4
    iget v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    if-gtz v0, :cond_5

    const/4 v0, -0x1

    .line 344
    iput v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    :cond_5
    return-void
.end method

.method public static getExtendedDoNotTranslate(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 566
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 568
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 570
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/telegram/messenger/Utilities$Callback;

    const/4 v4, 0x0

    .line 591
    new-instance v5, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda3;-><init>(Ljava/util/HashSet;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashSet;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v2}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    aput-object v5, v3, v4

    const/4 v1, 0x3

    new-instance v2, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda4;-><init>(Ljava/util/HashSet;)V

    aput-object v2, v3, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/HashSet;)V

    aput-object v2, v3, v1

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static getRestrictedLanguages()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v1, "translate_button_restricted_languages"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static synthetic lambda$checkRestrictedLanguages$2(Ljava/util/HashSet;)V
    .locals 5

    .line 540
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 542
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 543
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 544
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v2

    const-string v3, "translate_button_restricted_languages"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 547
    :cond_0
    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const/4 p0, 0x2

    const-string v0, "translate_button_restricted_languages_version"

    .line 549
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge p0, v0, :cond_1

    .line 554
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->checkRestrictedLanguagesUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static synthetic lambda$createView$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 253
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

.method private synthetic lambda$createView$1(Landroid/view/View;I)V
    .locals 6

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_d

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckbox2Cell;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 233
    iget-object v4, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 234
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/telegram/messenger/TranslateController$Language;

    goto :goto_1

    .line 236
    :cond_2
    iget v4, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    if-ltz v4, :cond_3

    if-le p2, v4, :cond_3

    add-int/lit8 p2, p2, -0x1

    :cond_3
    if-ltz p2, :cond_4

    .line 239
    iget-object v4, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_4

    .line 240
    iget-object v1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/telegram/messenger/TranslateController$Language;

    :cond_4
    :goto_1
    if-eqz v1, :cond_d

    .line 243
    iget-object p2, v1, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    if-eqz p2, :cond_d

    .line 244
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p2

    .line 245
    iget-object v1, v1, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 246
    iget-object v4, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_5

    .line 247
    iget-object v5, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 248
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    .line 249
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    new-instance v4, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    goto :goto_2

    .line 255
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const-string v4, "translate_button_restricted_languages_changed"

    const-string v5, "translate_button_restricted_languages"

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 260
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    invoke-interface {p1, v5, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3
    if-eqz v0, :cond_9

    const/4 p1, 0x0

    .line 264
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_c

    .line 265
    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/TranslateController$Language;

    iget-object p2, p2, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 266
    invoke-direct {p0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->rebind(I)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    .line 270
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_c

    .line 271
    iget p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->separatorRow:I

    if-ne p1, p2, :cond_a

    add-int/lit8 p1, p1, 0x1

    .line 274
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/TranslateController$Language;

    iget-object p2, p2, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 275
    invoke-direct {p0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->rebind(I)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 280
    :cond_c
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/TranslateController;->checkRestrictedLanguagesUpdate()V

    :cond_d
    :goto_6
    return-void
.end method

.method private static synthetic lambda$getExtendedDoNotTranslate$3(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 2

    .line 594
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    .line 595
    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 599
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 601
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$getExtendedDoNotTranslate$4(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 2

    .line 605
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 610
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 612
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$getExtendedDoNotTranslate$5(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 7

    .line 616
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "countries.txt"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ";"

    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 621
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    const/4 v3, 0x2

    .line 622
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 623
    aget-object v5, v2, v3

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "7"

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 624
    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 626
    :cond_1
    aget-object v5, v2, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 627
    aget-object v3, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 642
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 644
    :goto_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$getExtendedDoNotTranslate$6(Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "_"

    .line 699
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 700
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 702
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v4, 0x1

    .line 703
    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 704
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    const-string v5, "keyboard"

    .line 705
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 706
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 707
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 708
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 711
    :cond_2
    invoke-static {v4}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 712
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 718
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 721
    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$getExtendedDoNotTranslate$7(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/HashSet;Ljava/lang/Runnable;)V
    .locals 0

    .line 723
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 4

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 379
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 380
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->allLanguages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/TranslateController$Language;

    .line 381
    iget-object v3, v2, Lorg/telegram/messenger/TranslateController$Language;->q:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 383
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/TranslateController$Language;->q:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    iget-object v3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private rebind(I)V
    .locals 5

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    .line 111
    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static toggleLanguage(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 129
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v2

    if-eqz p0, :cond_1

    .line 130
    iget-object v3, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    .line 136
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p0

    const-string p1, "translate_button_restricted_languages"

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    iget-object p0, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 141
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 143
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->invalidateSuggestedLanguageCodes()V

    return v0
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

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->DoNotTranslate:I

    const-string v3, "DoNotTranslate"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$1;-><init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 168
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;-><init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 204
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 206
    new-instance v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    invoke-direct {v0, p0, p1, v3}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    .line 207
    new-instance v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    .line 209
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v2, "windowBackgroundGray"

    .line 210
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 213
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 214
    sget v4, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v5, "NoResult"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 216
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 217
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 220
    iget-object v5, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 221
    iget-object v2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v5, p1, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 223
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$3;-><init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 293
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 298
    sget p2, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    if-ne p1, p2, :cond_0

    .line 299
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 300
    invoke-direct {p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->fillLanguages()V

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

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

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 499
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

    .line 501
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const-string v20, "actionBarDefaultSearch"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const-string v10, "actionBarDefaultSearchPlaceholder"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "emptyListPlaceholder"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 515
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 517
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 518
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 519
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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
    .locals 2

    .line 88
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->preferences:Landroid/content/SharedPreferences;

    .line 89
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->firstSelectedLanguages:Ljava/util/HashSet;

    .line 90
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->getRestrictedLanguages()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->selectedLanguages:Ljava/util/HashSet;

    .line 92
    invoke-direct {p0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->fillLanguages()V

    .line 93
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(I)V

    .line 94
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 95
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 119
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 120
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 350
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->listAdapter:Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchResult:Ljava/util/ArrayList;

    goto :goto_1

    .line 361
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 367
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->processSearch(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
