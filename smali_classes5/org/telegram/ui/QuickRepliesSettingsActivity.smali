.class public Lorg/telegram/ui/QuickRepliesSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "QuickRepliesSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private explanationRow:I

.field private listAdapter:Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private reply1Row:I

.field private reply2Row:I

.field private reply3Row:I

.field private reply4Row:I

.field private rowCount:I

.field private textCells:[Lorg/telegram/ui/Cells/EditTextSettingsCell;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/ui/Cells/EditTextSettingsCell;

    .line 51
    iput-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->textCells:[Lorg/telegram/ui/Cells/EditTextSettingsCell;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply1Row:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply2Row:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply3Row:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply4Row:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/QuickRepliesSettingsActivity;)[Lorg/telegram/ui/Cells/EditTextSettingsCell;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->textCells:[Lorg/telegram/ui/Cells/EditTextSettingsCell;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/QuickRepliesSettingsActivity;)I
    .locals 0

    .line 38
    iget p0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->explanationRow:I

    return p0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->VoipQuickReplies:I

    const-string v2, "VoipQuickReplies"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/QuickRepliesSettingsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/QuickRepliesSettingsActivity$1;-><init>(Lorg/telegram/ui/QuickRepliesSettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 84
    new-instance v0, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/QuickRepliesSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listAdapter:Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;

    .line 86
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    .line 87
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 90
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 91
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 92
    iget-object v3, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x33

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listAdapter:Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
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

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
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

    .line 235
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    aput-object v4, v3, v11

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteHintText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v11

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-string v28, "divider"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v11

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v28, 0x0

    const-string v30, "windowBackgroundWhiteValueText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 55
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->rowCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 58
    iput v1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply1Row:I

    add-int/lit8 v0, v1, 0x1

    .line 59
    iput v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply2Row:I

    add-int/lit8 v1, v0, 0x1

    .line 60
    iput v1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply3Row:I

    add-int/lit8 v0, v1, 0x1

    .line 61
    iput v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->reply4Row:I

    add-int/lit8 v1, v0, 0x1

    .line 62
    iput v1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->explanationRow:I

    return v2
.end method

.method public onFragmentDestroy()V
    .locals 5

    .line 101
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 102
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->textCells:[Lorg/telegram/ui/Cells/EditTextSettingsCell;

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 105
    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    .line 106
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "quick_reply_msg"

    if-nez v3, :cond_0

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/QuickRepliesSettingsActivity;->listAdapter:Lorg/telegram/ui/QuickRepliesSettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
