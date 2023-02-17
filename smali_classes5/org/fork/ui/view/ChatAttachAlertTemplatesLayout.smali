.class public final Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertTemplatesLayout.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;,
        Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$EmptyView;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertTemplatesLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertTemplatesLayout.kt\norg/fork/ui/view/ChatAttachAlertTemplatesLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,406:1\n254#2,2:407\n252#2:411\n254#2,2:412\n13536#3,2:409\n*S KotlinDebug\n*F\n+ 1 ChatAttachAlertTemplatesLayout.kt\norg/fork/ui/view/ChatAttachAlertTemplatesLayout\n*L\n323#1:407,2\n335#1:411\n343#1:412,2\n325#1:409,2\n*E\n"
.end annotation


# instance fields
.field private currentPanTranslationProgress:F

.field private final delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

.field private emptyRow:I

.field private final emptyView$delegate:Lkotlin/Lazy;

.field private headerRow:I

.field private ignoreLayout:Z

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listLayoutManager$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private paddingRow:I

.field private rowCount:I

.field private final sortItem$delegate:Lkotlin/Lazy;

.field private final templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private templatesStartRow:I

.field private topPadding:I


# direct methods
.method public static synthetic $r8$lambda$AuucDagOi0bjqoeXOJrdfVH7W8w(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->setupListView$lambda-10$lambda-9(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FQyRbxOFpiOJIX3gZAKikZSbvEA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->initEmptyView$lambda-6$lambda-5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$scVR4jqZIzfJhMgpHsSl80bQXD0(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->setupListView$lambda-10$lambda-8(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V
    .locals 1

    const-string v0, "alert"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 44
    iput-object p4, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    .line 48
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->sortItem$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$emptyView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$emptyView$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->emptyView$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->listLayoutManager$delegate:Lkotlin/Lazy;

    .line 51
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$listAdapter$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->listAdapter$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$listView$2;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->listView$delegate:Lkotlin/Lazy;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    .line 66
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object p1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->setupListView()V

    .line 69
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    .line 70
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->loadTemplates()V

    .line 71
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public static final synthetic access$getEmptyRow$p(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->emptyRow:I

    return p0
.end method

.method public static final synthetic access$getHeaderRow$p(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->headerRow:I

    return p0
.end method

.method public static final synthetic access$getPaddingRow$p(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->paddingRow:I

    return p0
.end method

.method public static final synthetic access$getParentAlert$p$s-1709477308(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method public static final synthetic access$getResourcesProvider$p$s-1709477308(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getTemplates$p(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTemplatesStartRow$p(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templatesStartRow:I

    return p0
.end method

.method public static final synthetic access$getTopPadding$p(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    return p0
.end method

.method public static final synthetic access$initEmptyView(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->initEmptyView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListLayoutManager(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->initListLayoutManager()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->initListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSortItem(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->initSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateEmptyViewPosition(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private final getEmptyView()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->emptyView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getListAdapter()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    return-object v0
.end method

.method private final getListLayoutManager()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->listLayoutManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    return-object v0
.end method

.method private final getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    return-object v0
.end method

.method private final getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->sortItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method private final initEmptyView()Landroid/widget/LinearLayout;
    .locals 12

    .line 210
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 213
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 214
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "dialogEmptyImage"

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 216
    sget v4, Lorg/telegram/messenger/R$drawable;->stickers_empty:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, -0x2

    .line 218
    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-static {v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 221
    sget v4, Lorg/telegram/messenger/R$string;->chat_templates_list_header:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "dialogEmptyText"

    .line 223
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 224
    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x28

    .line 225
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 227
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    sget-object v1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda0;->INSTANCE:Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method private static final initEmptyView$lambda-6$lambda-5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final initListLayoutManager()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
    .locals 4

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v2

    new-instance v3, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/content/Context;ILorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;)V

    .line 266
    invoke-virtual {v3}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setSkipFirstItem()V

    return-object v3
.end method

.method private final initListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;
    .locals 2

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    invoke-direct {v1, v0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private final initSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 3

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v1, Lcom/smedialink/common/IdFabric$Menu;->SORT:I

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    invoke-virtual {v2}, Lorg/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method private final loadTemplates()V
    .locals 3

    .line 311
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    .line 312
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    sget-object v1, Lorg/fork/controller/TemplatesController;->Companion:Lorg/fork/controller/TemplatesController$Companion;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/fork/controller/TemplatesController$Companion;->getInstance(I)Lorg/fork/controller/TemplatesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/TemplatesController;->getTemplatesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateRows()V

    .line 316
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 317
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyView()V

    .line 318
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    return-void
.end method

.method private final setupListView()V
    .locals 2

    .line 270
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 272
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 274
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 275
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListLayoutManager()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 276
    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 281
    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 287
    new-instance v1, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$setupListView$1$3;

    invoke-direct {v1, p0, v0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$setupListView$1$3;-><init>(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private static final setupListView$lambda-10$lambda-8(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    instance-of p2, p1, Lorg/fork/ui/view/TemplateCell;

    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getDelegate()Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    move-result-object p0

    check-cast p1, Lorg/fork/ui/view/TemplateCell;

    invoke-virtual {p1}, Lorg/fork/ui/view/TemplateCell;->getTemplate()Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressSendMessage(Lcom/smedialink/storage/domain/model/templates/TemplateModel;Z)V

    :cond_0
    return-void
.end method

.method private static final setupListView$lambda-10$lambda-9(Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)Z
    .locals 1

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    instance-of p2, p1, Lorg/fork/ui/view/TemplateCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getDelegate()Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    move-result-object p0

    check-cast p1, Lorg/fork/ui/view/TemplateCell;

    invoke-virtual {p1}, Lorg/fork/ui/view/TemplateCell;->getTemplate()Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressSendMessage(Lcom/smedialink/storage/domain/model/templates/TemplateModel;Z)V

    :cond_0
    return v0
.end method

.method private final updateEmptyView()V
    .locals 2

    .line 343
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 254
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private final updateEmptyViewPosition()V
    .locals 4

    .line 335
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 338
    :cond_1
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 339
    :cond_2
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->currentPanTranslationProgress:F

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 349
    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->paddingRow:I

    add-int/lit8 v0, v1, 0x1

    .line 350
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->headerRow:I

    .line 351
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 352
    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templatesStartRow:I

    goto :goto_0

    .line 354
    :cond_0
    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templatesStartRow:I

    .line 355
    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    .line 357
    :goto_0
    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->emptyRow:I

    return-void
.end method

.method private final updateSortItem()V
    .locals 10

    .line 322
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, ""

    .line 323
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 254
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 325
    invoke-static {}, Lorg/fork/enums/TemplatesSortingType;->values()[Lorg/fork/enums/TemplatesSortingType;

    move-result-object v1

    .line 13536
    array-length v4, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 326
    sget-object v7, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lorg/fork/enums/TemplatesSortingType;

    if-ne v7, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    .line 327
    :goto_3
    sget v8, Lcom/smedialink/common/IdFabric$Menu;->SORT:I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    add-int/2addr v8, v9

    if-eqz v7, :cond_3

    const/4 v9, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {v6}, Lorg/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v9

    :goto_4
    invoke-virtual {v6}, Lorg/fork/enums/TemplatesSortingType;->getNameResId()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v9, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    .line 328
    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget p2, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    if-ne p1, p2, :cond_0

    .line 190
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->loadTemplates()V

    :cond_0
    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 1

    const/16 v0, 0x46

    .line 138
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 5

    .line 90
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 94
    :cond_1
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    if-lez v0, :cond_4

    if-nez v1, :cond_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    if-ne v4, v2, :cond_2

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-ltz v0, :cond_7

    if-nez v1, :cond_6

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 97
    :cond_6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v1, v2, :cond_5

    :goto_2
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    const/16 v1, 0xd

    .line 100
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getDelegate()Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    return-object v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 103
    invoke-virtual {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListTopPadding()I

    move-result v0

    const/16 v1, 0x11

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 195
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "dialogScrollGlow"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 196
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v11

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Class;

    const-class v4, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$EmptyView;

    aput-object v4, v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string/jumbo v17, "windowBackgroundGray"

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v2, v0, v3

    .line 197
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v19

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v1

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string/jumbo v26, "windowBackgroundWhiteBlueHeader"

    move-object/from16 v18, v2

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 198
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v8, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v8, v1

    const-string/jumbo v4, "textView2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "windowBackgroundWhiteRedText5"

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v0, v5

    .line 199
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v3, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v9, v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string/jumbo v14, "windowBackgroundWhiteGrayText3"

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v2, v0, v4

    .line 200
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v12, "listSelectorSDK21"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x5

    aput-object v2, v0, v4

    .line 201
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v8, v1

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const-string v12, "divider"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v2, v0, v1

    .line 194
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 0

    .line 183
    iput p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->currentPanTranslationProgress:F

    .line 184
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 185
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onHide()V
    .locals 3

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 171
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 172
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "doneItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;)V

    .line 174
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string/jumbo v1, "sortItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 178
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 179
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 2

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressOpenTemplates(Z)V

    goto :goto_0

    .line 81
    :cond_0
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->SORT:I

    if-lt p1, v0, :cond_1

    invoke-static {}, Lorg/fork/enums/TemplatesSortingType;->values()[Lorg/fork/enums/TemplatesSortingType;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    .line 82
    invoke-static {}, Lorg/fork/enums/TemplatesSortingType;->values()[Lorg/fork/enums/TemplatesSortingType;

    move-result-object v1

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    .line 83
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesSortingType(Lorg/fork/enums/TemplatesSortingType;)V

    .line 84
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 85
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    .line 114
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    const/16 p1, 0x34

    .line 115
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 116
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_1

    .line 118
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 121
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/16 p2, 0xd

    .line 123
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 127
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 129
    :goto_1
    iput-boolean v1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->ignoreLayout:Z

    .line 130
    iget p2, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    if-eq p2, p1, :cond_3

    .line 131
    iput p1, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    .line 132
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 133
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListAdapter()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    move-result-object p1

    iget p2, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->paddingRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 135
    :cond_3
    iput-boolean v2, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->ignoreLayout:Z

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 158
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 159
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v2, 0x18

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 162
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "doneItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 164
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListLayoutManager()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 165
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyView()V

    .line 166
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 153
    invoke-direct {p0}, Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lorg/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
