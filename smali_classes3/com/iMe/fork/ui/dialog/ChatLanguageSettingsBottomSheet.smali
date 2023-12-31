.class public final Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ChatLanguageSettingsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatLanguageSettingsBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatLanguageSettingsBottomSheet.kt\ncom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,266:1\n177#2,2:267\n1#3:269\n*S KotlinDebug\n*F\n+ 1 ChatLanguageSettingsBottomSheet.kt\ncom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet\n*L\n105#1:267,2\n*E\n"
.end annotation


# instance fields
.field private autoTranslateRow:I

.field private final bottomButtonsContainer$delegate:Lkotlin/Lazy;

.field private isAutoTranslateEnabled:Z

.field private languageSelector:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final newSettings$delegate:Lkotlin/Lazy;

.field private final parentFragment:Lorg/telegram/ui/ChatActivity;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private rowCount:I

.field private textHeader:I

.field private textIn:I

.field private textOut:I

.field private final textTranslateLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation
.end field

.field private final translationSettingsDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5akYCus9WXhztDj6xbjOnwkPax0(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->initListView$lambda$2$lambda$1(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$70PeAWKEGyyz--voZZxtUrGvTLw(ILcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->showLanguageSelector$lambda$6(ILcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDFjUFk5smsBTgEZ_o8yy5ququ8(ZLcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->createBottomButton$lambda$5$lambda$4(ZLcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/util/List;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;Lcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ChatActivity;",
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;",
            "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textTranslateLanguages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translationSettingsDelegate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 32
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 33
    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textTranslateLanguages:Ljava/util/List;

    .line 35
    iput-object p4, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->translationSettingsDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    .line 39
    new-instance p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$newSettings$2;

    invoke-direct {p1, p3}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$newSettings$2;-><init>(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->newSettings$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$rootView$2;-><init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$bottomButtonsContainer$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$bottomButtonsContainer$2;-><init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->bottomButtonsContainer$delegate:Lkotlin/Lazy;

    .line 53
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 54
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getRootView()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getAutoTranslateRow$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->autoTranslateRow:I

    return p0
.end method

.method public static final synthetic access$getLangCode(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getLangCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewSettings(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getTextHeader$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textHeader:I

    return p0
.end method

.method public static final synthetic access$getTextIn$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textIn:I

    return p0
.end method

.method public static final synthetic access$getTextOut$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textOut:I

    return p0
.end method

.method public static final synthetic access$initBottomButtonsContainer(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->initBottomButtonsContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->initRootView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isAutoTranslateEnabled$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->isAutoTranslateEnabled:Z

    return p0
.end method

.method public static final synthetic access$setAutoTranslateRow$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->autoTranslateRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setTextHeader$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textHeader:I

    return-void
.end method

.method public static final synthetic access$setTextIn$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textIn:I

    return-void
.end method

.method public static final synthetic access$setTextOut$p(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textOut:I

    return-void
.end method

.method private final createBottomButton(Z)Landroid/widget/TextView;
    .locals 4

    .line 116
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/16 v1, 0x11

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 119
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    if-eqz p1, :cond_0

    .line 121
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(\"Cancel\", R.string.Cancel)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->Save:I

    const-string v3, "Save"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(\"Save\", R.string.Save)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    new-instance v1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda0;-><init>(ZLcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createBottomButton$lambda$5$lambda$4(ZLcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 129
    iget-object p0, p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->translationSettingsDelegate:Lcom/iMe/fork/utils/Callbacks$Callback2;

    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object p2

    iget-boolean v0, p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->isAutoTranslateEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final getBottomButtonsContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->bottomButtonsContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getLangCode(I)Ljava/lang/String;
    .locals 1

    .line 160
    iget v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textIn:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getInTextTranslateLangCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getOutTextTranslateLangCode()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->newSettings$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final initBottomButtonsContainer()Landroid/widget/FrameLayout;
    .locals 5

    .line 104
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 105
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->createBottomButton(Z)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x2

    const/16 v3, 0x24

    const v4, 0x800003

    .line 108
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 106
    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->createBottomButton(Z)Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x800005

    .line 112
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 81
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x2

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 86
    new-instance v1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$2$lambda$1(Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Landroid/view/View;IFF)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    instance-of p4, p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    if-eqz p4, :cond_2

    .line 88
    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 91
    iget p3, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textIn:I

    if-ne p2, p3, :cond_0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object p0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->setInTextTranslateEnabled(Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object p0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->setOutTextTranslateEnabled(Z)V

    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->showLanguageSelector(I)V

    goto :goto_1

    .line 97
    :cond_2
    instance-of p2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p2, :cond_3

    .line 98
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 99
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->isAutoTranslateEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->isAutoTranslateEnabled:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private final initRootView()Landroid/widget/LinearLayout;
    .locals 4

    .line 74
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getBottomButtonsContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final showLanguageSelector(I)V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textTranslateLanguages:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 137
    iget v1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textOut:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    .line 140
    new-instance v2, Lcom/iMe/model/translation/TranslationLanguageUiModel;

    const/4 v3, 0x0

    .line 142
    sget v4, Lorg/telegram/messenger/R$string;->language_settings_app_language:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInternalString(R.stri\u2026ge_settings_app_language)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {v2, v3, v4}, Lcom/iMe/model/translation/TranslationLanguageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 146
    :cond_0
    new-instance v1, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    .line 147
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getLangCode(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    new-instance v4, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, p0}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$$ExternalSyntheticLambda1;-><init>(ILcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;)V

    .line 146
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 156
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 146
    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->languageSelector:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private static final showLanguageSelector$lambda$6(ILcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget v0, p1, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textIn:I

    if-ne p0, v0, :cond_0

    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->setInTextTranslateLangCode(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getNewSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->setOutTextTranslateLangCode(Ljava/lang/String;)V

    .line 155
    :goto_0
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet$ListAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getParentFragment()Lorg/telegram/ui/ChatActivity;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method public final getTextTranslateLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->textTranslateLanguages:Ljava/util/List;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->languageSelector:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/ChatLanguageSettingsBottomSheet;->languageSelector:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method
