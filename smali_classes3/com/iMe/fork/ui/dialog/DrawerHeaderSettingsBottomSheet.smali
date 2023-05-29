.class public final Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "DrawerHeaderSettingsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawerHeaderSettingsBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawerHeaderSettingsBottomSheet.kt\ncom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,251:1\n177#2,2:252\n1#3:254\n*S KotlinDebug\n*F\n+ 1 DrawerHeaderSettingsBottomSheet.kt\ncom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet\n*L\n148#1:252,2\n*E\n"
.end annotation


# instance fields
.field private accountDataSelector:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private archiveRow:I

.field private avatarRow:I

.field private final bottomButtonsContainer$delegate:Lkotlin/Lazy;

.field private final currentSettings$delegate:Lkotlin/Lazy;

.field private final currentUser$delegate:Lkotlin/Lazy;

.field private final dynamicOrientationContainer$delegate:Lkotlin/Lazy;

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final newSettings$delegate:Lkotlin/Lazy;

.field private final previewView$delegate:Lkotlin/Lazy;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private rowCount:I

.field private final saveButton$delegate:Lkotlin/Lazy;

.field private subtitleRow:I

.field private titleRow:I


# direct methods
.method public static synthetic $r8$lambda$ZBSER4Q_uqk_H6Cge-TBCW1nT0Y(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;ILcom/iMe/ui/drawer/DrawerAccountData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initListView$lambda$6$lambda$5$lambda$3(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;ILcom/iMe/ui/drawer/DrawerAccountData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a7fvrlAOaq3VVFICgU_tgEvu8n4(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->createBottomButton$lambda$10$lambda$9(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ofxblXgJVdTTWixY24GMnNnEgDs(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initListView$lambda$6$lambda$5(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 34
    sget-object v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;->INSTANCE:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->currentUser$delegate:Lkotlin/Lazy;

    .line 35
    sget-object v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentSettings$2;->INSTANCE:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentSettings$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->currentSettings$delegate:Lkotlin/Lazy;

    .line 36
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$newSettings$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$newSettings$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->newSettings$delegate:Lkotlin/Lazy;

    .line 37
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$rootView$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$rootView$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    .line 38
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$dynamicOrientationContainer$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$dynamicOrientationContainer$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->dynamicOrientationContainer$delegate:Lkotlin/Lazy;

    .line 39
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$previewView$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$previewView$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->previewView$delegate:Lkotlin/Lazy;

    .line 40
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listView$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listAdapter$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 42
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$bottomButtonsContainer$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$bottomButtonsContainer$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->bottomButtonsContainer$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$saveButton$2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$saveButton$2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->saveButton$delegate:Lkotlin/Lazy;

    .line 52
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 54
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getRootView()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->setLandscapeMode(Z)V

    return-void
.end method

.method public static final synthetic access$getArchiveRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->archiveRow:I

    return p0
.end method

.method public static final synthetic access$getAvatarRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->avatarRow:I

    return p0
.end method

.method public static final synthetic access$getCurrentSettings(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lcom/iMe/fork/models/DrawerHeaderSettings;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getCurrentSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewSettings(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lcom/iMe/fork/models/DrawerHeaderSettings;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getTitleRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->titleRow:I

    return p0
.end method

.method public static final synthetic access$initBottomButtonsContainer(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initBottomButtonsContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initDynamicOrientationContainer(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initDynamicOrientationContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPreviewView(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lorg/telegram/ui/Cells/DrawerProfileCell;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initPreviewView()Lorg/telegram/ui/Cells/DrawerProfileCell;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initRootView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSaveButton(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->initSaveButton()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setArchiveRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->archiveRow:I

    return-void
.end method

.method public static final synthetic access$setAvatarRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->avatarRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setSubtitleRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->subtitleRow:I

    return-void
.end method

.method public static final synthetic access$setTitleRow$p(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->titleRow:I

    return-void
.end method

.method private final createBottomButton(Z)Landroid/widget/TextView;
    .locals 3

    .line 157
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    const/16 v1, 0x11

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "fonts/rmedium.ttf"

    .line 160
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_0

    .line 162
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->Save:I

    const-string v2, "Save"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "if (cancel) {\n          \u2026 R.string.Save)\n        }"

    .line 161
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda0;-><init>(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static final createBottomButton$lambda$10$lambda$9(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 170
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setDrawerHeaderSettings(Lcom/iMe/fork/models/DrawerHeaderSettings;)V

    .line 171
    iget p0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final getBottomButtonsContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->bottomButtonsContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getCurrentSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->currentSettings$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/models/DrawerHeaderSettings;

    return-object v0
.end method

.method private final getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->currentUser$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method private final getDynamicOrientationContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->dynamicOrientationContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->newSettings$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/models/DrawerHeaderSettings;

    return-object v0
.end method

.method private final getPreviewView()Lorg/telegram/ui/Cells/DrawerProfileCell;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->previewView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/DrawerProfileCell;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getSaveButton()Landroid/widget/TextView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->saveButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initBottomButtonsContainer()Landroid/widget/FrameLayout;
    .locals 5

    .line 147
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 148
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 177
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x1

    .line 149
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->createBottomButton(Z)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x2

    const/16 v3, 0x24

    const v4, 0x800003

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x800005

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initDynamicOrientationContainer()Landroid/widget/LinearLayout;
    .locals 6

    .line 90
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getPreviewView()Lorg/telegram/ui/Cells/DrawerProfileCell;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x10

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 99
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x2

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 104
    new-instance v1, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$6$lambda$5(Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;IFF)V
    .locals 1

    const-string p5, "this$0"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$this_apply"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    instance-of p5, p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    const/4 v0, 0x1

    if-eqz p5, :cond_4

    .line 107
    iget p5, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->titleRow:I

    if-ne p3, p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 108
    :goto_0
    check-cast p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 109
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    if-eqz p5, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowTitle()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setShowTitle(Z)V

    goto :goto_1

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowSubtitle()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setShowSubtitle(Z)V

    .line 115
    :goto_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->updateUI()V

    return-void

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 121
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p2

    if-eqz p5, :cond_3

    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getTitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->getSubtitle()Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object p2

    .line 118
    :goto_2
    new-instance p4, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p4, p5, p0, p3}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;-><init>(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V

    invoke-static {p1, p5, p2, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createDrawerAccountDataSelectDialog(Landroid/content/Context;ZLcom/iMe/ui/drawer/DrawerAccountData;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 118
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->accountDataSelector:Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_4

    .line 134
    :cond_4
    instance-of p1, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_6

    .line 135
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 136
    iget p1, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->avatarRow:I

    if-ne p3, p1, :cond_5

    .line 137
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowAvatar()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setShowAvatar(Z)V

    goto :goto_3

    .line 139
    :cond_5
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->isShowArchive()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setShowArchive(Z)V

    .line 141
    :goto_3
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->updateUI()V

    :cond_6
    :goto_4
    return-void
.end method

.method private static final initListView$lambda$6$lambda$5$lambda$3(ZLcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;ILcom/iMe/ui/drawer/DrawerAccountData;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedDrawerAccountData"

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 124
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setShowTitle(Z)V

    .line 125
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setTitle(Lcom/iMe/ui/drawer/DrawerAccountData;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setShowSubtitle(Z)V

    .line 128
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object p0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/iMe/fork/models/DrawerHeaderSettings;->setSubtitle(Lcom/iMe/ui/drawer/DrawerAccountData;)V

    .line 130
    :goto_0
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 131
    invoke-direct {p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->updateUI()V

    return-void
.end method

.method private final initPreviewView()Lorg/telegram/ui/Cells/DrawerProfileCell;
    .locals 4

    .line 95
    new-instance v0, Lorg/telegram/ui/Cells/DrawerProfileCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/DrawerProfileCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Z)V

    .line 96
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getCurrentSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;ZLcom/iMe/fork/models/DrawerHeaderSettings;)V

    return-object v0
.end method

.method private final initRootView()Landroid/widget/LinearLayout;
    .locals 4

    .line 83
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getDynamicOrientationContainer()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getBottomButtonsContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final initSaveButton()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->createBottomButton(Z)Landroid/widget/TextView;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->disable(Landroid/view/View;)V

    return-object v0
.end method

.method private final setLandscapeMode(Z)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getDynamicOrientationContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private final updateUI()V
    .locals 4

    .line 178
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getPreviewView()Lorg/telegram/ui/Cells/DrawerProfileCell;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;ZLcom/iMe/fork/models/DrawerHeaderSettings;)V

    .line 179
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getNewSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getCurrentSettings()Lcom/iMe/fork/models/DrawerHeaderSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->disable(Landroid/view/View;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->getSaveButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->enable(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->setLandscapeMode(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->accountDataSelector:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->accountDataSelector:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method
