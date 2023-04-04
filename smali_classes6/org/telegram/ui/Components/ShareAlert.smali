.class public Lorg/telegram/ui/Components/ShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ShareAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;,
        Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$SearchField;,
        Lorg/telegram/ui/Components/ShareAlert$SwitchView;,
        Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;
    }
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private captionEditTextTopOffset:F

.field private chatActivityEnterViewAnimateFromTop:F

.field private commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private containerViewTop:I

.field private copyLinkOnEnd:Z

.field private currentPanTranslationY:F

.field private darkTheme:Z

.field private delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

.field private exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private frameLayout2:Landroid/widget/FrameLayout;

.field private fullyShown:Z

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private hasPoll:I

.field private isChannel:Z

.field lastOffset:I

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private linkToCopy:[Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

.field private loadingLink:Z

.field private paint:Landroid/graphics/Paint;

.field private panTranslationMoveLayout:Z

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private pickerBottomLayout:Landroid/widget/TextView;

.field private previousScrollOffsetY:I

.field private recentSearchObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private recentSearchObjectsById:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/RectF;

.field recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollOffsetY:I

.field private searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchIsVisible:Z

.field private searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

.field searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

.field private searchWasVisibleBeforeTopics:Z

.field private selectedCountView:Landroid/view/View;

.field protected selectedDialogTopics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedDialogs:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

.field private sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field protected sendingMessageObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private sendingText:[Ljava/lang/String;

.field private shadow:[Landroid/view/View;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

.field private sharesCountLayout:Landroid/widget/LinearLayout;

.field private showSendersName:Z

.field private sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

.field private textPaint:Landroid/text/TextPaint;

.field private topBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private topBeforeSwitch:I

.field private topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private updateSearchAdapter:Z

.field private writeButtonContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$0YR6HMVVth-wE8QgPL_dWVT27Qs(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$35wI_XMWHhNZ_EroLRgz7uZBGU0(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ShareAlert;->lambda$collapseTopics$12(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$40reoMky0xA7eoizm1x62yoyKfo(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4Z-EvLHvASUA9emxSiqXiMGTa2U(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$selectDialog$10(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5CEQJGBW7UI0LMT3nojiLwXYYdo(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8GfCuYv80yufWqJy3cpV_yXIw5o(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Crt-ATv-QsQUlShbOPkkP0Nid7s(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwxuZo6CliUuC7uPACVzrxBEdnU(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$1(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gt9Q3ZZSgWWFP0tn-h-WED8JtKg(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$6(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OGNnyNR1YIUWH9X5qGLuPlnweQo(Lorg/telegram/ui/Components/ShareAlert;ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$copyLink$19(ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PPsNVg9TMxlQyJ6XSWwJnGR9mbE(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$4(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$URK6ffMRkVqUeJT64ahMMwSe5dY(Lorg/telegram/ui/Components/ShareAlert;Landroid/widget/ImageView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$9(Landroid/widget/ImageView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Vki5u1UcE86ZkBq1-dIzaqeyAfk(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$0(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$el-p4DXYp1pcEIAJ3KnXgg0gSQg(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$16(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hPxtjJO5drzovSNetu0NKtrU-l8(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$14(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k0rT8sUTIxBc-GqL_x8wk9yMbCY(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$15(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wxFUwjMZZBvLopFp6c_nloycAYA(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xAZRHKYK5GDwd962jQFAkrltgrc(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->lambda$new$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNKFkZd9c3N6cem86dhlVLF096Y(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->lambda$onSendLongClick$13(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zev6KxsrhrzJcY-4nROnDpk_Fjc(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ShareAlert;->lambda$collapseTopics$11(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 456
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    .line 460
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/ChatActivity;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 464
    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/ChatActivity;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p6

    move-object/from16 v4, p11

    const/4 v5, 0x1

    .line 468
    invoke-direct {v0, v1, v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    .line 140
    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    new-array v7, v6, [Landroid/view/View;

    .line 144
    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-array v7, v6, [Landroid/animation/AnimatorSet;

    .line 145
    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    .line 146
    new-instance v7, Landroidx/collection/LongSparseArray;

    invoke-direct {v7}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    .line 147
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    const/4 v7, -0x1

    .line 149
    iput v7, v0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    const/4 v8, 0x0

    .line 150
    iput-boolean v8, v0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    .line 157
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->rect:Landroid/graphics/RectF;

    .line 158
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->paint:Landroid/graphics/Paint;

    .line 159
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    new-array v9, v6, [Ljava/lang/String;

    .line 166
    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    .line 189
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    .line 190
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1802
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    const v9, 0x7fffffff

    .line 2092
    iput v9, v0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 469
    iput-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 471
    instance-of v9, v1, Landroid/app/Activity;

    if-eqz v9, :cond_0

    .line 472
    move-object v9, v1

    check-cast v9, Landroid/app/Activity;

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    :cond_0
    move/from16 v9, p10

    .line 474
    iput-boolean v9, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    move-object/from16 v9, p2

    .line 476
    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 478
    iget-boolean v9, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    const-string v10, "dialogBackground"

    const-string v11, "voipgroup_inviteMembersBackground"

    if-eqz v9, :cond_1

    move-object v9, v11

    goto :goto_0

    :cond_1
    move-object v9, v10

    :goto_0
    iput-object v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    .line 479
    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v9, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 480
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    move/from16 v12, p9

    .line 482
    iput-boolean v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    .line 483
    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aput-object p7, v12, v8

    .line 484
    aput-object p8, v12, v5

    .line 485
    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    .line 486
    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .line 487
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    .line 488
    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aput-object p4, v12, v8

    .line 489
    aput-object p5, v12, v5

    .line 490
    iput-boolean v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    .line 492
    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ShareAlert$1;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-super {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 499
    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    .line 500
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v8

    :goto_1
    if-ge v13, v12, :cond_4

    .line 501
    iget-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    if-eqz v14, :cond_3

    .line 502
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 503
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isPublicPoll()Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v6

    goto :goto_2

    :cond_2
    move v14, v5

    :goto_2
    iput v14, v0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-ne v14, v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 512
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    .line 513
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 514
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    iput v12, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 515
    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-virtual {v12, v13, v14}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 516
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda14;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v12}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 528
    :cond_5
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$2;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$2;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 936
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 937
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 938
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 939
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v2, v3, v8, v3, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 941
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    .line 942
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v3, :cond_6

    move-object v3, v11

    goto :goto_4

    :cond_6
    move-object v3, v10

    :goto_4
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 944
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-eqz v2, :cond_7

    .line 945
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$3;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    .line 958
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v12, -0x1

    const/16 v13, 0x24

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0xb

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v15

    move/from16 p6, v16

    move/from16 p7, v17

    move/from16 p8, v18

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v2, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    :cond_7
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    .line 962
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v12, 0x3a

    const/16 v13, 0x53

    invoke-static {v7, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v2, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 964
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 965
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 966
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "dialogTextBlack"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 967
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "dialogTextGray2"

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 968
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "windowBackgroundWhiteGrayText2"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 969
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "actionBarWhiteSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 970
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$4;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 976
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 977
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v7, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 980
    new-instance v14, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v15, 0x4

    invoke-direct {v14, v1, v15}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 981
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$5;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$5;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 990
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$6;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$6;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 999
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1000
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v14, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    const-string v16, "dialogScrollGlow"

    if-eqz v14, :cond_8

    move-object v14, v11

    goto :goto_5

    :cond_8
    move-object/from16 v14, v16

    :goto_5
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1001
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1002
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1003
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 1004
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1005
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v14, 0x30

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v2, v8, v8, v8, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1006
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1007
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$7;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ShareAlert$7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v12}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1021
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda17;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1059
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1060
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v12, 0x33

    invoke-static {v7, v7, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$8;

    invoke-direct {v2, v0, v1, v4}, Lorg/telegram/ui/Components/ShareAlert$8;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1081
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1082
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v8, v8, v8, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1083
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1084
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v3, v13, v15}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1085
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$9;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$9;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1094
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1095
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1096
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 1097
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$10;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1111
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v13, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x33

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 p4, v13

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v19

    move/from16 p8, v20

    move/from16 p9, v21

    move/from16 p10, v22

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1113
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v3, :cond_9

    move-object v3, v11

    goto :goto_6

    :cond_9
    move-object/from16 v3, v16

    :goto_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1114
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1124
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$11;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$11;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1134
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$12;

    invoke-direct {v2, v0, v1, v4}, Lorg/telegram/ui/Components/ShareAlert$12;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1153
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1154
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v8, v8, v8, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1155
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1156
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, v13, v15, v8, v6}, Lorg/telegram/ui/Components/FillLastGridLayoutManager;-><init>(Landroid/content/Context;IILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1157
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$13;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$13;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 1163
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1173
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1174
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1175
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 1176
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1177
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$14;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ShareAlert$14;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1186
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/ShareAlert$15;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/ShareAlert$15;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1200
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1201
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_a

    move-object v6, v11

    goto :goto_7

    :cond_a
    move-object/from16 v6, v16

    :goto_7
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1203
    new-instance v2, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v6, v5}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 1205
    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v6, 0xc

    .line 1206
    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1207
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_b

    const-string v6, "voipgroup_searchBackground"

    .line 1208
    invoke-virtual {v2, v11, v6, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_b
    new-instance v3, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v3, v1, v2, v5, v4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 1211
    invoke-virtual {v3, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1212
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 1213
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, v8, v8}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1214
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    const-string v3, "voipgroup_nameText"

    if-eqz v2, :cond_c

    .line 1215
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1217
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v13, "NoResult"

    invoke-static {v13, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1219
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    .line 1220
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1221
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v13, -0x1

    const/16 v16, -0x1

    const/16 v18, 0x33

    const/16 v19, 0x0

    const/16 v20, 0x34

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 p4, v13

    move/from16 p5, v16

    move/from16 p6, v18

    move/from16 p7, v19

    move/from16 p8, v20

    move/from16 p9, v21

    move/from16 p10, v22

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v13, -0x1

    const/16 v20, 0x0

    move/from16 p4, v13

    move/from16 p8, v20

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1224
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v6

    invoke-direct {v2, v7, v6, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1225
    iget-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v6, :cond_d

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_d

    const/16 v6, 0x6f

    goto :goto_8

    :cond_d
    const/16 v6, 0x3a

    :goto_8
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1226
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v13, v6, v8

    .line 1227
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v6, v6, v8

    const-string v13, "dialogShadowLine"

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1228
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v6, v6, v8

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1229
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v6, v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1230
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v15, v15, v8

    invoke-virtual {v6, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-boolean v15, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v15, :cond_e

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v15, v15, v5

    if-eqz v15, :cond_e

    const/16 v15, 0x6f

    goto :goto_9

    :cond_e
    const/16 v15, 0x3a

    :goto_9
    invoke-static {v7, v15, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1234
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v6

    const/16 v15, 0x53

    invoke-direct {v2, v7, v6, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1235
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1236
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    new-instance v15, Landroid/view/View;

    invoke-direct {v15, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v15, v6, v5

    .line 1237
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string v15, "dialogShadowLine"

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1238
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v15, v15, v5

    invoke-virtual {v6, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const-string v6, "fonts/rmedium.ttf"

    if-nez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v2, v2, v8

    if-eqz v2, :cond_f

    goto :goto_a

    .line 1291
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, v5

    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_11

    .line 1241
    :cond_10
    :goto_a
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    .line 1242
    iget-boolean v15, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v15, :cond_11

    move-object v10, v11

    :cond_11
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    iget-boolean v11, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v11, :cond_12

    const-string v11, "voipgroup_listSelector"

    goto :goto_b

    :cond_12
    const-string v11, "listSelectorSDK21"

    :goto_b
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorWithBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1243
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    iget-boolean v10, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    const-string v11, "voipgroup_listeningText"

    const-string v15, "dialogTextBlue2"

    if-eqz v10, :cond_13

    move-object v10, v11

    goto :goto_c

    :cond_13
    move-object v10, v15

    :goto_c
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1244
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v2, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1245
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v16, 0x12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v2, v10, v8, v12, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1246
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1247
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1248
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_14

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-eqz v2, :cond_14

    .line 1249
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->VoipGroupCopySpeakerLink:I

    const-string v12, "VoipGroupCopySpeakerLink"

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1251
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->CopyLink:I

    const-string v12, "CopyLink"

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const/16 v12, 0x53

    invoke-static {v7, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v2, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    if-lez v2, :cond_18

    .line 1267
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 1268
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v10

    if-nez v10, :cond_18

    .line 1269
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    .line 1270
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1271
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x10

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1272
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v12, :cond_15

    const-string v12, "voipgroup_listSelector"

    goto :goto_e

    :cond_15
    const-string v12, "listSelectorSDK21"

    :goto_e
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x2

    invoke-static {v12, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1273
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/16 v19, -0x2

    const/16 v20, 0x30

    const/16 v21, 0x55

    const/16 v22, 0x6

    const/16 v23, 0x0

    const/16 v24, -0x6

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    iget-object v10, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda4;

    invoke-direct {v12, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1277
    sget v12, Lorg/telegram/messenger/R$drawable;->share_arrow:I

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1278
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v14, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v14, :cond_16

    move-object v14, v11

    goto :goto_f

    :cond_16
    move-object v14, v15

    :goto_f
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v14, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1279
    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/16 v19, -0x2

    const/16 v20, -0x1

    const/16 v21, 0x10

    const/16 v22, 0x14

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1281
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-array v10, v5, [Ljava/lang/Object;

    .line 1282
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v8

    const-string v2, "%d"

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 1283
    invoke-virtual {v7, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1284
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v2, :cond_17

    goto :goto_10

    :cond_17
    move-object v11, v15

    :goto_10
    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x10

    .line 1285
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1286
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1287
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    const/16 v19, -0x2

    const/16 v20, -0x1

    const/16 v21, 0x10

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v24, 0x14

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    :cond_18
    :goto_11
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$16;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$16;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    .line 1350
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 1351
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1352
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1353
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v10, -0x2

    const/16 v11, 0x53

    const/4 v12, -0x1

    invoke-static {v12, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v7, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda8;->INSTANCE:Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda8;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1356
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$17;

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 p2, v2

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, v7

    move-object/from16 p6, v10

    move/from16 p7, v11

    move/from16 p8, v12

    move-object/from16 p9, p11

    invoke-direct/range {p2 .. p9}, Lorg/telegram/ui/Components/ShareAlert$17;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 1421
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v4, :cond_19

    .line 1422
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1423
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1425
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1426
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v3, Lorg/telegram/messenger/R$string;->ShareComment:I

    const-string v4, "ShareComment"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 1428
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/16 v3, 0x54

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v8, v8, v3, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1429
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v4, -0x2

    const/16 v7, 0x33

    const/4 v9, -0x1

    invoke-static {v9, v4, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1430
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1431
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1432
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1434
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$18;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$18;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    .line 1444
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1445
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1446
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1447
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1448
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1449
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1450
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    const/16 v7, 0x3c

    const/16 v9, 0x3c

    const/16 v10, 0x55

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x6

    const/16 v15, 0xa

    move/from16 p2, v7

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v11

    move/from16 p6, v12

    move/from16 p7, v14

    move/from16 p8, v15

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1452
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x38

    .line 1453
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const-string v9, "dialogFloatingButton"

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v9

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_1a

    const-string v12, "dialogFloatingButtonPressed"

    goto :goto_12

    :cond_1a
    const-string v12, "dialogFloatingButton"

    :goto_12
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v7, v9, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-ge v10, v11, :cond_1b

    .line 1455
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lorg/telegram/messenger/R$drawable;->floating_shadow_profile:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1456
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v14, -0x1000000

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1457
    new-instance v12, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v12, v9, v7, v8, v8}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1458
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v12, v7, v9}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v7, v12

    .line 1461
    :cond_1b
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1462
    sget v7, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v7, 0x2

    .line 1463
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 1464
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const-string v12, "dialogFloatingIcon"

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v12, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1465
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-lt v10, v11, :cond_1c

    .line 1467
    new-instance v9, Lorg/telegram/ui/Components/ShareAlert$19;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/ShareAlert$19;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1475
    :cond_1c
    iget-object v9, v0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    if-lt v10, v11, :cond_1d

    move v12, v4

    goto :goto_13

    :cond_1d
    const/16 v12, 0x3c

    :goto_13
    if-lt v10, v11, :cond_1e

    goto :goto_14

    :cond_1e
    const/16 v4, 0x3c

    :goto_14
    const/16 v14, 0x33

    if-lt v10, v11, :cond_1f

    goto :goto_15

    :cond_1f
    move v7, v8

    :goto_15
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    move/from16 p2, v12

    move/from16 p3, v4

    move/from16 p4, v14

    move/from16 p5, v7

    move/from16 p6, v10

    move/from16 p7, v11

    move/from16 p8, v15

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1476
    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1481
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1482
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1484
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$20;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ShareAlert$20;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    .line 1505
    invoke-virtual {v2, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1506
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1507
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1508
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    const/16 v3, 0x2a

    const/16 v4, 0x18

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x8

    const/16 v11, 0x9

    move/from16 p1, v3

    move/from16 p2, v4

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1510
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    .line 1512
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->loadDialogs(Lorg/telegram/messenger/AccountInstance;)V

    .line 1513
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1514
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1517
    :cond_20
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$21;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ShareAlert$21;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-static {v1, v8, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    .line 1535
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    .line 1537
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1538
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v8, v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$10202(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjects:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$10302(Lorg/telegram/ui/Components/ShareAlert;Landroidx/collection/LongSparseArray;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    return-object p1
.end method

.method static synthetic access$10400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$11202(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    return p1
.end method

.method static synthetic access$11300(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    return p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$11402(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p1
.end method

.method static synthetic access$11500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$11600(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[IF)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->invalidateTopicsAnimation(Landroid/view/View;[IF)V

    return-void
.end method

.method static synthetic access$11800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$12000(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$12100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$12102(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$13500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13602(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return p1
.end method

.method static synthetic access$13700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$14000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14200(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$14300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/Cells/ShareDialogCell;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Lorg/telegram/ui/Cells/ShareDialogCell;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method static synthetic access$14600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$15100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return p1
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->panTranslationMoveLayout:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/ShareAlert;F)F
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/TextView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ShareAlert;)[Landroid/view/View;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/View;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/FillLastGridLayoutManager;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchLayoutManager:Lorg/telegram/ui/Components/FillLastGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->chatActivityEnterViewAnimateFromTop:F

    return p0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/Components/ShareAlert;F)F
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->chatActivityEnterViewAnimateFromTop:F

    return p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/ShareAlert;)F
    .locals 0

    .line 120
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert;->captionEditTextTopOffset:F

    return p0
.end method

.method static synthetic access$8802(Lorg/telegram/ui/Components/ShareAlert;F)F
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->captionEditTextTopOffset:F

    return p1
.end method

.method static synthetic access$8902(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$9102(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$9302(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    return p1
.end method

.method static synthetic access$9402(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0

    .line 120
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    return p1
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/text/TextPaint;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/Paint;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/RectF;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private checkCurrentList(Z)V
    .locals 4

    .line 3156
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3f7ae148    # 0.98f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3164
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_2

    .line 3165
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 3166
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    :cond_2
    move v2, v3

    goto :goto_1

    .line 3158
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 3159
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_4

    .line 3160
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 3161
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 3170
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_9

    .line 3171
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    .line 3172
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3173
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3174
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    const v0, 0x7fffffff

    if-eqz p1, :cond_7

    .line 3175
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    if-ne p1, v0, :cond_6

    .line 3176
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 3178
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3180
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogs(Ljava/lang/String;)V

    goto :goto_3

    .line 3182
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    if-ne p1, v0, :cond_8

    .line 3183
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    .line 3185
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_9
    :goto_3
    return-void
.end method

.method private collapseTopics()V
    .locals 9

    .line 1690
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1694
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    const/4 v2, 0x0

    move v3, v2

    .line 1697
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1698
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1700
    instance-of v5, v4, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ShareDialogCell;->getCurrentDialog()J

    move-result-wide v5

    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move-object v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-void

    .line 1709
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_4

    .line 1710
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 1713
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1716
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_6

    .line 1717
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->adjustPanLayoutHelper:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->ignoreOnce()V

    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1724
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 1726
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_7

    iget-boolean v4, v4, Lorg/telegram/ui/ChatActivity;->shareAlertDebugTopicsSlowMotion:Z

    if-eqz v4, :cond_7

    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_1

    :cond_7
    const/high16 v4, 0x44480000    # 800.0f

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1727
    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 1725
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1728
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[I)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1733
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1743
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private copyLink(Landroid/content/Context;)V
    .locals 3

    .line 2198
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    return-void

    .line 2203
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz p1, :cond_1

    .line 2204
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->access$11900(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result p1

    aget-object p1, v1, p1

    goto :goto_0

    .line 2206
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    .line 2208
    :goto_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, "label"

    if-eqz p1, :cond_2

    goto :goto_1

    .line 2209
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    :goto_1
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 2210
    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2211
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;->didCopy()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_5

    .line 2212
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    const-string v1, "/c/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 2213
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ShareAlert;Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LaunchActivity;->showBulletin(Landroidx/arch/core/util/Function;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2216
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static createShareAlert(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)Lorg/telegram/ui/Components/ShareAlert;
    .locals 13

    move-object v0, p1

    if-eqz v0, :cond_0

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    .line 452
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private getCurrentTop()I
    .locals 4

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2039
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2040
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v2, :cond_1

    .line 2042
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    sub-int/2addr v3, v1

    return v3

    :cond_1
    const/16 v0, -0x3e8

    return v0
.end method

.method private getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 2049
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_1
    return-object v0
.end method

.method private invalidateTopicsAnimation(Landroid/view/View;[IF)V
    .locals 12

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 1749
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, p3

    const/high16 v2, 0x3f400000    # 0.75f

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1750
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 1751
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1753
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 1754
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 1755
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 1756
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1757
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    sub-float v1, v2, p3

    .line 1758
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1760
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 1761
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 1762
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v1

    const v5, 0x3f666666    # 0.9f

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1763
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1764
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1766
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1767
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1768
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1769
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1771
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 1772
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p2

    const/4 v3, 0x0

    move v4, v3

    .line 1773
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1774
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1775
    instance-of v6, v5, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v6, :cond_1

    .line 1776
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1777
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v8

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float/2addr v6, p2

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    if-eq v5, p1, :cond_0

    .line 1780
    invoke-static {p3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v7

    sub-float v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 1782
    :cond_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1786
    :cond_2
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v3, p3, :cond_4

    .line 1787
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1788
    instance-of v1, p3, Lorg/telegram/ui/Cells/ShareTopicCell;

    if-eqz v1, :cond_3

    .line 1789
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    neg-float v1, v1

    float-to-double v4, v1

    sub-float v1, v2, p2

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v1, v4

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1790
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    neg-float v1, v1

    float-to-double v4, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1793
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1794
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private synthetic lambda$collapseTopics$11(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p4, p3

    .line 1731
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/ui/Components/ShareAlert;->invalidateTopicsAnimation(Landroid/view/View;[IF)V

    return-void
.end method

.method private synthetic lambda$collapseTopics$12(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1735
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1737
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->access$10702(Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 1738
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1740
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x0

    .line 1741
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    return-void
.end method

.method private synthetic lambda$copyLink$19(ZLorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 2213
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 518
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .line 519
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    if-eqz p1, :cond_0

    .line 520
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    .line 523
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 516
    new-instance p3, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLObject;Landroid/content/Context;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)V
    .locals 7

    .line 1022
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->shareTopicsAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1023
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1027
    :cond_0
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 1030
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 1032
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    .line 1034
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchWasVisibleBeforeTopics:Z

    if-eqz v0, :cond_3

    .line 1035
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$11700(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v0, :cond_2

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$11700(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v3, v4, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1040
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1041
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 1042
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    .line 1045
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_5

    .line 1046
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getMainGridView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1048
    instance-of v0, p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ShareDialogCell;->getCurrentDialog()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    .line 1052
    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    .line 1053
    invoke-virtual {p2, v2, v2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1057
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->collapseTopics()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;I)V
    .locals 1

    if-gez p2, :cond_0

    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1122
    :cond_1
    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Lorg/telegram/ui/Cells/ShareDialogCell;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;I)V
    .locals 1

    if-gez p2, :cond_0

    return-void

    .line 1167
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 1171
    :cond_1
    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Lorg/telegram/ui/Cells/ShareDialogCell;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    .line 1254
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    .line 1255
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    .line 1256
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:[Ljava/lang/String;

    aget-object p1, p1, v0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1257
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    .line 1258
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v2, "Loading"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 1

    .line 1274
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/MessageStatisticActivity;-><init>(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static synthetic lambda$new$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1476
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$new$9(Landroid/widget/ImageView;Landroid/view/View;)Z
    .locals 0

    .line 1478
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->onSendLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onSendLongClick$13(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1833
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1834
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSendLongClick$14(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x1

    .line 1855
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1856
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$15(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    .line 1859
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1860
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$16(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1889
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1890
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSendLongClick$17(Landroid/view/View;)V
    .locals 0

    .line 1908
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1909
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 1911
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$onSendLongClick$18(Landroid/view/View;)V
    .locals 0

    .line 1922
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1923
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    .line 1925
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->sendInternal(Z)V

    return-void
.end method

.method private synthetic lambda$selectDialog$10(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 4

    const/4 v0, 0x0

    .line 1648
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1649
    sget p1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {p2, p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    return-void
.end method

.method private onSendLongClick(Landroid/view/View;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1805
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 1808
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 1809
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1810
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const-string v6, "voipgroup_listSelector"

    const-string v7, "dialogButtonSelector"

    const-string v8, "voipgroup_inviteMembersBackground"

    const/16 v9, 0x30

    const-string v10, "voipgroup_nameText"

    const/4 v11, -0x1

    if-eqz v5, :cond_5

    .line 1811
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1812
    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v12, :cond_1

    .line 1813
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 1815
    :cond_1
    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1816
    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$23;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ShareAlert$23;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v5, v12}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1832
    new-instance v12, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda16;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1837
    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 1839
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v18, v13

    move-object v13, v12

    invoke-direct/range {v13 .. v18}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1840
    iget-boolean v13, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v13, :cond_2

    .line 1841
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1843
    :cond_2
    invoke-static {v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1844
    sget v13, Lorg/telegram/messenger/R$string;->ShowSendersName:I

    const-string v14, "ShowSendersName"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1845
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1847
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    iget-object v14, v0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v19, v14

    move-object v14, v13

    invoke-direct/range {v14 .. v19}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1848
    iget-boolean v14, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v14, :cond_3

    .line 1849
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1851
    :cond_3
    invoke-static {v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1852
    sget v14, Lorg/telegram/messenger/R$string;->HideSendersName:I

    const-string v15, "HideSendersName"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1853
    iget-boolean v14, v0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/2addr v14, v4

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1854
    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda5;

    invoke-direct {v14, v0, v12, v13}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v12, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1858
    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda6;

    invoke-direct {v14, v0, v12, v13}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1862
    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v12, :cond_4

    move-object v12, v6

    goto :goto_0

    :cond_4
    move-object v12, v7

    :goto_0
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x8

    .line 1864
    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1867
    :cond_5
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v12, v0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1868
    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v12, :cond_6

    .line 1869
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 1871
    :cond_6
    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1872
    new-instance v8, Lorg/telegram/ui/Components/ShareAlert$24;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/ShareAlert$24;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1888
    new-instance v8, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda15;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1893
    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 1895
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v8, v12, v4, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1896
    iget-boolean v12, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    const-string v13, "windowBackgroundWhiteHintText"

    if-eqz v12, :cond_7

    .line 1897
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1898
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1901
    :cond_7
    iget v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v12}, Lcom/iMe/fork/controller/ToolsController;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1902
    sget v12, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    sget v14, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-virtual {v8, v12, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 1904
    :cond_8
    sget v12, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    const-string v14, "SendWithoutSound"

    invoke-static {v14, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    sget v14, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-virtual {v8, v12, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    :goto_1
    const/16 v12, 0xc4

    .line 1905
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1906
    invoke-static {v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v8, v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1907
    new-instance v14, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1913
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ShareAlert;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v8, v14, v4, v4, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1914
    iget-boolean v14, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v14, :cond_9

    .line 1915
    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1916
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1918
    :cond_9
    sget v10, Lorg/telegram/messenger/R$string;->SendMessage:I

    const-string v13, "SendMessage"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v8, v10, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1919
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 1920
    invoke-static {v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1921
    new-instance v9, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1927
    iget-boolean v8, v0, Lorg/telegram/ui/Components/ShareAlert;->darkTheme:Z

    if-eqz v8, :cond_a

    goto :goto_2

    :cond_a
    move-object v6, v7

    :goto_2
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    const/4 v6, -0x2

    .line 1929
    invoke-static {v11, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1931
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {v5, v2, v6, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1932
    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1933
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v6, Lorg/telegram/messenger/R$style;->PopupContextAnimation2:I

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1934
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1935
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1936
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1937
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1938
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1939
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->removeScheduledOrNoSoundHint()V

    const/16 v5, 0x3e8

    .line 1941
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v7, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1942
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-array v5, v6, [I

    .line 1944
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1946
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eqz v7, :cond_b

    iget-object v7, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_b

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    const/16 v8, 0x3a

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    if-le v7, v8, :cond_b

    .line 1947
    aget v7, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_3

    .line 1949
    :cond_b
    aget v7, v5, v4

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v7, v8

    .line 1951
    :goto_3
    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v9, 0x33

    aget v3, v5, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v3, v2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v8, v1, v9, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1952
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    const/4 v2, 0x3

    .line 1953
    invoke-virtual {v1, v2, v6}, Landroid/view/View;->performHapticFeedback(II)Z

    return v4
.end method

.method private runShadowAnimation(IZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 2164
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2165
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2167
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2169
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v3, v2, p1

    if-eqz v3, :cond_4

    .line 2170
    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2172
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v3, v2, p1

    .line 2173
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v2, v2, p1

    new-array v3, v1, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v4, v4, p1

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p2, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    aput v6, v1, v0

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2174
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2175
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$25;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$25;-><init>(Lorg/telegram/ui/Components/ShareAlert;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2193
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method

.method private selectDialog(Lorg/telegram/ui/Cells/ShareDialogCell;Lorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 8

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    .line 1546
    :cond_0
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OK"

    const-string v3, "SendMessageTitle"

    const/4 v4, 0x2

    if-eqz v0, :cond_5

    .line 1547
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1548
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_7

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    iget v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ChatObject;->isCanWriteToChannel(JI)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-ne v5, v4, :cond_7

    .line 1549
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1550
    sget p2, Lorg/telegram/messenger/R$string;->SendMessageTitle:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1551
    iget p2, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-ne p2, v4, :cond_4

    .line 1552
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert;->isChannel:Z

    if-eqz p2, :cond_2

    .line 1553
    sget p2, Lorg/telegram/messenger/R$string;->PublicPollCantForward:I

    const-string v0, "PublicPollCantForward"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const/16 p2, 0xa

    .line 1554
    invoke-static {v0, p2}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1555
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedPollsAll:I

    const-string v0, "ErrorSendRestrictedPollsAll"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1557
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->ErrorSendRestrictedPolls:I

    const-string v0, "ErrorSendRestrictedPolls"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1560
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->ChannelCantSendMessage:I

    const-string v0, "ChannelCantSendMessage"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1562
    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1563
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 1566
    :cond_5
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-eqz v0, :cond_7

    .line 1567
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1568
    sget p2, Lorg/telegram/messenger/R$string;->SendMessageTitle:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1569
    iget p2, p0, Lorg/telegram/ui/Components/ShareAlert;->hasPoll:I

    if-eqz p2, :cond_6

    .line 1570
    sget p2, Lorg/telegram/messenger/R$string;->PollCantForwardSecretChat:I

    const-string v0, "PollCantForwardSecretChat"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1572
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->InvoiceCantForwardSecretChat:I

    const-string v0, "InvoiceCantForwardSecretChat"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1574
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1575
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 1578
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_9

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1580
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 1582
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    .line 1584
    :cond_8
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    goto/16 :goto_4

    .line 1586
    :cond_9
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_b

    .line 1587
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1589
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1590
    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$22;

    invoke-direct {v3, p0, p2, v0, p1}, Lorg/telegram/ui/Components/ShareAlert$22;-><init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$Dialog;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Cells/ShareDialogCell;)V

    .line 1647
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, v0, v3, p2}, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1651
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v4, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1652
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    invoke-virtual {p1, v4, v5}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1653
    sget p1, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-interface {v3, p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    goto :goto_2

    .line 1655
    :cond_a
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p1

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/TopicsController;->loadTopics(J)V

    .line 1656
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :goto_2
    return-void

    .line 1661
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v0, v5, v6, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz p1, :cond_c

    .line 1663
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setChecked(ZZ)V

    .line 1665
    :cond_c
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    .line 1666
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v3, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 1667
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-eqz p1, :cond_f

    .line 1668
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$11700(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p1, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez p1, :cond_d

    .line 1670
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$11700(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {p1, v3, v4, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1671
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 1672
    :cond_d
    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long p2, v5, v3

    if-eqz p2, :cond_e

    .line 1673
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1674
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$10100(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1676
    :cond_e
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1677
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->updateSearchAdapter:Z

    .line 1678
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1679
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->checkCurrentList(Z)V

    .line 1680
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->hideKeyboard()V

    .line 1683
    :cond_f
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    if-eqz p1, :cond_10

    .line 1684
    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->getItemCount()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_10
    return-void
.end method

.method private showCommentTextView(Z)Z
    .locals 10

    .line 2221
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v0, :cond_1

    return v1

    .line 2224
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 2225
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2227
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2228
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2231
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    if-eqz p1, :cond_5

    .line 2233
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2234
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2236
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    const/4 v3, 0x4

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    move v4, v2

    .line 2237
    :goto_2
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2239
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sharesCountLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v2

    .line 2240
    :goto_3
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2242
    :cond_9
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    .line 2243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2244
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_a

    move v8, v7

    goto :goto_4

    :cond_a
    move v8, v6

    :goto_4
    aput v8, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    const v8, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_b

    move v9, v7

    goto :goto_5

    :cond_b
    move v9, v8

    :goto_5
    aput v9, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    if-eqz p1, :cond_c

    move v9, v7

    goto :goto_6

    :cond_c
    move v9, v8

    :goto_6
    aput v9, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->writeButtonContainer:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    if-eqz p1, :cond_d

    move v9, v7

    goto :goto_7

    :cond_d
    move v9, v6

    :goto_7
    aput v9, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    if-eqz p1, :cond_e

    move v9, v7

    goto :goto_8

    :cond_e
    move v9, v8

    :goto_8
    aput v9, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2249
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    if-eqz p1, :cond_f

    move v8, v7

    :cond_f
    aput v8, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    if-eqz p1, :cond_10

    move v8, v7

    goto :goto_9

    :cond_10
    move v8, v6

    :goto_9
    aput v8, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2251
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->pickerBottomLayout:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_13

    .line 2252
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:[Landroid/view/View;

    aget-object v3, v3, v2

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    if-eqz p1, :cond_12

    move v6, v7

    :cond_12
    aput v6, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2255
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2256
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2258
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$26;-><init>(Lorg/telegram/ui/Components/ShareAlert;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2277
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return v2
.end method

.method private updateLayout()V
    .locals 10

    .line 2096
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->panTranslationMoveLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2101
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2103
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 2106
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v3, v1

    .line 2107
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2108
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2109
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2112
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2114
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    if-lez v3, :cond_5

    if-eqz v0, :cond_5

    .line 2115
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    const v6, 0x7fffffff

    const/4 v7, 0x1

    if-ltz v3, :cond_6

    if-eqz v0, :cond_6

    .line 2116
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_6

    .line 2117
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2119
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    goto :goto_3

    .line 2121
    :cond_6
    iput v6, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2122
    invoke-direct {p0, v1, v7}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    move v3, v5

    .line 2125
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 2126
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2128
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_7

    return-void

    .line 2131
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move v5, v1

    .line 2132
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 2133
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 2134
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2137
    :cond_9
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2139
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v5, v4

    if-lez v5, :cond_a

    if-eqz v0, :cond_a

    .line 2140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    if-ltz v5, :cond_b

    if-eqz v0, :cond_b

    .line 2141
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_b

    .line 2142
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2144
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    goto :goto_6

    .line 2146
    :cond_b
    iput v6, p0, Lorg/telegram/ui/Components/ShareAlert;->lastOffset:I

    .line 2147
    invoke-direct {p0, v1, v7}, Lorg/telegram/ui/Components/ShareAlert;->runShadowAnimation(IZ)V

    move v5, v4

    .line 2149
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    invoke-static {v3, v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    .line 2152
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    if-eq v0, v3, :cond_d

    .line 2153
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert;->previousScrollOffsetY:I

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    int-to-float v1, v3

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 2156
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topicsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2158
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->currentPanTranslationY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_d
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 2079
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, p2, :cond_1

    .line 2080
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    if-eqz p1, :cond_0

    .line 2081
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->fetchDialogs()V

    .line 2083
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 2307
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 2308
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 2310
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->fullyShown:Z

    .line 2311
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 2312
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    .line 2058
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 2059
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_0
    return-void
.end method

.method public getContainerViewHeight()I
    .locals 2

    .line 1799
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerViewTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedTopicDialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v0, :cond_0

    .line 2067
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->collapseTopics()V

    return-void

    .line 2070
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void

    .line 2074
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$Dialog;",
            ">;I",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected sendInternal(Z)V
    .locals 47

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 1959
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 1960
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 1961
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v8

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v3, v7, v5, v6, v4}, Lorg/telegram/ui/Components/AlertsCreator;->checkSlowMode(Landroid/content/Context;IJZ)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v2, v4, [Ljava/lang/CharSequence;

    .line 1966
    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1967
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 1968
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    const/4 v15, 0x0

    if-eqz v5, :cond_e

    .line 1969
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move v13, v1

    .line 1970
    :goto_2
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v13, v5, :cond_a

    .line 1971
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v13}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    .line 1972
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_3

    .line 1973
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v6, v7, v5, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object v10, v6

    goto :goto_3

    :cond_3
    move-object v10, v15

    :goto_3
    if-eqz v10, :cond_4

    .line 1975
    iput-boolean v4, v10, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    .line 1977
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 1978
    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v5

    aget-object v6, v2, v1

    if-nez v6, :cond_5

    move-object v6, v15

    goto :goto_4

    :cond_5
    aget-object v6, v2, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide v7, v11

    move-object v9, v10

    move-object/from16 v24, v10

    move-wide/from16 v28, v11

    move-object/from16 v11, v16

    move/from16 v12, v17

    move/from16 v30, v13

    move-object v13, v3

    move-object v1, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move/from16 v16, p1

    move/from16 v17, v20

    move-object/from16 v18, v21

    move/from16 v19, v22

    move-object/from16 v20, v23

    invoke-virtual/range {v5 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object/from16 v24, v10

    move-wide/from16 v28, v11

    move/from16 v30, v13

    move-object v1, v14

    .line 1980
    :goto_5
    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v16

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ShareAlert;->showSendersName:Z

    xor-int/lit8 v20, v6, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v28

    move/from16 v22, p1

    invoke-virtual/range {v16 .. v27}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;ZLorg/telegram/messenger/MessageObject;)I

    move-result v5

    if-eqz v5, :cond_7

    .line 1982
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1984
    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ne v6, v4, :cond_8

    .line 1985
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->parentFragment:Lorg/telegram/ui/ChatActivity;

    const/4 v15, 0x0

    invoke-static {v5, v6, v15}, Lorg/telegram/ui/Components/AlertsCreator;->showSendMediaAlert(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    :cond_9
    add-int/lit8 v13, v30, 0x1

    move-object v14, v1

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_a
    move-object v1, v14

    .line 1992
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1993
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1994
    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v2, v3}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v5, :cond_b

    .line 1996
    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1999
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2000
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ne v3, v4, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v4, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    :cond_d
    invoke-virtual {v0, v1, v2, v15}, Lorg/telegram/ui/Components/ShareAlert;->onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    goto/16 :goto_d

    .line 2004
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->switchView:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    if-eqz v1, :cond_f

    .line 2005
    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->access$11900(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)I

    move-result v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    .line 2009
    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_13

    const/4 v14, 0x0

    .line 2010
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ge v14, v5, :cond_13

    .line 2011
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v14}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    .line 2012
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    iget-object v6, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v5, :cond_10

    .line 2013
    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8, v8}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v36, v6

    goto :goto_a

    :cond_10
    const/4 v8, 0x0

    move-object/from16 v36, v15

    .line 2015
    :goto_a
    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v5

    if-lez v5, :cond_12

    .line 2016
    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v5

    aget-object v6, v2, v8

    if-nez v6, :cond_11

    move-object v6, v15

    goto :goto_b

    :cond_11
    aget-object v6, v2, v8

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_b
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide v7, v12

    move-object/from16 v10, v36

    move-wide/from16 v23, v12

    move/from16 v12, v16

    move-object v13, v3

    move/from16 v25, v14

    move-object/from16 v14, v17

    move-object/from16 v26, v15

    move-object/from16 v15, v18

    move/from16 v16, p1

    move/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v21

    move-object/from16 v20, v22

    invoke-virtual/range {v5 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    goto :goto_c

    :cond_12
    move-wide/from16 v23, v12

    move/from16 v25, v14

    move-object/from16 v26, v15

    .line 2018
    :goto_c
    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v31

    iget-object v5, v0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:[Ljava/lang/String;

    aget-object v32, v5, v1

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-wide/from16 v33, v23

    move/from16 v42, p1

    invoke-virtual/range {v31 .. v46}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    add-int/lit8 v14, v25, 0x1

    move-object/from16 v15, v26

    goto/16 :goto_9

    .line 2021
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    iget-object v2, v0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogTopics:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v0, v1, v4, v2}, Lorg/telegram/ui/Components/ShareAlert;->onSend(Landroidx/collection/LongSparseArray;ILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    .line 2023
    :cond_14
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    if-eqz v1, :cond_15

    .line 2024
    invoke-interface {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;->didShare()V

    .line 2026
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ShareAlert;->dismiss()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;)V
    .locals 0

    .line 2053
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->delegate:Lorg/telegram/ui/Components/ShareAlert$ShareAlertDelegate;

    return-void
.end method

.method public updateSelectedCount(I)V
    .locals 11

    .line 2282
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2283
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 2284
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 2285
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z

    goto/16 :goto_2

    .line 2287
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    .line 2288
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    .line 2289
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    const/16 v3, 0x15

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 2290
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 2291
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/animation/Animator;

    .line 2292
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v3, [F

    const v8, 0x3f8ccccd    # 1.1f

    const v9, 0x3f666666    # 0.9f

    if-ne p1, v0, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    move v10, v9

    :goto_0
    aput v10, v7, v1

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v7, v0

    .line 2293
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    aput v8, v3, v1

    aput v10, v3, v0

    .line 2294
    invoke-static {v5, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v4, v0

    .line 2292
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2295
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xb4

    .line 2296
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2297
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 2299
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 2300
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedCountView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    :goto_2
    return-void
.end method
