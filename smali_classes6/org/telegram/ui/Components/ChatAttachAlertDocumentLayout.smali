.class public Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "ChatAttachAlertDocumentLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;,
        Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;
    }
.end annotation


# instance fields
.field private additionalTranslationY:F

.field private allowMusic:Z

.field private backgroundLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

.field private backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private canSelectOnlyImageFiles:Z

.field private currentAnimationType:I

.field private currentDir:Ljava/io/File;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private filtersView:Lorg/telegram/ui/Adapters/FiltersView;

.field private filtersViewAnimator:Landroid/animation/AnimatorSet;

.field private hasFiles:Z

.field private ignoreLayout:Z

.field public isSoundPicker:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

.field listAnimation:Landroid/animation/ValueAnimator;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private maxSelectedFiles:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegistered:Z

.field private scrolling:Z

.field private searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searching:Z

.field private selectedFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedFilesOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/ui/FilteredSearchView$MessageHashId;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private sendPressed:Z

.field private sortByName:Z

.field private sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method public static synthetic $r8$lambda$Gjtbc5ls4idFTHoRxt229GvzZww(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KI0K1DwlStoZHWootx99qYHvE1g(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;IFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$runAnimation$4(IFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PGtOOftkJ4hHqwemd47N7zADYGA(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QyLQFCIx4a_JNoCIV3CC45Ex7iM(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SpRDyAKTbulkw7elOe6MoeAIlyo(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$sortFileItems$6(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UzXO3YpFzwU2u1-b1zfUtDODa94(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vAxjUHmr-GQl0eGJntbw7rIY_f8(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->lambda$sortRecentItems$5(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v9, p4

    .line 214
    invoke-direct {v7, v1, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x0

    .line 157
    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    const/4 v11, -0x1

    .line 163
    iput v11, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    .line 190
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v10

    .line 216
    :goto_0
    iput-boolean v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->allowMusic:Z

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v10

    .line 217
    :goto_1
    iput-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    .line 218
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    iput-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    .line 219
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadRecentFiles()V

    .line 221
    iput-boolean v10, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searching:Z

    .line 223
    iget-boolean v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    if-nez v0, :cond_2

    .line 224
    iput-boolean v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 226
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    .line 227
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    .line 228
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 229
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_NOFS"

    .line 230
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    .line 231
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_SHARED"

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 233
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 234
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    .line 235
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 236
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 240
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v0, v10, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$2;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 271
    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v3, "Search"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const-string v2, "dialogTextBlack"

    .line 274
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 275
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const-string v2, "chat_messagePanelHint"

    .line 276
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/4 v1, 0x6

    .line 278
    iget-boolean v2, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_2

    :cond_3
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 279
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrContactSorting:I

    const-string v2, "AccDescrContactSorting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 281
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 283
    new-instance v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$3;

    iget-object v3, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v4, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 294
    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 296
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$4;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 323
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 324
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 325
    iget-object v13, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v15, 0x38

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 326
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 327
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-direct {v1, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 328
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v13, 0x30

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 329
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 332
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 351
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 352
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 353
    iget-object v12, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$6;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v6, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v12, v14}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 373
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 374
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 375
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 376
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v11, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    .line 380
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 417
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda4;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 518
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 528
    new-instance v0, Lorg/telegram/ui/Adapters/FiltersView;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Adapters/FiltersView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    .line 529
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda5;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 533
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const-string v1, "dialogBackground"

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 534
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/4 v1, -0x2

    invoke-static {v11, v1, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/16 v1, 0x2c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 536
    iget-object v0, v7, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 538
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    .line 539
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    .line 540
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/io/File;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)F
    .locals 0

    .line 92
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->additionalTranslationY:F

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)I
    .locals 0

    .line 92
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentAnimationType:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;I)I
    .locals 0

    .line 92
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentAnimationType:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/util/HashMap;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyView()V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canSelectOnlyImageFiles:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersViewAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/io/File;)Z
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/util/HashMap;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/HashMap;Ljava/util/ArrayList;ZILjava/lang/String;Z)V
    .locals 0

    .line 92
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searching:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searching:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    return-object p0
.end method

.method private canClosePicker()Z
    .locals 3

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 1137
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->prepareAnimation()V

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    .line 1139
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1140
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getTopForScroll()I

    move-result v1

    .line 1141
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1142
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    goto :goto_0

    .line 1144
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    .line 1146
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v0, 0x2

    .line 1148
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->runAnimation(I)V

    return v2

    :cond_1
    return v1
.end method

.method private checkDirectory(Ljava/io/File;)V
    .locals 7

    .line 978
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 980
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 981
    aget-object v1, p1, v0

    .line 982
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Telegram"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->checkDirectory(Ljava/io/File;)V

    goto :goto_2

    .line 986
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 987
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 988
    iput-object v1, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 989
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    .line 990
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 991
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    array-length v5, v4

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    goto :goto_1

    :cond_1
    const-string v4, "?"

    :goto_1
    iput-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    .line 992
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 993
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jpg"

    .line 994
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 995
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    .line 997
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getTopForScroll()I
    .locals 3

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1127
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1128
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    if-eqz v1, :cond_0

    .line 1129
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    return v2
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 13

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    if-ne v0, v1, :cond_0

    .line 420
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItem(I)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    move-result-object p2

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    .line 424
    :goto_0
    instance-of v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    if-eqz v0, :cond_c

    .line 425
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    .line 426
    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 428
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 429
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 431
    :goto_1
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-nez v2, :cond_3

    iget v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    sget v4, Lorg/telegram/messenger/R$drawable;->files_storage:I

    if-eq v2, v4, :cond_2

    sget v4, Lorg/telegram/messenger/R$drawable;->files_internal:I

    if-ne v2, v4, :cond_3

    :cond_2
    if-nez v1, :cond_3

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    goto/16 :goto_4

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 434
    iget p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    sget p2, Lorg/telegram/messenger/R$drawable;->files_gallery:I

    if-ne p1, p2, :cond_6

    .line 435
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 436
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_4

    .line 439
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    :cond_4
    move-object v11, v1

    .line 444
    new-instance v0, Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v5, 0x0

    sget-object v6, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v9, 0x0

    if-eqz v11, :cond_5

    move v10, v2

    goto :goto_2

    :cond_5
    move v10, v3

    :goto_2
    const/4 v12, 0x0

    move-object v4, v0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/PhotoPickerActivity;-><init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/ArrayList;IZLorg/telegram/ui/ChatActivity;Z)V

    .line 445
    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoPickerActivity;->setDocumentsPicker(Z)V

    .line 446
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V

    .line 469
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/PhotoPickerActivity;->setMaxSelectedPhotos(IZ)V

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto/16 :goto_4

    .line 472
    :cond_6
    sget p2, Lorg/telegram/messenger/R$drawable;->files_music:I

    if-ne p1, p2, :cond_7

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz p1, :cond_d

    .line 474
    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startMusicSelectActivity()V

    goto/16 :goto_4

    .line 477
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getTopForScroll()I

    move-result p1

    .line 478
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->prepareAnimation()V

    .line 479
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    if-eqz p2, :cond_8

    .line 482
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    goto :goto_3

    .line 484
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    .line 486
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    .line 487
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 p1, 0x2

    .line 488
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->runAnimation(I)V

    goto :goto_4

    .line 490
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 491
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 492
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 493
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 495
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 496
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 497
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    .line 498
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->title:Ljava/lang/String;

    .line 500
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->prepareAnimation()V

    .line 501
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listFiles(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 503
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 506
    :cond_a
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->runAnimation(I)V

    .line 508
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 511
    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->onItemClick(Landroid/view/View;Ljava/lang/Object;)Z

    goto :goto_4

    .line 514
    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->onItemClick(Landroid/view/View;Ljava/lang/Object;)Z

    :cond_d
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)Z
    .locals 2

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    if-ne v0, v1, :cond_0

    .line 521
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItem(I)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    move-result-object p2

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    .line 525
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->onItemClick(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$3(Landroid/view/View;I)V
    .locals 1

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/FiltersView;->getFilterAt(I)Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    return-void
.end method

.method private synthetic lambda$runAnimation$4(IFLandroid/animation/ValueAnimator;)V
    .locals 4

    .line 585
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 588
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sub-float/2addr v2, p3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 589
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_0

    .line 596
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 597
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    sub-float/2addr v2, p3

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 600
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$sortFileItems$6(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 6

    .line 1027
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1029
    :cond_0
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 1032
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 1033
    iget-object v2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1

    :cond_3
    if-nez v0, :cond_7

    .line 1036
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1039
    :cond_4
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 1040
    iget-object p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long p1, v4, p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    if-lez p1, :cond_6

    return v1

    :cond_6
    return v3

    .line 1037
    :cond_7
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$sortRecentItems$5(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;)I
    .locals 2

    .line 1004
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    if-eqz v0, :cond_0

    .line 1005
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1006
    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1007
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1009
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1010
    iget-object p1, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-lez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private listFiles(Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x0

    .line 1173
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    .line 1174
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1175
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1176
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/sdcard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1177
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1178
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1179
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted_ro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1180
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    .line 1181
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1182
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1184
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    .line 1185
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    return v2

    .line 1189
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->AccessError:I

    const-string v1, "AccessError"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v0

    .line 1194
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 1200
    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string v1, "UnknownError"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v0

    .line 1203
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move p1, v0

    .line 1205
    :goto_0
    array-length v3, v1

    const-string v4, "Folder"

    const/4 v5, 0x0

    if-ge p1, v3, :cond_9

    .line 1206
    aget-object v3, v1, p1

    .line 1207
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_3

    .line 1210
    :cond_4
    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 1211
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 1212
    iput-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 1213
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1214
    sget v3, Lorg/telegram/messenger/R$drawable;->files_folder:I

    iput v3, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1215
    sget v3, Lorg/telegram/messenger/R$string;->Folder:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_2

    .line 1217
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    .line 1218
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    .line 1219
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1220
    array-length v7, v5

    if-le v7, v2, :cond_6

    array-length v7, v5

    sub-int/2addr v7, v2

    aget-object v5, v5, v7

    goto :goto_1

    :cond_6
    const-string v5, "?"

    :goto_1
    iput-object v5, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    .line 1221
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 1222
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    .line 1223
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1224
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    .line 1227
    :cond_8
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 1229
    :cond_9
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {p1, v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    const-string v1, ".."

    .line 1230
    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 1231
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 1232
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;

    .line 1233
    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$HistoryEntry;->dir:Ljava/io/File;

    if-nez v1, :cond_a

    .line 1234
    sget v1, Lorg/telegram/messenger/R$string;->Folder:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_4

    .line 1236
    :cond_a
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_4

    .line 1239
    :cond_b
    sget v1, Lorg/telegram/messenger/R$string;->Folder:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 1241
    :goto_4
    sget v1, Lorg/telegram/messenger/R$drawable;->files_folder:I

    iput v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1242
    iput-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 1243
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1244
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortFileItems()V

    .line 1245
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    .line 1246
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1247
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    .line 1248
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getTopForScroll()I

    move-result p1

    .line 1249
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    .line 1250
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return v2

    :catch_0
    move-exception p1

    .line 1196
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v0
.end method

.method private listRoots()V
    .locals 10

    const-string v0, "Telegram"

    const/4 v1, 0x0

    .line 1260
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    const/4 v2, 0x0

    .line 1261
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    .line 1262
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1264
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1266
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    .line 1267
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    .line 1277
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1278
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    .line 1279
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "ExternalFolderInfo"

    const-string v7, "SdCard"

    if-nez v5, :cond_1

    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1280
    :cond_1
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 1281
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1282
    sget v5, Lorg/telegram/messenger/R$string;->SdCard:I

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 1283
    sget v5, Lorg/telegram/messenger/R$drawable;->files_internal:I

    iput v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1284
    sget v5, Lorg/telegram/messenger/R$string;->ExternalFolderInfo:I

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    goto :goto_0

    .line 1286
    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->InternalStorage:I

    const-string v8, "InternalStorage"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 1287
    sget v5, Lorg/telegram/messenger/R$drawable;->files_storage:I

    iput v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1288
    sget v5, Lorg/telegram/messenger/R$string;->InternalFolderInfo:I

    const-string v8, "InternalFolderInfo"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 1290
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 1291
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1297
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "vfat"

    .line 1300
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "/mnt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1301
    :cond_5
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_6

    .line 1302
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1304
    :cond_6
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v5, v4, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1306
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1307
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    const-string v8, "/dev/block/vold"

    .line 1310
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "/mnt/secure"

    .line 1311
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "/mnt/asec"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "/mnt/obb"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "/dev/mapper"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "tmpfs"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1312
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x2f

    .line 1313
    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_8

    .line 1315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/storage/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1316
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v5, v4

    .line 1321
    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1323
    :try_start_2
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 1324
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sd"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1325
    sget v8, Lorg/telegram/messenger/R$string;->SdCard:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v8, "ExternalStorage"

    .line 1327
    sget v9, Lorg/telegram/messenger/R$string;->ExternalStorage:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 1329
    :goto_2
    sget v8, Lorg/telegram/messenger/R$string;->ExternalFolderInfo:I

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 1330
    sget v8, Lorg/telegram/messenger/R$drawable;->files_internal:I

    iput v8, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1331
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 1332
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v4

    .line 1334
    :try_start_3
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 1345
    :cond_a
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v2

    move-object v3, v1

    .line 1341
    :goto_3
    :try_start_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_b

    .line 1345
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 1347
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1355
    :cond_b
    :goto_4
    :try_start_7
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1357
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 1358
    iput-object v0, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    const-string v0, "AppFolderInfo"

    .line 1359
    sget v4, Lorg/telegram/messenger/R$string;->AppFolderInfo:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 1360
    sget v0, Lorg/telegram/messenger/R$drawable;->files_folder:I

    iput v0, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1361
    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 1365
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1368
    :cond_c
    :goto_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-nez v0, :cond_d

    .line 1369
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 1370
    sget v2, Lorg/telegram/messenger/R$string;->Gallery:I

    const-string v3, "Gallery"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 1371
    sget v2, Lorg/telegram/messenger/R$string;->GalleryInfo:I

    const-string v3, "GalleryInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 1372
    sget v2, Lorg/telegram/messenger/R$drawable;->files_gallery:I

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1373
    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 1374
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->allowMusic:Z

    if-eqz v0, :cond_e

    .line 1378
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 1379
    sget v2, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v3, "AttachMusic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 1380
    sget v2, Lorg/telegram/messenger/R$string;->MusicInfo:I

    const-string v3, "MusicInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 1381
    sget v2, Lorg/telegram/messenger/R$drawable;->files_music:I

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    .line 1382
    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 1383
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 1386
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    .line 1389
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1390
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_6
    if-eqz v1, :cond_10

    .line 1345
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    .line 1347
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1350
    :cond_10
    :goto_7
    throw v0
.end method

.method private onItemClick(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 7

    .line 798
    instance-of v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 799
    check-cast p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    .line 800
    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 803
    :cond_0
    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 804
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 805
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move p2, v2

    goto/16 :goto_0

    .line 809
    :cond_1
    iget-object v3, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_2

    .line 810
    sget p1, Lorg/telegram/messenger/R$string;->AccessError:I

    const-string p2, "AccessError"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v2

    .line 813
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canSelectOnlyImageFiles:Z

    if-eqz v3, :cond_3

    iget-object v3, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 814
    sget p1, Lorg/telegram/messenger/R$string;->PassportUploadNotImage:I

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "PassportUploadNotImage"

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v2

    .line 817
    :cond_3
    iget-object v3, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x7d000000

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide v5, 0xfa000000L

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 818
    :cond_5
    new-instance p1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v3, 0x6

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {p1, v0, p2, v3, v4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    .line 819
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setVeryLargeFile(Z)V

    .line 820
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return v2

    .line 823
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    if-ltz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    if-lt v3, v4, :cond_7

    .line 824
    sget p1, Lorg/telegram/messenger/R$string;->PassportUploadMaxReached:I

    new-array p2, v1, [Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Files"

    invoke-static {v1, v4, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "PassportUploadMaxReached"

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->showErrorBox(Ljava/lang/String;)V

    return v2

    .line 827
    :cond_7
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz v3, :cond_8

    iget-object v3, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isRingtone(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    .line 830
    :cond_8
    iget-object v3, p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    return v2

    .line 833
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v1

    .line 837
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->scrolling:Z

    goto :goto_3

    :cond_a
    :goto_1
    return v2

    .line 838
    :cond_b
    instance-of v0, p2, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_10

    .line 839
    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 840
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    .line 841
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 842
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 845
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_d

    return v2

    .line 848
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    :goto_2
    move p2, v2

    .line 854
    :goto_3
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v0, :cond_e

    .line 855
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 857
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p2, :cond_f

    move p2, v1

    goto :goto_4

    :cond_f
    const/4 p2, 0x2

    :goto_4
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    return v1

    :cond_10
    return v2
.end method

.method private prepareAnimation()V
    .locals 5

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 642
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method private runAnimation(I)V
    .locals 9

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 548
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentAnimationType:I

    const/4 v0, 0x0

    move v1, v0

    .line 550
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 551
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    const/4 v2, 0x2

    const/16 v3, 0x96

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne p1, v5, :cond_3

    .line 558
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    .line 559
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 560
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 561
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 562
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 563
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 564
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 565
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    new-array v0, v2, [F

    .line 568
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 570
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    .line 571
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 572
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v8, 0x3f733333    # 0.95f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 573
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 574
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 575
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 576
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 577
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 578
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 579
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/2addr v1, v5

    invoke-virtual {p0, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->backgroundListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    new-array v0, v2, [F

    .line 581
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    .line 584
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;IF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-ne p1, v5, :cond_4

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_3

    .line 623
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 625
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private sendSelectedPhotos(Ljava/util/HashMap;Ljava/util/ArrayList;ZILjava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;ZI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 903
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 906
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    .line 907
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 908
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 909
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 910
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;-><init>()V

    .line 911
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    instance-of v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_3

    .line 913
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 914
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 915
    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    goto :goto_1

    .line 917
    :cond_1
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    .line 919
    :goto_1
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    .line 920
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 921
    iget-boolean v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->isVideo:Z

    .line 922
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->caption:Ljava/lang/String;

    .line 923
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    .line 924
    iget-object v4, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->stickers:Ljava/util/ArrayList;

    iput-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->masks:Ljava/util/ArrayList;

    .line 925
    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    iput v1, v3, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;ZILjava/lang/String;Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .locals 3

    .line 1255
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    const-string v2, "AppName"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private sortFileItems()V
    .locals 2

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->currentDir:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortRecentItems()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateEmptyView()V
    .locals 4

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1108
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_0

    .line 1110
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->getItemCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1112
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 1113
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1100
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    .line 1101
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->additionalTranslationY:F

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateSearchButton()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 1120
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchFieldVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->hasFiles:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getButtonsHideOffset()I
    .locals 1

    const/16 v0, 0x3e

    .line 756
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 4

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 698
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_1

    if-eqz v2, :cond_1

    .line 700
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_1
    if-ltz v0, :cond_2

    if-eqz v2, :cond_2

    .line 701
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/16 v1, 0xd

    .line 704
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 722
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->getListTopPadding()I

    move-result v0

    const/4 v1, 0x5

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

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

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

.method getSelectedItemsCount()I
    .locals 2

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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

    .line 2282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2283
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dialogTextBlack"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "dialogScrollGlow"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2287
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v12, 0x0

    aput-object v3, v6, v12

    const/4 v9, 0x0

    const-string v10, "windowBackgroundGrayShadow"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2288
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v15, v3, v4

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2290
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "listSelectorSDK21"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 2293
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v4, v12

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    const-string v29, "windowBackgroundWhiteBlackText"

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2294
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v4, v3, v12

    const-string v4, "dateTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteGrayText3"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2295
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v4, v12

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    const-string v30, "checkbox"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2296
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "checkboxCheck"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v4, v12

    const-string v5, "thumbImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "files_folderIcon"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2298
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    or-int v15, v3, v4

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "files_folderIconBackground"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2299
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v5, v4, v12

    const-string v5, "extTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "files_iconText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isRingtone(Ljava/io/File;)Z
    .locals 8

    .line 863
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 865
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 867
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    sget-object v2, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->ringtoneSupportedMimeType:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 871
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->ringtoneSizeMax:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 872
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TooLargeError:I

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "TooLargeError"

    invoke-static {v5, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$string;->ErrorRingtoneSizeTooBig:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->ringtoneSizeMax:I

    div-int/lit16 v5, v5, 0x400

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "ErrorRingtoneSizeTooBig"

    invoke-static {v5, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v3

    .line 878
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 879
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x9

    .line 880
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 881
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p1, 0x7fffffff

    .line 886
    :goto_1
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->ringtoneDurationMax:I

    mul-int/lit16 v0, v0, 0x3e8

    if-le p1, v0, :cond_3

    .line 887
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TooLongError:I

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "TooLongError"

    invoke-static {v5, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$string;->ErrorRingtoneDurationTooLong:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->ringtoneDurationMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "ErrorRingtoneDurationTooLong"

    invoke-static {v5, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v3

    :cond_3
    return v2

    .line 868
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->InvalidFormatError:I

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "InvalidFormatError"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->ErrorRingtoneInvalidFormat:I

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ErrorInvalidRingtone"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v3
.end method

.method public loadRecentFiles()V
    .locals 11

    .line 933
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->isSoundPicker:Z

    if-eqz v0, :cond_7

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "duration"

    const-string v3, "_size"

    const-string v4, "mime_type"

    .line 934
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 941
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "is_music != 0"

    const/4 v9, 0x0

    const-string v10, "date_added DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 942
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 943
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 944
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    .line 945
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x4

    .line 946
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 948
    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->ringtoneDurationMax:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    cmp-long v3, v3, v8

    if-gtz v3, :cond_0

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->ringtoneSizeMax:I

    int-to-long v3, v3

    cmp-long v3, v5, v3

    if-gtz v3, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "audio/mpeg"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "audio/mpeg4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 952
    :cond_1
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$1;)V

    .line 953
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    .line 954
    iput-object v1, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    .line 955
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    .line 956
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 957
    array-length v6, v5

    if-le v6, v2, :cond_2

    array-length v6, v5

    sub-int/2addr v6, v2

    aget-object v2, v5, v6

    goto :goto_1

    :cond_2
    const-string v2, "?"

    :goto_1
    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    .line 958
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    .line 959
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".jpg"

    .line 960
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".gif"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".jpeg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 961
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    .line 963
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 965
    :cond_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 941
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 966
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 969
    :cond_7
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->checkDirectory(Ljava/io/File;)V

    .line 970
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortRecentItems()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 973
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1156
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canClosePicker()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1159
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 653
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiverRegistered:Z

    if-eqz v0, :cond_0

    .line 654
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 657
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 659
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 662
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onHide()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1164
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1165
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyViewPosition()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 7

    .line 669
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSendWithoutGroupingSubItemId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 670
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendSelectedItems(ZILjava/lang/String;ZZ)V

    goto :goto_1

    .line 671
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getOpenInSubItemId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 676
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSortFilesByName()V

    .line 677
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->sortFilesByName:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    .line 678
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortRecentItems()V

    .line 679
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortFileItems()V

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    .line 681
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortByName:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 3

    .line 729
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result p1

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 733
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v2, p1, :cond_1

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 736
    :cond_1
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    .line 738
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_2

    move p1, v1

    .line 742
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p1, 0x38

    .line 730
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 731
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    .line 744
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_4

    .line 745
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->ignoreLayout:Z

    .line 746
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v1, p1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 747
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->ignoreLayout:Z

    .line 749
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->filtersView:Lorg/telegram/ui/Adapters/FiltersView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 750
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1054
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onResume()V

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->notifyDataSetChanged()V

    .line 1058
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method onSelectedItemsCountChanged(I)V
    .locals 5

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSendWithoutGroupingSubItemId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p1, v3, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v4, v4, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubItemVisible(IZ)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "AccDescrSendFiles"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    const/4 p1, 0x0

    .line 1067
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->onSelectedItemsCountChanged(I)V

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getOpenInSubItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, p1, p1, v1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1071
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->searchAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1075
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listAdapter:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1076
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listRoots()V

    .line 1077
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateSearchButton()V

    .line 1078
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->updateEmptyView()V

    .line 1079
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->SelectFile:I

    const-string v2, "SelectFile"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 761
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method sendSelectedItems(ZILjava/lang/String;ZZ)V
    .locals 10

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 783
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->sendPressed:Z

    .line 784
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 785
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 786
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 788
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedMessages:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->selectedFilesOrder:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 791
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v1 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;ZZ)V

    .line 793
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setCanSelectOnlyImageFiles(Z)V
    .locals 0

    .line 899
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->canSelectOnlyImageFiles:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->delegate:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    return-void
.end method

.method public setMaxSelectedFiles(I)V
    .locals 0

    .line 895
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->maxSelectedFiles:I

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 709
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
