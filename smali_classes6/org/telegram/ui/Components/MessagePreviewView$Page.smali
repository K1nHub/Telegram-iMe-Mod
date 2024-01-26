.class Lorg/telegram/ui/Components/MessagePreviewView$Page;
.super Landroid/widget/FrameLayout;
.source "MessagePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;
    }
.end annotation


# instance fields
.field actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

.field adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

.field private buttonsHeight:I

.field changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field changeSizeBtnContainer:Landroid/widget/FrameLayout;

.field chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

.field chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field chatTopOffset:I

.field clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field public currentTab:I

.field currentTopOffset:I

.field currentYOffset:F

.field deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private firstAttach:Z

.field private firstLayout:Z

.field itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field lastSize:I

.field menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field menuBack:I

.field messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

.field quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private quoteSwitcher:Landroid/animation/AnimatorSet;

.field rect:Landroid/graphics/Rect;

.field replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field scrollToOffset:I

.field sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

.field textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

.field textSelectionOverlay:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Components/MessagePreviewView;

.field toQuote:Z

.field updateAfterAnimations:Z

.field private updateScroll:Z

.field videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field yOffset:F


# direct methods
.method public static synthetic $r8$lambda$-NOdbMyaWBU2FoZufrKjUbGSahI(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$onAttachedToWindow$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2liB_KStUSbB7Z7B83e8fJPXc2s(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$10(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$43WAMT4YdjCvuLqDaLsOW4GTKJE(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$5-dwlzoBsX31_dW4X6_zwrntUfg(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$19(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5WAZQEK9OEl1r-K-e9fzSYzYSQE(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8S4hwt1To9XTCIs7yInATHvraAc(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOphL4rSXUjcIHDnPbyzZObpvPE(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aj_bPy31weCY8bXK2dC5N3tjhYU(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DaK2Hx6fAIx2O4UU58zg2oGiZdw(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EHSMagiN_g7TnQJNtVseatfKZXQ(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5e-yYHj1_c86omXz9wyYZ6Qc4Y(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$9(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MFvPFgRf_BCKm7t2GiG9vl39XuU(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjYCQCBHaztopTs67fKe_udb4Es(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$18(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pu4UU-qCMgoGkZX7IwvY-jFkSus(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TOBFyvzt9HDbk43JtUs9T55zx84(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2GVa5TR4GVXWrYOm94lvsOO6T8(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5ZuuXcvVb3xknXJvStJlJ4WiBs(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XbpQz6R5jE1DD2yFq-VvQtQvM_A(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$22(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZMofPLcNjzWCydG-XeQZ6Ye6Uhw(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a6I9Iqp_CH5WSJ2v2LLaS4plCfs(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWpwmuAlpJUMj8fWYWqYmS3l-vk(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fPkUiXlofTj2p6t5EvM0btnjbNY(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gHLcfp-7TcELq4iiUZymXaa6ORM(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iIJoRUS5llY_M4w5KtCXVVlAkiw(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWYgWX-on-Tnhqx0o0T16XhRm3c(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$new$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lUOYE2vIqm-ktRmVbvWxJdJ5sbc(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$checkScroll$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$ow4A1QlW_BVbPzgX7jvZHOHAcRI(Lorg/telegram/ui/Components/MessagePreviewView$Page;IFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lambda$updatePositions$26(IFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;I)V
    .locals 31

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v7, p3

    .line 335
    iput-object v9, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    .line 336
    invoke-direct {v8, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 893
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 210
    iput-boolean v11, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->rect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    .line 1375
    iput-boolean v13, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    .line 1630
    iput-boolean v11, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    .line 337
    new-instance v0, Lorg/telegram/messenger/ChatMessageSharedResources;

    invoke-direct {v0, v10}, Lorg/telegram/messenger/ChatMessageSharedResources;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

    .line 339
    iput v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    .line 341
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda23;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;

    invoke-direct {v0, v8, v10, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 363
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;->isWallpaperMotion()Z

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 364
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 366
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    const/16 v16, 0x4

    if-lt v14, v15, :cond_2

    .line 367
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$3;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 374
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 375
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 378
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v9, v10, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    .line 379
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 381
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$4;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    .line 425
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$5;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 453
    new-instance v6, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v0

    invoke-direct {v6, v8, v10, v0, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$6;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v6, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 677
    new-instance v5, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;

    const/4 v2, 0x0

    iget-object v3, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v4

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v15, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MessagePreviewView$Page$7;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v15, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v6, v15}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 732
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$8;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 747
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$9;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 770
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    const/4 v15, 0x0

    invoke-direct {v1, v8, v15}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$1;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 771
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v13, v1, v13, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 772
    new-instance v6, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v15, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$Page$10;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;IIZLorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v15, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    .line 816
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;

    invoke-direct {v0, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$11;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v15, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 830
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 831
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 832
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$12;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/MessagePreviewView$Page$12;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 866
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 867
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v17, -0x1

    const/16 v18, 0x190

    const/16 v19, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    const/4 v15, -0x1

    const/4 v2, -0x2

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 871
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda25;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setOnForegroundOpenFinished(Ljava/lang/Runnable;)V

    .line 874
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x3df5c28f    # 0.12f

    const/16 v4, 0x8

    const/16 v3, 0x30

    if-nez v7, :cond_a

    .line 876
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_a

    .line 877
    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v1, :cond_5

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v0, :cond_5

    .line 878
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 879
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 881
    iget-boolean v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez v0, :cond_3

    .line 882
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v19

    move-object v0, v2

    move-object/from16 v1, p2

    move-object v6, v2

    move/from16 v2, v16

    move v13, v3

    move/from16 v3, v17

    move v11, v4

    move/from16 v4, v18

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 883
    sget v0, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 884
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    invoke-static {v15, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 893
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v1, v12}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 894
    invoke-static {v15, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 897
    sget v0, Lorg/telegram/messenger/R$string;->QuoteSelectedPart:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quote_specific:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 898
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda4;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    invoke-static {v15, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    move v13, v3

    move v11, v4

    .line 920
    :goto_2
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menuBack:I

    .line 921
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setStickToRight(Z)V

    .line 923
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 924
    new-instance v6, Lorg/telegram/ui/Components/MessagePreviewView$Page$13;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v11, v6

    move-object/from16 v6, v16

    move-object v13, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$13;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v11, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 938
    iget-boolean v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->QuoteSelectedPart:I

    goto :goto_3

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->SelectSpecificQuote:I

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_select_quote:I

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 939
    new-instance v11, Lorg/telegram/ui/Components/MessagePreviewView$Page$14;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$14;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v11, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 953
    sget v0, Lorg/telegram/messenger/R$string;->ClearQuote:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quote_delete:I

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 954
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 955
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda17;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1001
    :cond_5
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    if-nez v1, :cond_6

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasSecretMessages:Z

    if-nez v0, :cond_6

    .line 1002
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1003
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1004
    sget v0, Lorg/telegram/messenger/R$string;->ReplyToAnotherChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v7, v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1005
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda9;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1007
    sget v0, Lorg/telegram/messenger/R$string;->QuoteToAnotherChat:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1008
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda11;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1014
    :cond_6
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    if-nez v1, :cond_7

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasSecretMessages:Z

    if-nez v0, :cond_7

    .line 1015
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1016
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v1, v12}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1017
    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x8

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1020
    :cond_7
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    .line 1022
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1023
    sget v0, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1024
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda16;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1027
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v6, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1028
    iget-boolean v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v0, :cond_9

    sget v0, Lorg/telegram/messenger/R$string;->DoNotQuote:I

    goto :goto_5

    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->DoNotReply:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1029
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1030
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v11, 0x3df5c28f    # 0.12f

    invoke-static {v1, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1031
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->deleteReplyButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :goto_6
    const/4 v11, 0x2

    goto/16 :goto_f

    :cond_a
    move v11, v5

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    if-ne v7, v0, :cond_18

    .line 1040
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_18

    .line 1042
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isForwardingPreviewEditorHintShown:Z

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->isTemplatePreview()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->isFromShareAlert()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1043
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    sget v2, Lorg/telegram/messenger/R$string;->forwarding_editor_hint:I

    .line 1044
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/high16 v2, -0x3e100000    # -30.0f

    .line 1045
    invoke-virtual {v0, v6, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 1046
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1047
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setCloseButton(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1043
    invoke-static {v9, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1602(Lorg/telegram/ui/Components/MessagePreviewView;Lorg/telegram/ui/Stories/recorder/HintView2;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1048
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1050
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v26, 0x35

    const/16 v27, 0x0

    const/16 v28, 0x2e

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 1051
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setForwardingPreviewEditorHintShown(Z)V

    .line 1055
    :cond_b
    new-instance v7, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v3, Lorg/telegram/messenger/R$raw;->name_hide:I

    .line 1057
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    if-eqz v0, :cond_c

    sget v0, Lorg/telegram/messenger/R$string;->ShowSenderNames:I

    goto :goto_7

    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->ShowSendersName:I

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    sget v5, Lorg/telegram/messenger/R$raw;->name_show:I

    .line 1058
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->multipleUsers:Z

    if-eqz v0, :cond_d

    sget v0, Lorg/telegram/messenger/R$string;->HideSenderNames:I

    goto :goto_8

    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->HideSendersName:I

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 1061
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->isTemplatePreview()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1062
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1064
    :cond_e
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->isAuthorHiddenForce:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {v7, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1066
    invoke-virtual {v7, v13}, Landroid/view/View;->setAlpha(F)V

    .line 1071
    :cond_f
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasCaption:Z

    if-eqz v0, :cond_10

    .line 1072
    new-instance v13, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v3, Lorg/telegram/messenger/R$raw;->caption_hide:I

    sget v0, Lorg/telegram/messenger/R$string;->ShowCaption:I

    .line 1074
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$raw;->caption_show:I

    sget v0, Lorg/telegram/messenger/R$string;->HideCaption:I

    .line 1075
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 1077
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1078
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1080
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/16 v16, 0x15

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v11, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/MessagePreviewView;->access$102(Lorg/telegram/ui/Components/MessagePreviewView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1081
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$100(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda21;

    invoke-direct {v1, v8, v7, v13}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$100(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_9

    :cond_10
    const/4 v13, 0x0

    .line 1107
    :goto_9
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hasPreview:Z

    if-eqz v0, :cond_11

    .line 1108
    new-instance v11, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    const/16 v6, 0x15

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/MessagePreviewView;->access$202(Lorg/telegram/ui/Components/MessagePreviewView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1109
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$200(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda19;

    invoke-direct {v1, v8, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$200(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1128
    :cond_11
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->isTemplatePreview()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1129
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v10, v2, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1130
    sget v1, Lorg/telegram/messenger/R$string;->EditMessage:I

    const-string v2, "EditMessage"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1131
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda13;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v3, 0x30

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1140
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v10, v3, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1141
    sget v1, Lorg/telegram/messenger/R$string;->EditName:I

    const-string v3, "EditName"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1142
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda6;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1151
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v10, v3, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1152
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1153
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda8;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1164
    :cond_12
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v10, v2, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1165
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    sget v1, Lorg/telegram/messenger/R$string;->ChangeRecipient:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1168
    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v1, :cond_13

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    .line 1169
    :goto_a
    iget-object v2, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagePreviewParams;->isTemplatePreview()Z

    move-result v2

    if-nez v2, :cond_14

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_b

    :cond_14
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_15

    .line 1173
    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1175
    :cond_15
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1176
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v1, v12}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1177
    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x8

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1179
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1180
    sget v0, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1181
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda14;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    sget v0, Lorg/telegram/messenger/R$string;->Send:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1184
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda10;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1188
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1189
    sget v0, Lorg/telegram/messenger/R$string;->DoNotForward:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1190
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1191
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda7;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1194
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->isTemplatePreview()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1195
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1202
    :cond_16
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1203
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda22;

    invoke-direct {v0, v8, v13, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v13, :cond_17

    .line 1226
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda20;

    invoke-direct {v0, v8, v13, v7}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1252
    :cond_17
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMediaItem()V

    .line 1253
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePreviewItem()V

    goto/16 :goto_6

    :cond_18
    const/4 v11, 0x2

    if-ne v7, v11, :cond_1d

    .line 1256
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_1d

    .line 1258
    new-instance v7, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v3, Lorg/telegram/messenger/R$raw;->position_below:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkAbove:I

    .line 1260
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$raw;->position_above:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkBelow:I

    .line 1261
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v22, v6

    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    .line 1263
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1264
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/16 v3, 0x30

    invoke-static {v15, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1266
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    .line 1267
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v2

    invoke-static {v2, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1268
    new-instance v7, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v20, Lorg/telegram/messenger/R$raw;->media_shrink:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkMediaLarger:I

    .line 1270
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v23, Lorg/telegram/messenger/R$raw;->media_enlarge:I

    sget v0, Lorg/telegram/messenger/R$string;->LinkMediaSmaller:I

    .line 1271
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move/from16 v5, v23

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v0, 0x0

    .line 1273
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    if-eqz v1, :cond_19

    move/from16 v2, v16

    goto :goto_c

    :cond_19
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    new-instance v7, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v0, Lorg/telegram/messenger/R$string;->LinkVideoLarger:I

    .line 1278
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->LinkVideoSmaller:I

    .line 1279
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move/from16 v5, v23

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    iput-object v7, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/4 v0, 0x0

    .line 1281
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1282
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    if-nez v1, :cond_1a

    move/from16 v1, v16

    goto :goto_d

    :cond_1a
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v1, :cond_1b

    move/from16 v13, v22

    :cond_1b
    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1284
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/16 v2, 0x30

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1285
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1286
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-eqz v2, :cond_1c

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v1, :cond_1c

    const/16 v4, 0x8

    goto :goto_e

    :cond_1c
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1287
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1288
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v1, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1290
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1291
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v1, v12}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 1292
    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x8

    invoke-static {v15, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1294
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1295
    sget v0, Lorg/telegram/messenger/R$string;->ApplyChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1296
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda3;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1297
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1299
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1300
    sget v0, Lorg/telegram/messenger/R$string;->DoNotLinkPreview:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1301
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1302
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda2;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const v1, 0x3df5c28f    # 0.12f

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1304
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v1, 0x30

    invoke-static {v15, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1306
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda12;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda15;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1351
    :cond_1d
    :goto_f
    iget v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 1352
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_10

    :cond_1e
    if-nez v0, :cond_1f

    .line 1354
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_10

    :cond_1f
    if-ne v0, v11, :cond_20

    .line 1356
    iget-object v0, v9, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 1360
    :cond_20
    :goto_10
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    iput-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    const/16 v1, 0x15

    if-lt v14, v1, :cond_21

    const/16 v1, 0x8

    .line 1362
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 1363
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1365
    :cond_21
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 1366
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 1367
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1369
    :cond_22
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1371
    :cond_23
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget-object v1, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 1372
    iget-object v0, v8, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->access$1300(Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->checkScroll()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/MessagePreviewView$Page;FI)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/MessagePreviewView$Page;Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateLinkHighlight(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/MessagePreviewView$Page;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MessagePreviewView$Page;ZZ)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/MessagePreviewView$Page;)Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)Z
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePositions()V

    return-void
.end method

.method private checkScroll()V
    .locals 3

    .line 1377
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    if-nez v0, :cond_0

    return-void

    .line 1378
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1379
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x0

    .line 1387
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    return-object p1
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 4

    .line 1977
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessageObject;->getGroupId(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessageObject;->getGroupId(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz p2, :cond_0

    .line 1979
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v0, p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :cond_1
    :goto_0
    return-object v1
.end method

.method private synthetic lambda$checkScroll$24()V
    .locals 6

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    const/16 v1, 0xfa

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v3

    neg-int v3, v3

    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 1383
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget-object v4, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 872
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 3

    .line 1110
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1111
    iget-boolean v0, p2, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2100(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2200(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1112
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput-boolean v1, p2, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1114
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2202(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z

    goto :goto_0

    .line 1116
    :cond_1
    iget-boolean p2, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez p2, :cond_2

    .line 1117
    iput-boolean v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1118
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2202(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z

    .line 1121
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p2, p1, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    xor-int/2addr p2, v2

    iput-boolean p2, p1, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    .line 1122
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePreviewItem()V

    .line 1123
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1124
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 3

    .line 1132
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1135
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 1136
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$12(Landroid/view/View;)V
    .locals 3

    .line 1143
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1146
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 1147
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;)V
    .locals 3

    .line 1154
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1157
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    .line 1158
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 1

    .line 1165
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$15(Landroid/view/View;)V
    .locals 1

    .line 1181
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 0

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->didSendPressed()V

    return-void
.end method

.method private synthetic lambda$new$17(Landroid/view/View;)V
    .locals 0

    .line 1191
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeForward()V

    return-void
.end method

.method private synthetic lambda$new$18(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 3

    .line 1204
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    const/4 v0, 0x0

    .line 1205
    iput-boolean v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    .line 1206
    invoke-static {p3, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2202(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z

    move-result v1

    invoke-static {p3, v1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2102(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z

    .line 1207
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v1, :cond_0

    .line 1208
    iput-boolean v0, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz p1, :cond_0

    .line 1210
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1213
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1215
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p2, p1, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez p2, :cond_1

    .line 1216
    iput-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    iput-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    .line 1217
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMediaItem()V

    .line 1218
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePreviewItem()V

    .line 1221
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1222
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$new$19(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 4

    .line 1227
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1229
    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v1, :cond_0

    .line 1230
    iput-boolean v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    .line 1231
    iput-boolean v2, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    .line 1234
    :cond_0
    iget-boolean p3, v0, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    if-eqz p3, :cond_3

    .line 1235
    iput-boolean v3, v0, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    .line 1236
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMediaItem()V

    goto :goto_0

    .line 1240
    :cond_1
    iget-boolean v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    if-eqz v0, :cond_2

    invoke-static {p3}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2100(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p3}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2200(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1241
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput-boolean v3, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    .line 1243
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iput-boolean v3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    .line 1245
    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p3, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    invoke-virtual {p1, p3, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1246
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1247
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1248
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    .line 885
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 886
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    const/4 p1, 0x0

    .line 887
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    .line 888
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private synthetic lambda$new$20(Landroid/view/View;)V
    .locals 1

    .line 1296
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$21(Landroid/view/View;)V
    .locals 0

    .line 1302
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeLink()V

    return-void
.end method

.method private synthetic lambda$new$22(Landroid/view/View;)V
    .locals 3

    .line 1307
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v0, :cond_0

    return-void

    .line 1310
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    .line 1311
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1313
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1314
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1

    .line 1315
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_1

    .line 1316
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    xor-int/2addr v2, v1

    .line 1317
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 1320
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1321
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_2

    .line 1322
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_2

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    xor-int/2addr v0, v1

    .line 1324
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 1327
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1328
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private synthetic lambda$new$23(Landroid/view/View;)V
    .locals 3

    .line 1332
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    .line 1333
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1334
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1335
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_0

    .line 1337
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    .line 1340
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1341
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    .line 1346
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1347
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateScroll:Z

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 3

    .line 899
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 901
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v0, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget p1, p1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$600(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v0, p1, :cond_0

    .line 902
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 907
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 909
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v2, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 911
    iget v1, v1, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 912
    invoke-static {p1, v2, v1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    .line 914
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 5

    .line 956
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez v1, :cond_0

    .line 958
    iput-object v3, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 959
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 960
    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    .line 961
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    goto/16 :goto_0

    .line 964
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v1, v0

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$600(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v1, p1, :cond_1

    .line 965
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->showQuoteLengthError()V

    return-void

    .line 968
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 972
    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 974
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 975
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 977
    :cond_2
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 979
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    .line 980
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void

    .line 983
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 984
    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$600(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v2, v0, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 986
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->select(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    .line 988
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-nez p1, :cond_4

    .line 989
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menuBack:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    .line 991
    :cond_4
    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->switchToQuote(ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 1005
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 1008
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->selectAnotherChat(Z)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    .line 1024
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 1

    .line 1032
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeQuote()V

    goto :goto_0

    .line 1035
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->removeReply()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;Landroid/view/View;)V
    .locals 4

    .line 1082
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1083
    iget-boolean v0, p3, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNames:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2100(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p3}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2200(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1084
    iget-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput-boolean v2, p3, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1086
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2102(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z

    goto :goto_0

    .line 1088
    :cond_1
    iget-boolean p3, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez p3, :cond_2

    .line 1089
    iput-boolean v3, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1090
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/MessagePreviewView;->access$2102(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z

    .line 1093
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p3, p1, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    xor-int/2addr p3, v3

    iput-boolean p3, p1, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    .line 1094
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMediaItem()V

    .line 1095
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean p3, p1, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    if-eqz p3, :cond_3

    iget-boolean p3, p1, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz p3, :cond_3

    .line 1096
    iput-boolean v2, p1, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    invoke-virtual {p2, v2, v3}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 1098
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    .line 1099
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$25(Landroid/view/View;)V
    .locals 2

    .line 1666
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private synthetic lambda$updatePositions$26(IFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1713
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float/2addr p1, v0

    .line 1714
    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    mul-float/2addr p2, v0

    .line 1715
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    .line 1716
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    return-void
.end method

.method private setOffset(FI)V
    .locals 2

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_1

    .line 1740
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1741
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_0

    .line 1742
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 1744
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1745
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1747
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1748
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 1752
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1753
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 1754
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 1756
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1759
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1760
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1765
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1766
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionOverlay:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private showQuoteLengthError()V
    .locals 4

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->QuoteMaxError:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->QuoteMaxErrorMessage:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private switchToQuote(ZZ)V
    .locals 8

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    if-eqz p2, :cond_1

    .line 222
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->toQuote:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 225
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->toQuote:Z

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    .line 233
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    .line 234
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 236
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 237
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    if-nez p1, :cond_3

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_0
    aput v7, v6, v1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_6

    .line 240
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    if-eqz p1, :cond_5

    move v7, v0

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    aput v7, v6, v1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_8

    .line 244
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    if-nez p1, :cond_7

    move v7, v0

    goto :goto_2

    :cond_7
    move v7, v2

    :goto_2
    aput v7, v6, v1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_a

    .line 248
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_3
    aput v0, v4, v1

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 252
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x168

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 253
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteSwitcher:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_c

    .line 263
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v3, 0x4

    if-eqz p2, :cond_e

    if-nez p1, :cond_c

    move v4, v0

    goto :goto_4

    :cond_c
    move v4, v2

    .line 264
    :goto_4
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 265
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_d

    move v4, v1

    goto :goto_5

    :cond_d
    move v4, v3

    :goto_5
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 267
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_11

    if-eqz p1, :cond_f

    move v4, v0

    goto :goto_6

    :cond_f
    move v4, v2

    .line 268
    :goto_6
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 269
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->clearQuoteButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_10

    move v4, v1

    goto :goto_7

    :cond_10
    move v4, v3

    :goto_7
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 271
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_14

    if-nez p1, :cond_12

    move v4, v0

    goto :goto_8

    :cond_12
    move v4, v2

    .line 272
    :goto_8
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 273
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->replyAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez p1, :cond_13

    move v4, v1

    goto :goto_9

    :cond_13
    move v4, v3

    :goto_9
    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 275
    :cond_14
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p2, :cond_17

    if-eqz p1, :cond_15

    goto :goto_a

    :cond_15
    move v0, v2

    .line 276
    :goto_a
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 277
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->quoteAnotherChatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_16

    goto :goto_b

    :cond_16
    move v1, v3

    :goto_b
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_17
    :goto_c
    return-void
.end method

.method private updateLinkHighlight(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    .line 1770
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->currentLink:Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-nez v0, :cond_0

    .line 1771
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedSpan(Landroid/text/style/CharacterStyle;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1773
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedSpan(Landroid/text/style/CharacterStyle;)Z

    :goto_0
    return-void
.end method

.method private updateMediaItem()V
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$100(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    if-eqz v1, :cond_1

    .line 165
    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$100(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->forwarding_editor_show_media:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_spoiler:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$100(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->forwarding_editor_hide_media:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_spoiler_off:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method private updateMessages()V
    .locals 9

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1473
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateAfterAnimations:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 1477
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v4, v4, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 1478
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v4, v4, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1479
    iput-boolean v1, v4, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1480
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v6, v5, Lorg/telegram/ui/Components/MessagePreviewView;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v4, Lorg/telegram/messenger/MessageObject;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1481
    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v6, :cond_1

    .line 1482
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1483
    iput-boolean v0, v4, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    goto :goto_1

    .line 1485
    :cond_1
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1486
    iput-boolean v1, v4, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    .line 1488
    :goto_1
    iget v6, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v6, v7, :cond_4

    .line 1489
    iget-object v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v5, :cond_3

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v7, :cond_2

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eq v7, v5, :cond_3

    .line 1490
    :cond_2
    iget v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1491
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1492
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v6, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v7, v6, Lorg/telegram/messenger/MessagePreviewParams;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1493
    iget-boolean v6, v6, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    xor-int/lit8 v7, v6, 0x1

    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    .line 1494
    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    .line 1495
    iput-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->manual:Z

    .line 1496
    iput-object v8, v4, Lorg/telegram/messenger/MessageObject;->linkDescription:Ljava/lang/CharSequence;

    .line 1497
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->generateLinkDescription()V

    .line 1498
    iput-object v8, v4, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    .line 1499
    iput-object v8, v4, Lorg/telegram/messenger/MessageObject;->photoThumbs2:Ljava/util/ArrayList;

    .line 1500
    iput-object v8, v4, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    .line 1501
    iput-object v8, v4, Lorg/telegram/messenger/MessageObject;->photoThumbsObject2:Lorg/telegram/tgnet/TLObject;

    .line 1502
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 1503
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->checkMediaExistance()V

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    .line 1505
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v6, v6, -0x201

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1506
    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1509
    :cond_4
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz v5, :cond_5

    .line 1510
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1511
    iput-object v8, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    goto :goto_3

    .line 1514
    :cond_5
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->captionMessageCached:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1515
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1518
    :cond_6
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 1521
    :goto_3
    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->hasPreview:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1700(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->wasPreviewHidden:Z

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    if-eq v6, v5, :cond_8

    .line 1522
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessageObject;->setPreviewHidden(Z)V

    goto/16 :goto_6

    .line 1523
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1700(Lorg/telegram/ui/Components/MessagePreviewView;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->wasMediaHidden:Z

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    if-eq v6, v5, :cond_e

    .line 1524
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->wasMediaHidden:Z

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 1525
    iget-boolean v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    if-eqz v6, :cond_d

    iget-object v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ne v6, v7, :cond_d

    .line 1526
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 1527
    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v7, v7, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessageObject;->transformToSingle(Z)V

    .line 1528
    iget-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->hasCaption:Z

    if-nez v7, :cond_a

    .line 1530
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    iput-boolean v3, v6, Lorg/telegram/messenger/MessageObject;->isForwardHidden:Z

    if-eqz v3, :cond_b

    .line 1532
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_5

    .line 1534
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v3, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_5
    move v3, v1

    goto :goto_4

    .line 1538
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-static {v5}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->access$1300(Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;)V

    .line 1539
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    .line 1541
    :cond_d
    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->hasCaption:Z

    if-eqz v5, :cond_e

    .line 1542
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessageObject;->setMediaHidden(Z)V

    .line 1543
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    move v3, v1

    .line 1549
    :cond_e
    :goto_6
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1550
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v4, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;

    .line 1551
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v6, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v6, v6, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagePreviewParams;->hideCaption:Z

    if-eqz v6, :cond_f

    move v4, v0

    goto :goto_7

    :cond_f
    iget v4, v4, Lorg/telegram/messenger/MessagePreviewParams$PreviewMediaPoll;->totalVotersCached:I

    :goto_7
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    move v2, v0

    .line 1554
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v4, v4, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 1555
    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v4, v4, Lorg/telegram/messenger/MessagePreviewParams$Messages;->pollChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v5, v5, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    xor-int/2addr v5, v1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    move v1, v0

    .line 1557
    :goto_9
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 1558
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v4, v4, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupWillChanged(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1561
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v2, Lorg/telegram/messenger/MessagePreviewParams;->isMediaHidden:Z

    iput-boolean v4, v2, Lorg/telegram/messenger/MessagePreviewParams;->wasMediaHidden:Z

    .line 1562
    iget-boolean v4, v2, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    iput-boolean v4, v2, Lorg/telegram/messenger/MessagePreviewParams;->wasPreviewHidden:Z

    if-eqz v3, :cond_14

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 1567
    :cond_14
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$1702(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z

    .line 1569
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private updatePositions()V
    .locals 10

    .line 1672
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1673
    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1675
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_5

    .line 1677
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    move v5, v3

    move v6, v5

    .line 1678
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 1679
    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1680
    iget-object v8, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 1681
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1685
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    iget-object v5, v5, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v6, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    .line 1688
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 1689
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1690
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    goto :goto_2

    .line 1686
    :cond_3
    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1693
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1694
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 1695
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr v5, v3

    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    int-to-float v2, v2

    sub-float/2addr v5, v2

    iput v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1696
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    .line 1697
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1699
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1700
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 1702
    iput v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    .line 1703
    iput v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    .line 1704
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1707
    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    if-nez v2, :cond_8

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    if-ne v3, v0, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_8

    .line 1708
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_7

    .line 1709
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1711
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    .line 1712
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;IF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1718
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1719
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1720
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1728
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1730
    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    .line 1731
    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    .line 1732
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    .line 1734
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentYOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTopOffset:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->setOffset(FI)V

    :cond_9
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePreviewItem()V
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$200(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->isPreviewHidden:Z

    if-eqz v1, :cond_1

    .line 176
    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$200(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->forwarding_editor_show_preview:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_screencast:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$200(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->forwarding_editor_hide_preview:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_screencast_off:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method private updateSubtitle(Z)V
    .locals 7

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagePreviewParams;->isTemplatePreview()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1402
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 1404
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams$Messages;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "PreviewForwardMessagesCount"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v3, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v4, :cond_2

    return-void

    .line 1412
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v4, Lorg/telegram/messenger/MessagePreviewParams;->hasSenders:Z

    const-string v6, "ForwardPreviewSendersNameVisible"

    if-nez v5, :cond_8

    .line 1413
    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->willSeeSenders:Z

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    .line 1415
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v6, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1417
    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_4

    .line 1418
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleChannel:I

    const-string v1, "ForwardPreviewSendersNameVisibleChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1420
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleGroup:I

    const-string v1, "ForwardPreviewSendersNameVisibleGroup"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 1425
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v6, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1427
    :cond_6
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_7

    .line 1428
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1430
    :cond_7
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1434
    :cond_8
    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    if-nez v4, :cond_b

    if-eqz v3, :cond_9

    .line 1436
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v6, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1438
    :cond_9
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_a

    .line 1439
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1441
    :cond_a
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    if-eqz v3, :cond_c

    .line 1446
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHidden:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "ForwardPreviewSendersNameHidden"

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1448
    :cond_c
    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_d

    .line 1449
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenChannel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1451
    :cond_d
    sget v0, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenGroup:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1455
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_e
    if-nez v0, :cond_11

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v0, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_f

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v0, :cond_f

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PreviewQuoteUpdate:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PreviewQuoteUpdateSubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    .line 1461
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsReplyTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->hasText:Z

    if-eqz v1, :cond_10

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsReplySubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_10
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsLinkTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->actionBar:Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsLinkSubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;->setSubtitle(Ljava/lang/CharSequence;Z)V

    :cond_12
    :goto_3
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    .line 1395
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateMessages()V

    const/4 v0, 0x0

    .line 1396
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSubtitle(Z)V

    return-void
.end method

.method public getReplyMessage()Lorg/telegram/messenger/MessageObject;
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method public getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v0, :cond_2

    .line 313
    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    .line 316
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    return-object p1

    .line 320
    :cond_1
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    return-object p1

    .line 323
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object p1, p1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 6

    .line 290
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 294
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 296
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eq v4, v0, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v3

    :cond_4
    return-object v1
.end method

.method public isReplyMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 283
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 286
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1663
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1664
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1633
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1634
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSelection()V

    const/4 v0, 0x1

    .line 1635
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstAttach:Z

    .line 1636
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1625
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1626
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePositions()V

    const/4 p1, 0x0

    .line 1627
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    .line 1578
    iput v4, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1580
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->rect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    .line 1582
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1583
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1585
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1586
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v5, 0x154

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1590
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->buttonsHeight:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 1594
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1596
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1597
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->menu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1600
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    shl-int/2addr v0, v1

    .line 1601
    iget v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lastSize:I

    if-eq v2, v0, :cond_6

    .line 1602
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_5

    .line 1603
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/MessagePreviewView;->isLandscapeMode:Z

    if-eqz v2, :cond_3

    .line 1604
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v2, Lorg/telegram/messenger/MessageObject;->parentWidth:I

    goto :goto_3

    .line 1606
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/messenger/MessageObject;->parentWidth:I

    .line 1608
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 1609
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iput-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1610
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->adapter:Lorg/telegram/ui/Components/MessagePreviewView$Page$Adapter;

    if-eqz v2, :cond_4

    .line 1611
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1614
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->firstLayout:Z

    .line 1616
    :cond_6
    iput v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->lastSize:I

    .line 1618
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public updateSelection()V
    .locals 4

    .line 1640
    iget v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v0, :cond_4

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iget v0, v0, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->access$600(Lorg/telegram/ui/Components/MessagePreviewView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    if-le v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1645
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1648
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 1649
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1650
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    iget v3, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionStart:I

    iput v3, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 1651
    iget v2, v2, Lorg/telegram/ui/Cells/TextSelectionHelper;->selectionEnd:I

    iput v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    if-eqz v0, :cond_3

    .line 1652
    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1653
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v3, v1, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->onQuoteSelectedPart()V

    .line 1657
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    :cond_4
    return-void
.end method
