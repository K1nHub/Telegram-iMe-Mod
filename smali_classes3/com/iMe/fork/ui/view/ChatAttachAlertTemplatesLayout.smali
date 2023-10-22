.class public final Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertTemplatesLayout.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$EmptyView;,
        Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatAttachAlertTemplatesLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatAttachAlertTemplatesLayout.kt\ncom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,523:1\n262#2,2:524\n260#2:528\n262#2,2:529\n13579#3,2:526\n*S KotlinDebug\n*F\n+ 1 ChatAttachAlertTemplatesLayout.kt\ncom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout\n*L\n414#1:524,2\n431#1:528\n440#1:529,2\n416#1:526,2\n*E\n"
.end annotation


# instance fields
.field private bottomPaddingRow:I

.field private currentPanTranslationProgress:F

.field private final delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

.field private final emptyView$delegate:Lkotlin/Lazy;

.field private headerRow:I

.field private ignoreLayout:Z

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listLayoutManager$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private rowCount:I

.field private final sortItem$delegate:Lkotlin/Lazy;

.field private final templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private templatesStartRow:I

.field private topPadding:I

.field private topPaddingRow:I


# direct methods
.method public static synthetic $r8$lambda$2SnAq_QQJ7x21x1uuATChx6_TKI(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->setupListView$lambda$10$lambda$9(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$73hGX4mQGPUrwzsxCw4MjJiruOw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->initEmptyView$lambda$6$lambda$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zWVK0ss_oAEzNZqFWpE4HwKnZ04(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->setupListView$lambda$10$lambda$8(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)V

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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 52
    iput-object p4, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    .line 57
    new-instance p1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$sortItem$2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->sortItem$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$emptyView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$emptyView$2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->emptyView$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listLayoutManager$2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->listLayoutManager$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listAdapter$2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->listAdapter$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$listView$2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->listView$delegate:Lkotlin/Lazy;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    .line 75
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object p1

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->setupListView()V

    .line 78
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    .line 79
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->loadTemplates()V

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 81
    sget p2, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public static final synthetic access$getBottomPaddingRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->bottomPaddingRow:I

    return p0
.end method

.method public static final synthetic access$getHeaderRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->headerRow:I

    return p0
.end method

.method public static final synthetic access$getParentAlert$p$s-1709477308(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object p0
.end method

.method public static final synthetic access$getResourcesProvider$p$s-1709477308(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getTemplates$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTemplatesStartRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templatesStartRow:I

    return p0
.end method

.method public static final synthetic access$getTopPadding$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    return p0
.end method

.method public static final synthetic access$getTopPaddingRow$p(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPaddingRow:I

    return p0
.end method

.method public static final synthetic access$initEmptyView(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->initEmptyView()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListLayoutManager(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->initListLayoutManager()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->initListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSortItem(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->initSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateEmptyViewPosition(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private final getEmptyView()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->emptyView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    return-object v0
.end method

.method private final getListLayoutManager()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->listLayoutManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    return-object v0
.end method

.method private final getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    return-object v0
.end method

.method private final getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->sortItem$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method private final initEmptyView()Landroid/widget/LinearLayout;
    .locals 12

    .line 282
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 284
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    .line 285
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 286
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 287
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    .line 288
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v6

    .line 289
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 287
    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 291
    sget v5, Lorg/telegram/messenger/R$drawable;->stickers_empty:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v5, -0x2

    .line 293
    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-static {v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 296
    sget v5, Lorg/telegram/messenger/R$string;->chat_templates_list_header:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 298
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 299
    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v2, 0x28

    .line 300
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v4, v3, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 304
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    sget-object v1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method private static final initEmptyView$lambda$6$lambda$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final initListLayoutManager()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;
    .locals 4

    .line 321
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v2

    .line 320
    new-instance v3, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/content/Context;ILcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;)V

    .line 356
    invoke-virtual {v3}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setSkipFirstItem()V

    return-object v3
.end method

.method private final initListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;
    .locals 2

    .line 309
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    invoke-direct {v1, v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private final initSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 3

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 280
    sget v1, Lcom/iMe/common/IdFabric$Menu;->SORT:I

    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0
.end method

.method private final loadTemplates()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    .line 403
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 404
    sget-object v1, Lcom/iMe/fork/controller/TemplatesController;->Companion:Lcom/iMe/fork/controller/TemplatesController$Companion;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/TemplatesController$Companion;->getInstance(I)Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateRows()V

    .line 407
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListAdapter()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 408
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyView()V

    .line 409
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    return-void
.end method

.method private final setupListView()V
    .locals 2

    .line 360
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 362
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x1

    .line 363
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 364
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListAdapter()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 365
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListLayoutManager()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 366
    new-instance v1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 371
    new-instance v1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 377
    new-instance v1, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$setupListView$1$3;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$setupListView$1$3;-><init>(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private static final setupListView$lambda$10$lambda$8(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    instance-of p2, p1, Lcom/iMe/fork/ui/view/TemplateCell;

    if-eqz p2, :cond_0

    .line 368
    iget-object p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    check-cast p1, Lcom/iMe/fork/ui/view/TemplateCell;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TemplateCell;->getTemplate()Lcom/iMe/storage/domain/model/templates/TemplateModel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressSendMessage(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    :cond_0
    return-void
.end method

.method private static final setupListView$lambda$10$lambda$9(Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;Landroid/view/View;I)Z
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    instance-of p2, p1, Lcom/iMe/fork/ui/view/TemplateCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 373
    iget-object p0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    check-cast p1, Lcom/iMe/fork/ui/view/TemplateCell;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TemplateCell;->getTemplate()Lcom/iMe/storage/domain/model/templates/TemplateModel;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressSendMessage(Lcom/iMe/storage/domain/model/templates/TemplateModel;Z)V

    :cond_0
    return v0
.end method

.method private final updateEmptyView()V
    .locals 2

    .line 440
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private final updateEmptyViewPosition()V
    .locals 4

    .line 431
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 434
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 435
    :cond_2
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 436
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getEmptyView()Landroid/widget/LinearLayout;

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

    iget v2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->currentPanTranslationProgress:F

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 435
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 446
    iput v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPaddingRow:I

    add-int/lit8 v0, v1, 0x1

    .line 447
    iput v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->headerRow:I

    .line 448
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 449
    iput v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templatesStartRow:I

    goto :goto_0

    .line 451
    :cond_0
    iget v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templatesStartRow:I

    .line 452
    iget-object v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    .line 454
    :goto_0
    iget v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->rowCount:I

    iput v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->bottomPaddingRow:I

    return-void
.end method

.method private final updateSortItem()V
    .locals 10

    .line 413
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "updateSortItem$lambda$14"

    .line 414
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 262
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 416
    invoke-static {}, Lcom/iMe/fork/enums/TemplatesSortingType;->values()[Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v1

    .line 13579
    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 417
    sget-object v7, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    if-ne v7, v6, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    move v7, v3

    .line 419
    :goto_3
    sget v8, Lcom/iMe/common/IdFabric$Menu;->SORT:I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    add-int/2addr v8, v9

    if-eqz v7, :cond_3

    move v9, v3

    goto :goto_4

    .line 420
    :cond_3
    invoke-virtual {v6}, Lcom/iMe/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result v9

    .line 421
    :goto_4
    invoke-virtual {v6}, Lcom/iMe/fork/enums/TemplatesSortingType;->getNameResId()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    .line 418
    invoke-virtual {v0, v8, v9, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    .line 424
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

    .line 201
    sget p2, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    if-ne p1, p2, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->loadTemplates()V

    :cond_0
    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 1

    const/16 v0, 0x46

    .line 149
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 5

    .line 100
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    if-lez v0, :cond_3

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-ltz v0, :cond_5

    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    const/16 v1, 0xd

    .line 110
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getDelegate()Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    return-object v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListTopPadding()I

    move-result v0

    const/16 v1, 0x11

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getKoin(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    return v0
.end method

.method public bridge synthetic getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getMvpDelegate(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
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

    .line 207
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v2

    .line 209
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    .line 214
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    .line 207
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 216
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v11

    .line 218
    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/Class;

    .line 219
    const-class v4, Landroid/widget/Space;

    aput-object v4, v13, v1

    .line 223
    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v2

    .line 216
    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    aput-object v2, v0, v3

    .line 225
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v19

    new-array v4, v3, [Ljava/lang/Class;

    .line 228
    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v1

    const-string v5, "textView"

    .line 229
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    .line 233
    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v2

    move-object/from16 v21, v4

    .line 225
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 235
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v6

    .line 237
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v8, v3, [Ljava/lang/Class;

    .line 238
    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v8, v1

    const-string v4, "textView2"

    .line 239
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    .line 243
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    .line 235
    invoke-direct/range {v5 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v5, 0x3

    aput-object v2, v0, v5

    .line 245
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v7

    .line 247
    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v3, [Ljava/lang/Class;

    .line 248
    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v9, v1

    .line 249
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    .line 253
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/4 v13, 0x0

    move-object v6, v2

    .line 245
    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v2, v0, v4

    .line 255
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v6

    .line 257
    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 262
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    .line 255
    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v2, v0, v4

    .line 264
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Class;

    .line 267
    const-class v3, Landroid/view/View;

    aput-object v3, v8, v1

    .line 268
    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 271
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v7, 0x0

    move-object v5, v2

    .line 264
    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x6

    aput-object v2, v0, v1

    .line 206
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

    .line 195
    iput p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->currentPanTranslationProgress:F

    .line 196
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    .line 197
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getCurrentAccount()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 160
    sget v1, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onHide()V
    .locals 5

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 183
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v1, "doneItem"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 186
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v4, "sortItem"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 190
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 191
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 2

    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->delegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;->didPressOpenTemplates(Z)V

    goto :goto_0

    .line 91
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SORT:I

    if-lt p1, v0, :cond_1

    invoke-static {}, Lcom/iMe/fork/enums/TemplatesSortingType;->values()[Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_1

    .line 92
    invoke-static {}, Lcom/iMe/fork/enums/TemplatesSortingType;->values()[Lcom/iMe/fork/enums/TemplatesSortingType;

    move-result-object v1

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    .line 93
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSelectedTemplatesSortingType(Lcom/iMe/fork/enums/TemplatesSortingType;)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getSortItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/fork/enums/TemplatesSortingType;->getIconResId()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    .line 124
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

    .line 125
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 126
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_1

    .line 129
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

    .line 132
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_0
    const/16 p2, 0xd

    .line 134
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    move p1, v2

    .line 138
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 140
    :goto_1
    iput-boolean v1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->ignoreLayout:Z

    .line 141
    iget p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    if-eq p2, p1, :cond_3

    .line 142
    iput p1, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPadding:I

    .line 143
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 144
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListAdapter()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$ListAdapter;

    move-result-object p1

    iget p2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->topPaddingRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 146
    :cond_3
    iput-boolean v2, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->ignoreLayout:Z

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 169
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 170
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 171
    sget v1, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
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

    .line 174
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "doneItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 176
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListLayoutManager()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListLayoutManager$1;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 177
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateEmptyView()V

    .line 178
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->updateSortItem()V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout;->getListView()Lcom/iMe/fork/ui/view/ChatAttachAlertTemplatesLayout$initListView$1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
