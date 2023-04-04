.class public final Lcom/iMe/ui/languages/LanguagesActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LanguagesActivity.kt"

# interfaces
.implements Lcom/iMe/ui/languages/LanguagesAdapter$OnLanguageClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLanguagesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguagesActivity.kt\ncom/iMe/ui/languages/LanguagesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1549#2:89\n1620#2,3:90\n*S KotlinDebug\n*F\n+ 1 LanguagesActivity.kt\ncom/iMe/ui/languages/LanguagesActivity\n*L\n79#1:89\n79#1:90,3\n*E\n"
.end annotation


# instance fields
.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private languagesAdapter:Lcom/iMe/ui/languages/LanguagesAdapter;

.field private me:Lorg/telegram/tgnet/TLRPC$User;

.field private recyclerLanguages:Landroidx/recyclerview/widget/RecyclerView;

.field private rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 19
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/languages/LanguagesActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 22
    new-instance v0, Lcom/iMe/ui/languages/LanguagesAdapter;

    invoke-direct {v0, p0}, Lcom/iMe/ui/languages/LanguagesAdapter;-><init>(Lcom/iMe/ui/languages/LanguagesAdapter$OnLanguageClickListener;)V

    iput-object v0, p0, Lcom/iMe/ui/languages/LanguagesActivity;->languagesAdapter:Lcom/iMe/ui/languages/LanguagesAdapter;

    .line 23
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 24
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/languages/LanguagesActivity;->me:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method private final showLanguages()V
    .locals 15

    .line 65
    sget-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->Companion:Lcom/iMe/bots/data/repository/CountriesRepository$Companion;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/iMe/bots/data/repository/CountriesRepository;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/iMe/ui/languages/LanguagesActivity;->me:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v2, "me.phone"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/iMe/bots/data/repository/CountriesRepository;->getCurrentBotLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/iMe/ui/languages/LanguageViewModel;

    .line 70
    new-instance v8, Lcom/iMe/ui/languages/LanguageViewModel;

    .line 72
    sget v2, Lorg/telegram/messenger/R$string;->neurobots_store_language_ru:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "getInternalString(R.stri\u2026robots_store_language_ru)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ru"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    .line 70
    invoke-direct/range {v2 .. v7}, Lcom/iMe/ui/languages/LanguageViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    .line 74
    new-instance v2, Lcom/iMe/ui/languages/LanguageViewModel;

    .line 76
    sget v3, Lorg/telegram/messenger/R$string;->neurobots_store_language_en:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "getInternalString(R.stri\u2026robots_store_language_en)"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "eng"

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v2

    .line 74
    invoke-direct/range {v9 .. v14}, Lcom/iMe/ui/languages/LanguageViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 69
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/ui/languages/LanguageViewModel;

    .line 81
    invoke-virtual {v4}, Lcom/iMe/ui/languages/LanguageViewModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/iMe/ui/languages/LanguageViewModel;->setChecked(Z)V

    .line 1621
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/languages/LanguagesActivity;->languagesAdapter:Lcom/iMe/ui/languages/LanguagesAdapter;

    invoke-virtual {v0, v1}, Lcom/iMe/ui/languages/LanguagesAdapter;->setLanguages(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 27
    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/ui/languages/LanguagesActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$layout;->fork_fragment_languages:I

    iget-object v2, p0, Lcom/iMe/ui/languages/LanguagesActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v3, 0x0

    const-string v4, "rootContainer"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    sget v1, Lorg/telegram/messenger/R$id;->recyclerLanguages:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/iMe/ui/languages/LanguagesActivity;->recyclerLanguages:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 31
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    iget-object p1, p0, Lcom/iMe/ui/languages/LanguagesActivity;->languagesAdapter:Lcom/iMe/ui/languages/LanguagesAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 35
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 36
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/messenger/R$string;->neurobots_store_languages_screen_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v0, Lcom/iMe/ui/languages/LanguagesActivity$createView$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/languages/LanguagesActivity$createView$2;-><init>(Lcom/iMe/ui/languages/LanguagesActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/languages/LanguagesActivity;->showLanguages()V

    .line 46
    iget-object p1, p0, Lcom/iMe/ui/languages/LanguagesActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez p1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string p1, "fragmentView"

    .line 47
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/languages/LanguagesActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 53
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onLanguageClick(Lcom/iMe/ui/languages/LanguageViewModel;)V
    .locals 3

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->Companion:Lcom/iMe/bots/data/repository/CountriesRepository$Companion;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/iMe/bots/data/repository/CountriesRepository;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/iMe/ui/languages/LanguageViewModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/bots/data/repository/CountriesRepository;->setCurrentBotLanguage(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/languages/LanguagesActivity;->showLanguages()V

    .line 61
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->botLanguageChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
