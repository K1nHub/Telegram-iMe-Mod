.class public final Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$Companion;,
        Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;,
        Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;,
        Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;,
        Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeleteServiceMessagesBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteServiceMessagesBottomSheet.kt\ncom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,834:1\n68#2,4:835\n40#2:839\n56#2:840\n75#2:841\n11335#3:842\n11670#3,3:843\n37#4,2:846\n*S KotlinDebug\n*F\n+ 1 DeleteServiceMessagesBottomSheet.kt\ncom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet\n*L\n254#1:835,4\n254#1:839\n254#1:840\n254#1:841\n327#1:842\n327#1:843,3\n328#1:846,2\n*E\n"
.end annotation


# instance fields
.field private final bottomButtons$delegate:Lkotlin/Lazy;

.field private final buttonsLayout$delegate:Lkotlin/Lazy;

.field private final chatId:J

.field private ignoreLayout:Z

.field private final isChannel:Z

.field private final isGroup:Z

.field private itemWidth:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final migratedChatId:J

.field private final migratedChatMaxMessageId:I

.field private scrollOffsetY:I

.field private final selectedFiltersCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final shadowAnimation:[Landroid/animation/AnimatorSet;

.field private final shadows$delegate:Lkotlin/Lazy;

.field private final titleTextView$delegate:Lkotlin/Lazy;

.field private final topicId:I


# direct methods
.method public static synthetic $r8$lambda$2pTxt47TG_CkB1YJpOm83ibFrPU(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->initListView$lambda$5$lambda$4(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MTnGXv1ASSU4nCRw-oa9_vVsls8(Ljava/lang/Runnable;Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getBottomDialogButtons$lambda$12$lambda$11(Ljava/lang/Runnable;Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YypONfimPXRjgRVr_BACA5i0Hek(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->showPeriodSelectionDialog$lambda$10(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZJIJI)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 63
    iput-boolean v2, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isGroup:Z

    .line 72
    new-instance v4, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$titleTextView$2;

    invoke-direct {v4, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$titleTextView$2;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-static {v4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    .line 73
    new-instance v4, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$shadows$2;

    invoke-direct {v4, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$shadows$2;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-static {v4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->shadows$delegate:Lkotlin/Lazy;

    .line 74
    new-instance v4, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listView$2;

    invoke-direct {v4, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listView$2;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-static {v4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->listView$delegate:Lkotlin/Lazy;

    .line 75
    new-instance v4, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$listAdapter$2;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V

    invoke-static {v4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    .line 76
    new-instance v4, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2;

    invoke-direct {v4, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$bottomButtons$2;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-static {v4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->bottomButtons$delegate:Lkotlin/Lazy;

    .line 77
    new-instance v4, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$buttonsLayout$2;

    invoke-direct {v4, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$buttonsLayout$2;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-static {v4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->buttonsLayout$delegate:Lkotlin/Lazy;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/AnimatorSet;

    .line 78
    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->shadowAnimation:[Landroid/animation/AnimatorSet;

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v3

    .line 90
    :goto_0
    iput-boolean v2, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    move-wide v6, p4

    .line 91
    iput-wide v6, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->chatId:J

    move/from16 v6, p6

    .line 92
    iput v6, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->topicId:I

    move-wide/from16 v6, p7

    .line 93
    iput-wide v6, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->migratedChatId:J

    move/from16 v6, p9

    .line 94
    iput v6, v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->migratedChatMaxMessageId:I

    .line 95
    sget-object v6, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    invoke-virtual {v6, v2}, Lcom/iMe/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;

    invoke-direct {v2, p0, p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$CustomContainerView;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V

    .line 98
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v3

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v10, 0x0

    move p1, v3

    move p2, v4

    move p3, v6

    move p4, v7

    move/from16 p5, v8

    move/from16 p6, v9

    move/from16 p7, v10

    .line 99
    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 97
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v6, 0x33

    const/16 v10, 0x30

    move p1, v3

    move p2, v4

    move p3, v6

    move/from16 p7, v10

    .line 111
    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x38

    const/16 v4, 0x33

    const/4 v6, -0x1

    .line 123
    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 121
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v5

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x53

    const/4 v8, 0x0

    move p1, v3

    move p2, v4

    move p3, v5

    move/from16 p5, v8

    .line 131
    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getButtonsLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v3, 0x30

    const/16 v4, 0x53

    .line 143
    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 141
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$getBackgroundPaddingLeft$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method public static final synthetic access$getBackgroundPaddingTop$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I
    .locals 0

    .line 61
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getBottomDialogButtons(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Ljava/lang/Runnable;)[Landroid/widget/TextView;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getBottomDialogButtons(Ljava/lang/Runnable;)[Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->ignoreLayout:Z

    return p0
.end method

.method public static final synthetic access$getItemWidth$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->itemWidth:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->scrollOffsetY:I

    return p0
.end method

.method public static final synthetic access$getSelectedFiltersCodes$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getServiceMessageTypeStringByCode(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;I)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getServiceMessageTypeStringByCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getShadowAnimation$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic access$getShadowDrawable$p$s211123774(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getShadows(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/view/View;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initButtonsLayout(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->initButtonsLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->initListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initShadows(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/view/View;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->initShadows()[Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTitleTextView(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->initTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isChannel$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    return p0
.end method

.method public static final synthetic access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->ignoreLayout:Z

    return-void
.end method

.method public static final synthetic access$setItemWidth$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->itemWidth:I

    return-void
.end method

.method public static final synthetic access$showPeriodSelectionDialog(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->showPeriodSelectionDialog()V

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->updateLayout()V

    return-void
.end method

.method private final getBottomButtons()[Landroid/widget/TextView;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->bottomButtons$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView;

    return-object v0
.end method

.method private final getBottomDialogButtons(Ljava/lang/Runnable;)[Landroid/widget/TextView;
    .locals 12

    const/16 v0, 0x40

    .line 345
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0xa

    .line 346
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 348
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const-string v3, "fonts/rmedium.ttf"

    .line 349
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/widget/TextView;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$getBottomDialogButtons$1;

    invoke-direct {v8, v7}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$getBottomDialogButtons$1;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-static {v8, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 365
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v7, 0x11

    .line 366
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 367
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 368
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v7, 0x1

    .line 369
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 370
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez v6, :cond_0

    .line 372
    sget v9, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v10, "Cancel"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 373
    :cond_0
    sget v9, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v10, "Delete"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    const-string v10, "when (i) {\n             \u2026Delete)\n                }"

    .line 371
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "getDefault()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    const/16 v9, 0xe

    int-to-float v9, v9

    .line 376
    invoke-virtual {v8, v7, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 377
    invoke-virtual {v8, v2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$getBottomDialogButtons$1;->setTextColor(I)V

    .line 378
    new-instance v7, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v7, p1, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 363
    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private static final getBottomDialogButtons$lambda$12$lambda$11(Ljava/lang/Runnable;Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/view/View;)V
    .locals 1

    const-string v0, "$onFiltersSelectionConfirmedAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    const-class v0, Lcom/iMe/services/ServiceMessagesRemovingService;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget p0, Lorg/telegram/messenger/R$string;->already_removing:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getInternalString(R.string.already_removing)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_1

    .line 383
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 385
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private final getButtonsLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->buttonsLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;

    return-object v0
.end method

.method private final getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    return-object v0
.end method

.method private final getServiceMessageTypeStringByCode(I)Ljava/lang/String;
    .locals 10

    .line 395
    sget-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    iget-boolean v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {v0, p1, v1}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getByCode(IZ)Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object p1

    sget-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v9, "..."

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto/16 :goto_0

    .line 523
    :pswitch_0
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    if-eqz p1, :cond_0

    .line 526
    sget p1, Lorg/telegram/messenger/R$string;->ActionTTLChannelChanged:I

    const-string v0, "ActionTTLChannelChanged"

    .line 524
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 531
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->ActionTTLChanged:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v9, v0, v1

    const-string v3, "ActionTTLChanged"

    .line 529
    invoke-static {v3, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 518
    :pswitch_1
    sget p1, Lorg/telegram/messenger/R$string;->MessageLifetimeChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v9, v0, v1

    aput-object v9, v0, v2

    const-string v3, "MessageLifetimeChanged"

    .line 516
    invoke-static {v3, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 513
    :pswitch_2
    sget p1, Lorg/telegram/messenger/R$string;->ActionGroupCallInvited:I

    const-string v0, "ActionGroupCallInvited"

    .line 511
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 507
    :pswitch_3
    sget p1, Lorg/telegram/messenger/R$string;->ActionGroupCallScheduled:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v9, v0, v1

    const-string v3, "ActionGroupCallScheduled"

    .line 505
    invoke-static {v3, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 477
    :pswitch_4
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    if-eqz p1, :cond_1

    .line 479
    sget p1, Lorg/telegram/messenger/R$string;->service_messages_variants:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 482
    sget v3, Lorg/telegram/messenger/R$string;->ActionGroupCallStarted:I

    const-string v4, "ActionGroupCallJustStarted"

    .line 480
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 486
    sget v3, Lorg/telegram/messenger/R$string;->ActionChannelCallEnded:I

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v9, v4, v1

    const-string v5, "ActionChannelCallEnded"

    .line 484
    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 478
    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 492
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->service_messages_variants:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 495
    sget v3, Lorg/telegram/messenger/R$string;->ActionGroupCallStarted:I

    const-string v4, "ActionGroupCallStarted"

    .line 493
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 499
    sget v3, Lorg/telegram/messenger/R$string;->ActionGroupCallEndedBy:I

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v9, v4, v1

    const-string v5, "ActionGroupCallEndedBy"

    .line 497
    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 491
    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 473
    :pswitch_5
    sget p1, Lorg/telegram/messenger/R$string;->ActionUserWithinRadius:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v9, v0, v1

    const-string v3, "ActionUserWithinRadius"

    .line 471
    invoke-static {v3, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 468
    :pswitch_6
    sget p1, Lorg/telegram/messenger/R$string;->ActionTakeScreenshoot:I

    const-string v0, "ActionTakeScreenshoot"

    .line 466
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 460
    :pswitch_7
    sget p1, Lorg/telegram/messenger/R$string;->PaymentSuccessfullyPaid:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v1

    aput-object v9, v3, v2

    aput-object v9, v3, v0

    const-string v0, "PaymentSuccessfullyPaid"

    .line 458
    invoke-static {v0, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 454
    :pswitch_8
    sget p1, Lorg/telegram/messenger/R$string;->ActionUserScored:I

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v9, v0, v1

    const-string v3, "ActionUserScored"

    .line 452
    invoke-static {v3, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 449
    :pswitch_9
    sget p1, Lorg/telegram/messenger/R$string;->ActionPinnedNoText:I

    const-string v0, "ActionPinnedNoText"

    .line 447
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 444
    :pswitch_a
    sget p1, Lorg/telegram/messenger/R$string;->ActionInviteUser:I

    const-string v0, "ActionInviteUser"

    .line 442
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 439
    :pswitch_b
    sget p1, Lorg/telegram/messenger/R$string;->ActionLeftUser:I

    const-string v0, "ActionLeftUser"

    .line 437
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 432
    :pswitch_c
    sget p1, Lorg/telegram/messenger/R$string;->service_messages_variants:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 433
    sget v3, Lorg/telegram/messenger/R$string;->ActionAddUserSelfMega:I

    const-string v4, "ActionAddUserSelfMega"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 434
    sget v3, Lorg/telegram/messenger/R$string;->ActionAddUser:I

    const-string v4, "ActionAddUser"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 431
    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 422
    :pswitch_d
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    if-eqz p1, :cond_2

    .line 425
    sget p1, Lorg/telegram/messenger/R$string;->ActionChannelRemovedPhoto:I

    const-string v0, "ActionChannelRemovedPhoto"

    .line 423
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 428
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->ActionRemovedPhoto:I

    const-string v0, "ActionRemovedPhoto"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 413
    :pswitch_e
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    if-eqz p1, :cond_3

    .line 416
    sget p1, Lorg/telegram/messenger/R$string;->ActionChannelChangedPhoto:I

    const-string v0, "ActionChannelChangedPhoto"

    .line 414
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 419
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->ActionChangedPhoto:I

    const-string v0, "ActionChangedPhoto"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 401
    :pswitch_f
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    if-eqz p1, :cond_4

    .line 404
    sget p1, Lorg/telegram/messenger/R$string;->ActionChannelChangedTitle:I

    const-string v0, "ActionChannelChangedTitle"

    .line 402
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 409
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->ActionChangedTitle:I

    const-string v0, "ActionChangedTitle"

    .line 407
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 398
    :pswitch_10
    sget p1, Lorg/telegram/messenger/R$string;->ActionCreateGroup:I

    const-string v0, "ActionCreateGroup"

    .line 396
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    const-string p1, "text"

    .line 538
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "un1"

    move-object v5, v9

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "un2"

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "getDefault()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getServiceMessagesRemovingServiceIntent(I)Landroid/content/Intent;
    .locals 4

    .line 542
    new-instance v0, Landroid/content/Intent;

    .line 543
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/iMe/services/ServiceMessagesRemovingService;

    .line 542
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 546
    iget-wide v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->chatId:J

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 547
    iget v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->topicId:I

    const-string v2, "topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    iget-wide v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->migratedChatId:J

    const-string v3, "migrated_chat_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 551
    iget v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->migratedChatMaxMessageId:I

    const-string v2, "migrated_chat_max_message_id"

    .line 549
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    iget-boolean v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    const-string v2, "is_channel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 554
    iget-boolean v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isGroup:Z

    const-string v2, "is_group"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "min_date"

    .line 555
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    const-string v1, "selected_filters_codes"

    .line 556
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method

.method private final getShadows()[Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->shadows$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final initButtonsLayout()Landroid/widget/FrameLayout;
    .locals 8

    .line 239
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 240
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 241
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 242
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getBottomButtons()[Landroid/widget/TextView;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 243
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :cond_0
    const/4 v5, 0x5

    :goto_1
    or-int/lit8 v5, v5, 0x10

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x42100000    # 36.0f

    .line 247
    invoke-static {v6, v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    .line 245
    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->access$getShadows(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)[Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    goto :goto_2

    .line 40
    :cond_2
    new-instance v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda$7$$inlined$doOnLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initButtonsLayout$lambda$7$$inlined$doOnLayout$1;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_2
    return-object v0
.end method

.method private final initListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;
    .locals 4

    .line 184
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    invoke-direct {v1, p0, v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 192
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 193
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 195
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 196
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v2, 0x1

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 198
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX_CELL:I

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 199
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 200
    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$2$1;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$2$1;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 205
    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v1
.end method

.method private static final initListView$lambda$5$lambda$4(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/view/View;I)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 207
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 208
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 209
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    sget-object p2, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {p2, v0}, Lcom/iMe/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getBottomButtons()[Landroid/widget/TextView;

    move-result-object p1

    aget-object p1, p1, v1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 213
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v0, :cond_9

    .line 214
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setChecked(Z)V

    .line 215
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 216
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_3
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    sget-object v0, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    iget-boolean v2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {v0, v2}, Lcom/iMe/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 219
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 220
    sget-object p1, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {p1, v0}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getValues(Z)[Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object p1

    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v3, p1, v0

    .line 221
    iget-boolean v4, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {v3, v4}, Lcom/iMe/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result v4

    add-int/lit8 v5, p2, -0x1

    if-eq v4, v5, :cond_4

    sget-object v4, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    if-eq v3, v4, :cond_4

    .line 222
    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {v3, v5}, Lcom/iMe/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_5
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isSelectAllEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 230
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    sget-object p2, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {p2, v0}, Lcom/iMe/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_7
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getBottomButtons()[Landroid/widget/TextView;

    move-result-object p1

    aget-object p1, p1, v1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListAdapter()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ServiceMessagesTypesAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final initShadows()[Landroid/view/View;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 173
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 176
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 177
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v1, v0, v2

    .line 179
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    aput-object v1, v0, v3

    return-object v0
.end method

.method private final initTitleTextView()Landroid/widget/TextView;
    .locals 3

    .line 160
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 162
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 163
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x10

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    sget v1, Lorg/telegram/messenger/R$string;->service_messages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v1, 0x12

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    return-object v0
.end method

.method private final isSelectAllEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 565
    :goto_0
    sget-object v2, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    iget-boolean v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getValues(Z)[Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    if-eqz v0, :cond_1

    .line 566
    iget-boolean v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getValues(Z)[Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object v2

    aget-object v2, v2, v1

    .line 567
    sget-object v3, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    if-eq v2, v3, :cond_0

    .line 568
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->selectedFiltersCodes:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->isChannel:Z

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/ServiceMessageType;->getCode(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private final runShadowAnimation(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 291
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1, v0, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 293
    :cond_3
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 294
    :cond_4
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0x96

    .line 295
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v4, v3, [Landroid/animation/Animator;

    .line 298
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v5

    aget-object v5, v5, v0

    .line 299
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    if-eqz p1, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    aput v7, v3, v0

    .line 297
    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v0

    .line 296
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 303
    new-instance v3, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;

    invoke-direct {v3, p0, p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$runShadowAnimation$1$1;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 320
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 294
    aput-object v2, v1, v0

    :cond_6
    return-void
.end method

.method private final setScrollOffsetY(I)V
    .locals 2

    .line 280
    iput p1, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->scrollOffsetY:I

    .line 281
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 282
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 283
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getShadows()[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 284
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private final showPeriodSelectionDialog()V
    .locals 7

    .line 325
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    sget v1, Lorg/telegram/messenger/R$string;->erasing_period:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 327
    invoke-static {}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->values()[Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    move-result-object v1

    .line 11335
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    .line 327
    invoke-virtual {v6}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->getStringRes()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    .line 11671
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 38
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 328
    new-instance v2, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 340
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showPeriodSelectionDialog$lambda$10(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int p1, v0

    .line 330
    sget-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->Companion:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;

    invoke-virtual {v0, p2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;->getByCode(I)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    move-result-object p2

    .line 331
    sget-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->ALL_TIME:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    if-ne p2, v0, :cond_0

    .line 332
    invoke-virtual {p2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->getPeriod()I

    move-result p1

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->getPeriod()I

    move-result p2

    sub-int/2addr p1, p2

    .line 336
    :goto_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 337
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getServiceMessagesRemovingServiceIntent(I)Landroid/content/Intent;

    move-result-object p0

    .line 336
    invoke-virtual {p2, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private final updateLayout()V
    .locals 3

    .line 260
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->setScrollOffsetY(I)V

    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->getListView()Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$initListView$1;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 270
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->runShadowAnimation(Z)V

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 272
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->runShadowAnimation(Z)V

    .line 274
    :goto_0
    iget v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->scrollOffsetY:I

    if-eq v0, v1, :cond_2

    .line 275
    invoke-direct {p0, v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;->setScrollOffsetY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
