.class public Lorg/telegram/ui/Components/ForwardingPreviewView;
.super Landroid/widget/FrameLayout;
.source "ForwardingPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;,
        Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;
    }
.end annotation


# instance fields
.field actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field actionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;"
        }
    .end annotation
.end field

.field adapter:Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;

.field buttonsLayout:Landroid/widget/LinearLayout;

.field buttonsLayout2:Landroid/widget/LinearLayout;

.field changeBoundsRunnable:Ljava/lang/Runnable;

.field changeRecipientView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

.field chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field chatTopOffset:I

.field currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field currentTopOffset:I

.field currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field currentYOffset:F

.field private final drawingGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessages;",
            ">;"
        }
    .end annotation
.end field

.field private firstLayout:Z

.field forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

.field hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field isLandscapeMode:Z

.field itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field lastSize:I

.field menuContainer:Landroid/widget/LinearLayout;

.field menuScrollView:Landroid/widget/ScrollView;

.field offsetsAnimator:Landroid/animation/ValueAnimator;

.field private openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;

.field returnSendersNames:Z

.field private returnSendersNamesByMedia:Z

.field private returnSendersNamesByPreview:Z

.field sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field sendMessagesView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field showing:Z

.field updateAfterAnimations:Z

.field yOffset:F


# direct methods
.method public static synthetic $r8$lambda$0IMJUPqIIHBa72oCdqtig_Vc67Y(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$3oCzpmHchfKlEre5kYyqczOS3qQ(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9w8G8pIrvktnSmg8x7uZ22UQgvg(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BDtZDmeWgkGfiu1joorKs1p7gNc(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$10(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H1C906cTnV4n_3x7LM3ogCsCXqU(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LMO2VTgXPBKIKG10YIX480MqE_U(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$7(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PdWppiHdTvvjEc3JknYS1t3slIY(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$9(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q75Kj0_-eZ3W-G0BXqMRByWKVSI(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$6(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TCyldmptr5sDyOjHHyKah4kHwvg(Lorg/telegram/ui/Components/ForwardingPreviewView;IFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$updatePositions$19(IFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U1wS4GRl0gFkGCs9uXFwWa8Nq7I(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDizKkjY4ab7QIQNwsJBxrE3WHc(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$11(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c087o4Vr3rfZY5d8ubdlWAFGVg4(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jkJV6d-zVqYUK03W6mUcy5T2X2c(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$16(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kLp3El2gawqlAK02702YZvOuTcA(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$obHDgzzsqzjdtv2B6qnxH2RVoCs(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$osbblg3rRBzhd80xWEIUAW-LMD0(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$15(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q8vsV5SFPyhtOt1f6DzVznVpw8g(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$dismiss$18(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vKciUU9Ta360Fy8POuTstz_gyMs(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$8(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xbbMrK76fbkuiPk3UNNJE2ANmSk(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z_xexwFdYuug2g1gCoMw8dD6hCk(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->lambda$new$4()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    .line 185
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->rect:Landroid/graphics/Rect;

    const/4 v13, 0x1

    .line 162
    iput-boolean v13, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->firstLayout:Z

    .line 171
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$1;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$1;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->drawingGroups:Ljava/util/ArrayList;

    .line 187
    iput-object v10, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 188
    iput-object v11, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 189
    iput-object v9, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    .line 190
    iput-object v12, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->resourcesProvider:Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;

    .line 192
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$2;

    invoke-direct {v0, v7, v8, v12}, Lorg/telegram/ui/Components/ForwardingPreviewView$2;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/content/Context;Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v12, :cond_0

    .line 207
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaperNonBlocking()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-nez v12, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v2

    goto :goto_1

    :cond_1
    invoke-interface/range {p6 .. p6}, Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;->isWallpaperMotion()Z

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 208
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v6, 0x4

    if-lt v0, v1, :cond_2

    .line 211
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$3;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$3;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 218
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 219
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 222
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, v8, v12}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 223
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 224
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 226
    new-instance v5, Lorg/telegram/ui/Components/ForwardingPreviewView$4;

    invoke-direct {v5, v7, v8, v12}, Lorg/telegram/ui/Components/ForwardingPreviewView$4;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 419
    new-instance v4, Lorg/telegram/ui/Components/ForwardingPreviewView$5;

    const/4 v2, 0x0

    iget-object v3, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v14, v4

    move-object/from16 v4, p6

    move-object v13, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ForwardingPreviewView$5;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 474
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$6;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$6;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 485
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$7;

    invoke-direct {v1, v7, v9}, Lorg/telegram/ui/Components/ForwardingPreviewView$7;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 508
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/ui/Components/ForwardingPreviewView$1;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->adapter:Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 509
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v15, v1, v15, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 510
    new-instance v13, Lorg/telegram/ui/Components/ForwardingPreviewView$8;

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ForwardingPreviewView$8;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/content/Context;IIZLorg/telegram/messenger/ForwardingMessagesParams;)V

    iput-object v13, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    .line 554
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$9;

    invoke-direct {v0, v7, v9}, Lorg/telegram/ui/Components/ForwardingPreviewView$9;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v13, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 568
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 569
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatLayoutManager:Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 570
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$10;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$10;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 604
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 605
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v16, -0x1

    const/16 v17, 0x190

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    .line 609
    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 612
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 613
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 615
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    .line 616
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 618
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 619
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 620
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuContainer:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x15

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v14, v4

    move/from16 v4, v16

    move/from16 v23, v5

    move-object/from16 v5, p6

    move/from16 v24, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 624
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v0

    const/16 v14, 0x30

    if-nez v0, :cond_3

    .line 625
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    :cond_3
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->multiplyUsers:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$string;->ShowSenderNames:I

    const-string v2, "ShowSenderNames"

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->ShowSendersName:I

    const-string v2, "ShowSendersName"

    :goto_2
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 627
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 629
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 630
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelSend:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v6, v5, v4}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 631
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 632
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->custom_forward_option_author:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-boolean v0, v9, Lorg/telegram/messenger/ForwardingMessagesParams;->needForceHideForwardAuthor:Z

    if-eqz v0, :cond_5

    .line 634
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 635
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 639
    :cond_5
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/16 v16, 0x0

    iget-boolean v0, v9, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    const/4 v1, 0x1

    xor-int/lit8 v17, v0, 0x1

    move-object v0, v3

    move-object/from16 v1, p1

    move-object v14, v3

    move/from16 v3, v16

    move/from16 v25, v4

    move/from16 v4, v17

    move/from16 v26, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 641
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->multiplyUsers:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->HideSenderNames:I

    const-string v1, "HideSenderNames"

    goto :goto_3

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->HideSendersName:I

    const-string v1, "HideSendersName"

    :goto_3
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 642
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 644
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    if-eqz v0, :cond_7

    .line 645
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$11;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ForwardingPreviewView$11;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/content/Context;)V

    .line 651
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-direct {v7, v14}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 652
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    invoke-static {v13, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x15

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v15, v5

    move-object/from16 v5, p6

    move/from16 v27, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v15, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 656
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-static {v13, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->ShowCaption:I

    const-string v2, "ShowCaption"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 658
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 660
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 661
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v15, v27

    invoke-virtual {v0, v15, v6, v5}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 662
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 663
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->custom_forward_option_text:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 666
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/16 v16, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v13, v4

    move/from16 v4, v16

    move/from16 v28, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 668
    sget v0, Lorg/telegram/messenger/R$string;->HideCaption:I

    const-string v1, "HideCaption"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 669
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 671
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$12;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ForwardingPreviewView$12;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/content/Context;)V

    .line 677
    invoke-direct {v7, v14}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 678
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v14, 0x15

    move-object v0, v13

    move-object/from16 v1, p1

    move v9, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v13, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 681
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->custom_forward_option_media:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 683
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 684
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 685
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    move/from16 v13, v28

    invoke-virtual {v0, v15, v9, v13}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 686
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    goto :goto_4

    :cond_7
    move v15, v6

    move/from16 v13, v25

    move/from16 v9, v26

    .line 690
    :goto_4
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    if-eqz v0, :cond_8

    .line 691
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$13;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/ForwardingPreviewView$13;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Landroid/content/Context;)V

    .line 697
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 698
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x15

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v14, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 701
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->custom_forward_option_link_preview:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 703
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 704
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 705
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, v15, v9, v13}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 706
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 708
    :cond_8
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 709
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v8, v1, v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 710
    sget v1, Lorg/telegram/messenger/R$string;->Edit:I

    const-string v2, "Edit"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 711
    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1, v1, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 722
    sget v1, Lorg/telegram/messenger/R$string;->EditName:I

    const-string v3, "EditName"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 723
    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v8, v2, v1, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 734
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 735
    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda7;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x30

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_9
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 748
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 750
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    move/from16 v2, v23

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 751
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuContainer:Landroid/widget/LinearLayout;

    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v3, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    if-nez v3, :cond_b

    invoke-virtual {v2}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/16 v24, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v2, -0x8

    move/from16 v24, v2

    :goto_6
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v8, v1, v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeRecipientView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 756
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v10, :cond_c

    if-eqz v11, :cond_d

    :cond_c
    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    .line 757
    :goto_7
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeRecipientView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    .line 758
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-direct {v1, v8, v2, v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 759
    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateOpenEditorItem()V

    if-eqz v0, :cond_e

    .line 764
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeRecipientView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    :cond_e
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeRecipientView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$string;->ChangeRecipient:I

    const-string v3, "ChangeRecipient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_forward_replace:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 767
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v8, v3, v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->sendMessagesView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 768
    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->sendMessagesView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v2}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lorg/telegram/messenger/R$string;->Send:I

    const-string v3, "Send"

    goto :goto_8

    :cond_f
    sget v2, Lorg/telegram/messenger/R$string;->ForwardSendMessages:I

    const-string v3, "ForwardSendMessages"

    :goto_8
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 771
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    if-eqz v1, :cond_11

    .line 772
    iget-object v1, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    .line 775
    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    if-eqz v2, :cond_10

    .line 776
    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    iget-object v3, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    iget-object v3, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_10
    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    if-eqz v2, :cond_12

    .line 782
    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    iget-object v3, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    move-object/from16 v1, p2

    .line 787
    :cond_12
    :goto_9
    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    iget-object v3, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_13

    .line 790
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeRecipientView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_13
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    iget-object v2, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->sendMessagesView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda12;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda10;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-boolean v0, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    if-eqz v0, :cond_14

    .line 838
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda14;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda11;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda9;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    :cond_14
    iget-boolean v0, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    if-eqz v0, :cond_15

    .line 909
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda13;

    invoke-direct {v2, v7, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/ForwardingMessagesParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    :cond_15
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 932
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 934
    iget-boolean v0, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasCaption:Z

    if-eqz v0, :cond_16

    .line 935
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 936
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 937
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 940
    :cond_16
    iget-boolean v0, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasPreview:Z

    if-eqz v0, :cond_17

    .line 941
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHidePreview:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 945
    :cond_17
    iget-boolean v0, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    if-nez v0, :cond_18

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v0

    if-nez v0, :cond_18

    .line 946
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 949
    :cond_18
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->sendMessagesView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeRecipientView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda6;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    .line 954
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateSubtitle()V

    .line 956
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 957
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->template:Lcom/iMe/storage/domain/model/templates/TemplateModel;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 959
    :cond_19
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PreviewForwardMessagesCount"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 961
    :goto_a
    iget-object v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda16;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 967
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda15;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 973
    iput-boolean v0, v7, Lorg/telegram/ui/Components/ForwardingPreviewView;->showing:Z

    const/4 v0, 0x0

    .line 974
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const v0, 0x3f733333    # 0.95f

    .line 975
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 976
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 977
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 980
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateColors()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updatePositions()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ForwardingPreviewView;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->drawingGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateOpenEditorItem()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ForwardingPreviewView;FI)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->setOffset(FI)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ForwardingPreviewView;)Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->resourcesProvider:Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->resourcesProvider:Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    return-object p1
.end method

.method private getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/messenger/MessageObject$GroupedMessages;
    .locals 4

    .line 1350
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessageObject;->getGroupId(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessageObject;->getGroupId(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz p2, :cond_0

    .line 1352
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

.method private synthetic lambda$dismiss$18(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1050
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 716
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->didEditPressed()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 712
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showing:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 715
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    .line 716
    new-instance p1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 3

    .line 883
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 884
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNames:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByMedia:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByPreview:Z

    if-eqz p2, :cond_0

    .line 885
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iput-boolean v0, p2, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 887
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByMedia:Z

    .line 888
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    xor-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    goto :goto_0

    .line 890
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v2, p2, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-nez v2, :cond_2

    .line 891
    iput-boolean v1, p2, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 892
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByMedia:Z

    .line 894
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 896
    :goto_0
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    xor-int/2addr p2, v1

    iput-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    .line 897
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 898
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    if-eqz p2, :cond_3

    .line 899
    iput-boolean v0, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 902
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    .line 903
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateSubtitle()V

    return-void
.end method

.method private synthetic lambda$new$11(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 3

    .line 910
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHidePreview:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 911
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNames:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByMedia:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByPreview:Z

    if-eqz p2, :cond_0

    .line 912
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iput-boolean v0, p2, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 914
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByPreview:Z

    .line 915
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    goto :goto_0

    .line 917
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v2, p2, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-nez v2, :cond_2

    .line 918
    iput-boolean v1, p2, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 919
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByPreview:Z

    .line 921
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 923
    :goto_0
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHidePreview:Z

    xor-int/2addr p2, v1

    iput-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHidePreview:Z

    .line 924
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 925
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    .line 926
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateSubtitle()V

    return-void
.end method

.method private synthetic lambda$new$12(Landroid/view/View;)V
    .locals 0

    .line 949
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->didSendPressed()V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;)V
    .locals 0

    .line 950
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->selectAnotherChat()V

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 0

    .line 951
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->didOpenEditorPressed()V

    return-void
.end method

.method private synthetic lambda$new$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 962
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 963
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$new$16(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 968
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 969
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    :cond_0
    return p2
.end method

.method private synthetic lambda$new$17(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 978
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 0

    .line 728
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->didRenamePressed()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 2

    .line 724
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showing:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 727
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    .line 728
    new-instance p1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    .line 740
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->didDeletePressed()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 2

    .line 736
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showing:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 739
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    .line 740
    new-instance p1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    const-wide/16 v0, 0xfa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 2

    .line 795
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-nez p2, :cond_0

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void

    :cond_0
    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 801
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNames:Z

    .line 802
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByPreview:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByMedia:Z

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 810
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 813
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showPreviewView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_3

    .line 814
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 816
    :cond_3
    iput-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHidePreview:Z

    iput-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    .line 818
    iput-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 819
    iput-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    .line 820
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    .line 821
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateSubtitle()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$7(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 1

    .line 826
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 827
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNames:Z

    .line 828
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByPreview:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByMedia:Z

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 830
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 831
    iput-boolean v0, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 832
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    .line 833
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateSubtitle()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 3

    .line 840
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    if-nez p2, :cond_0

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 846
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNames:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByMedia:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNamesByPreview:Z

    if-eqz p2, :cond_1

    .line 847
    iput-boolean v0, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 849
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNames:Z

    .line 850
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 851
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 852
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    xor-int/2addr v1, v2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 853
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v1, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 854
    iput-boolean v0, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    .line 855
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    .line 856
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateSubtitle()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/messenger/ForwardingMessagesParams;Landroid/view/View;)V
    .locals 2

    .line 861
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    if-nez p2, :cond_2

    .line 863
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 864
    iput-boolean v0, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    .line 865
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showMediaView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 868
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 869
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideCaptionView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 870
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 871
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->hideSendersNameView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 872
    iget-boolean p2, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-nez p2, :cond_1

    .line 873
    iput-boolean v1, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    .line 874
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->returnSendersNames:Z

    .line 876
    :cond_1
    iput-boolean v1, p1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    .line 877
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    .line 878
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateSubtitle()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updatePositions$19(IFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1257
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float/2addr p1, v0

    .line 1258
    iget v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentTopOffset:I

    mul-float/2addr p2, v0

    .line 1259
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->yOffset:F

    mul-float/2addr v0, p3

    add-float/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentYOffset:F

    .line 1260
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->setOffset(FI)V

    return-void
.end method

.method private setOffset(FI)V
    .locals 2

    .line 1283
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->isLandscapeMode:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_1

    .line 1284
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 1285
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_0

    .line 1286
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 1288
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1289
    iget-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setTranslationY(F)V

    goto :goto_0

    .line 1291
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 1292
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_2

    .line 1293
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 1295
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1296
    iget-object p2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private updateColors()V
    .locals 0

    return-void
.end method

.method private updateMessages()V
    .locals 9

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1063
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateAfterAnimations:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 1067
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 1068
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1069
    iput-boolean v1, v4, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1070
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1071
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v6, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-nez v6, :cond_1

    .line 1072
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1073
    iput-boolean v0, v4, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    goto :goto_1

    .line 1075
    :cond_1
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1076
    iput-boolean v1, v4, Lorg/telegram/messenger/MessageObject;->hideSendersName:Z

    .line 1078
    :goto_1
    iget-boolean v5, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    if-eqz v5, :cond_2

    .line 1079
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1080
    iput-object v6, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    goto :goto_2

    .line 1083
    :cond_2
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->captionMessageCached:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1084
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1087
    :cond_3
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->generateCaption()V

    .line 1090
    :goto_2
    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->isWebpage:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v6, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->isLastHidePreview:Z

    iget-boolean v5, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->needHidePreview:Z

    if-eq v6, v5, :cond_4

    .line 1091
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessageObject;->hidePreview(Z)V

    goto/16 :goto_6

    .line 1092
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v6, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->isLastHideMedia:Z

    iget-boolean v5, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    if-eq v6, v5, :cond_a

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v0

    .line 1093
    :goto_3
    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Components/ForwardingPreviewView;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;Z)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1094
    iget-boolean v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    if-eqz v6, :cond_9

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

    if-ne v6, v7, :cond_9

    .line 1095
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 1096
    iget-object v7, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v7, v7, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessageObject;->transformToSingle(Z)V

    .line 1097
    iget-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->hasCaption:Z

    if-nez v7, :cond_6

    .line 1099
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v7, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    iput-boolean v7, v6, Lorg/telegram/messenger/MessageObject;->hidden:Z

    if-eqz v7, :cond_7

    .line 1101
    iget-object v3, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_5

    .line 1103
    :cond_7
    iget-object v3, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v3, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_5
    move v3, v1

    goto :goto_4

    .line 1107
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v6, v6, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "PreviewForwardMessagesCount"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1109
    :cond_9
    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->hasCaption:Z

    if-eqz v5, :cond_a

    .line 1110
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessageObject;->hideCaptionedMedia(Z)V

    .line 1115
    :cond_a
    :goto_6
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPoll()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1116
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v4, Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;

    .line 1117
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v6, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v6, v6, Lorg/telegram/messenger/ForwardingMessagesParams;->hideCaption:Z

    if-eqz v6, :cond_b

    move v4, v0

    goto :goto_7

    :cond_b
    iget v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams$PreviewMediaPoll;->totalVotersCached:I

    :goto_7
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$PollResults;->total_voters:I

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    move v2, v0

    .line 1120
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->pollChoosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 1121
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->pollChoosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v5, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    xor-int/2addr v5, v1

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;->chosen:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    move v1, v0

    .line 1123
    :goto_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 1124
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->itemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->groupWillChanged(Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1127
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHideMedia:Z

    iput-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->isLastHideMedia:Z

    .line 1128
    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->needHidePreview:Z

    iput-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->isLastHidePreview:Z

    if-eqz v3, :cond_10

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->adapter:Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 1134
    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->adapter:Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method private updateOpenEditorItem()V
    .locals 6

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/ForwardingMessagesParams;->getSelectedMessages(Ljava/util/ArrayList;Z)V

    .line 96
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v3}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lorg/telegram/messenger/MessageObject;->canEditMessage(Lorg/telegram/tgnet/TLRPC$Chat;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->isFromShareAlert:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$string;->EditMessage:I

    const-string v3, "EditMessage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$string;->EventLogPromotedEditMessages:I

    const-string v3, "EventLogPromotedEditMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 98
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->openEditorView:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updatePositions()V

    :cond_4
    return-void
.end method

.method private updatePositions()V
    .locals 7

    .line 1216
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    .line 1217
    iget v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->yOffset:F

    .line 1219
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->isLandscapeMode:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_6

    .line 1220
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v5, v5, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v2, v5, :cond_0

    goto :goto_1

    .line 1223
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v5, 0x1

    .line 1224
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1225
    iget-object v6, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v2, :cond_1

    .line 1226
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    .line 1229
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v2, v5

    if-gez v2, :cond_3

    .line 1231
    iput v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    goto :goto_2

    .line 1233
    :cond_3
    iput v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    goto :goto_2

    .line 1221
    :cond_4
    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    .line 1237
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 1238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 1239
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr v5, v3

    iget v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    int-to-float v2, v2

    sub-float/2addr v5, v2

    iput v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->yOffset:F

    .line 1240
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_5

    .line 1241
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->yOffset:F

    .line 1243
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1244
    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setTranslationX(F)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 1246
    iput v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->yOffset:F

    .line 1247
    iput v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    .line 1248
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setTranslationX(F)V

    .line 1251
    :goto_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->firstLayout:Z

    if-nez v2, :cond_9

    iget v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    if-ne v3, v0, :cond_7

    iget v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->yOffset:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_9

    .line 1252
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_8

    .line 1253
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1255
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    .line 1256
    new-instance v3, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;IF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1262
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1263
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1264
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ForwardingPreviewView$15;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$15;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1272
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1274
    iput v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentTopOffset:I

    .line 1275
    iput v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentYOffset:F

    .line 1276
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->setOffset(FI)V

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_a

    .line 1278
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->yOffset:F

    iput v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentYOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatTopOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentTopOffset:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->setOffset(FI)V

    :cond_a
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateSubtitle()V
    .locals 10

    .line 985
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 989
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v2, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSenders:Z

    const-string v3, "ForwardPreviewSendersNameVisibleChannel"

    const-string v4, "ForwardPreviewSendersNameHiddenChannel"

    const-string v5, "ForwardPreviewSendersNameVisibleGroup"

    const-string v6, "ForwardPreviewSendersNameHiddenGroup"

    const-string v7, "ForwardPreviewSendersNameVisible"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_6

    .line 990
    iget-boolean v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->willSeeSenders:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 992
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v7, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 994
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_2

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleChannel:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 997
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleGroup:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 1002
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v7, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1004
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_5

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenChannel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1007
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenGroup:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1011
    :cond_6
    iget-boolean v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->hideForwardSendersName:Z

    if-nez v1, :cond_9

    if-eqz v0, :cond_7

    .line 1013
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisible:I

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v7, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1015
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_8

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleChannel:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1018
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameVisibleGroup:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_a

    .line 1023
    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHidden:I

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const-string v0, "ForwardPreviewSendersNameHidden"

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1025
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_b

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenChannel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1028
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->ForwardPreviewSendersNameHiddenGroup:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_0
    return-void
.end method


# virtual methods
.method protected didDeletePressed()V
    .locals 0

    return-void
.end method

.method protected didEditPressed()V
    .locals 0

    return-void
.end method

.method protected didOpenEditorPressed()V
    .locals 0

    return-void
.end method

.method protected didRenamePressed()V
    .locals 0

    return-void
.end method

.method protected didSendPressed()V
    .locals 0

    return-void
.end method

.method public dismiss(Z)V
    .locals 3

    .line 1039
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1040
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showing:Z

    .line 1041
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$14;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1050
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 1051
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->onDismiss(Z)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1301
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->showing:Z

    return v0
.end method

.method protected onDismiss(Z)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1209
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1210
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updatePositions()V

    const/4 p1, 0x0

    .line 1211
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->firstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1141
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->isLandscapeMode:Z

    .line 1143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1144
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->isLandscapeMode:Z

    if-eqz v1, :cond_1

    .line 1145
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ec28f5c    # 0.38f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_1
    move v1, v3

    move v4, v1

    .line 1147
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 1149
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1153
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1154
    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 1155
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1158
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->rect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1167
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->isLandscapeMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1170
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

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

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1172
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 1174
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->buttonsLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1177
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1180
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->menuScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1184
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    shl-int/2addr v0, v1

    .line 1185
    iget v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->lastSize:I

    if-eq v4, v0, :cond_a

    .line 1186
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 1187
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->isLandscapeMode:Z

    if-eqz v4, :cond_7

    .line 1188
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatPreviewContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Lorg/telegram/messenger/MessageObject;->parentWidth:I

    goto :goto_5

    .line 1190
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/messenger/MessageObject;->parentWidth:I

    .line 1192
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 1193
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v4, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iput-boolean v2, v4, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 1194
    iget-object v4, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->adapter:Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;

    if-eqz v4, :cond_8

    .line 1195
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1198
    :cond_9
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->firstLayout:Z

    .line 1200
    :cond_a
    iput v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->lastSize:I

    .line 1202
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onTransitionAnimationProgress(ZF)V
    .locals 0

    return-void
.end method

.method protected selectAnotherChat()V
    .locals 0

    return-void
.end method

.method public setSendAsPeer(Lorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateMessages()V

    return-void
.end method
