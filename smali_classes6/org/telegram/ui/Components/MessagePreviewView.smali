.class public Lorg/telegram/ui/Components/MessagePreviewView;
.super Landroid/widget/FrameLayout;
.source "MessagePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;,
        Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;,
        Lorg/telegram/ui/Components/MessagePreviewView$ActionBar;,
        Lorg/telegram/ui/Components/MessagePreviewView$TabsView;,
        Lorg/telegram/ui/Components/MessagePreviewView$Page;,
        Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;
    }
.end annotation


# instance fields
.field changeBoundsRunnable:Ljava/lang/Runnable;

.field final chatActivity:Lorg/telegram/ui/ChatActivity;

.field private final currentAccount:I

.field currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private final drawingGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessages;",
            ">;"
        }
    .end annotation
.end field

.field private editorHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private isFirstUpdateMessages:Z

.field isLandscapeMode:Z

.field private mediaItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field final messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

.field offsetsAnimator:Landroid/animation/ValueAnimator;

.field private previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private final resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

.field returnSendersNames:Z

.field private returnSendersNamesByMedia:Z

.field private returnSendersNamesByPreview:Z

.field sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

.field final showOutdatedQuote:Z

.field showing:Z

.field tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

.field viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method public static synthetic $r8$lambda$DM1_Hr6sWyROpK4kC7L3gui1efs(Lorg/telegram/ui/Components/MessagePreviewView;ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePreviewView;->lambda$new$1(ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$StV78_CFjUNiz-kCKgf6D3gC51g(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->lambda$dismiss$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKXUxA9Gu9ZNLtkqbdXhI6HiCpg(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->lambda$new$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_ioFaXxKXmJwMjs6tN47WWfwY8(Lorg/telegram/ui/Components/MessagePreviewView;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V
    .locals 3

    .line 2013
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->isFirstUpdateMessages:Z

    .line 1999
    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MessagePreviewView$1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    .line 2008
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->drawingGroups:Ljava/util/ArrayList;

    .line 2014
    iput-boolean p9, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    .line 2015
    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 2016
    iput p6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentAccount:I

    .line 2017
    iput-object p4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 2018
    iput-object p5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2019
    iput-object p3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    .line 2020
    iput-object p7, p0, Lorg/telegram/ui/Components/MessagePreviewView;->resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    .line 2022
    new-instance p2, Lorg/telegram/ui/Components/MessagePreviewView$2;

    invoke-direct {p2, p0, p1, p7}, Lorg/telegram/ui/Components/MessagePreviewView$2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    .line 2051
    new-instance p2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    invoke-direct {p2, p1, p7}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    const/4 p2, 0x0

    move p4, p2

    move p5, p4

    :goto_0
    const/4 p6, 0x3

    if-ge p4, p6, :cond_3

    if-nez p4, :cond_0

    .line 2054
    iget-object p6, p3, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz p6, :cond_0

    .line 2055
    iget-object p6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget p7, Lorg/telegram/messenger/R$string;->MessageOptionsReply:I

    invoke-static {p7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p2, p7}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne p4, v0, :cond_1

    .line 2056
    iget-object p6, p3, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz p6, :cond_1

    if-nez p9, :cond_1

    .line 2057
    iget-object p6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget p7, Lorg/telegram/messenger/R$string;->MessageOptionsForward:I

    invoke-static {p7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, v0, p7}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p6, 0x2

    if-ne p4, p6, :cond_2

    .line 2058
    iget-object p7, p3, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz p7, :cond_2

    if-nez p9, :cond_2

    .line 2059
    iget-object p7, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    sget v1, Lorg/telegram/messenger/R$string;->MessageOptionsLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, p6, v1}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->addTab(ILjava/lang/String;)V

    :goto_1
    if-ne p4, p8, :cond_2

    .line 2064
    iget-object p5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object p5, p5, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    sub-int/2addr p5, v0

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 2068
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance p3, Lorg/telegram/ui/Components/MessagePreviewView$3;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    .line 2089
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    int-to-float p2, p5

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->setSelectedTab(F)V

    .line 2093
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    const/4 p2, -0x1

    const/16 p3, 0x42

    const/16 p4, 0x57

    invoke-static {p2, p3, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2094
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 p2, -0x1

    const/4 p3, -0x1

    const/16 p4, 0x77

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/16 p8, 0x42

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2099
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    new-instance p2, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 2119
    new-instance p1, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p9}, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2125
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    const/4 p1, 0x0

    .line 2126
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const p1, 0x3f733333    # 0.95f

    .line 2127
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2128
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p3, 0xfa

    invoke-virtual {p1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p3, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 2130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 2132
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePreviewView;->updateColors()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->mediaItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/MessagePreviewView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->mediaItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/MessagePreviewView;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->drawingGroups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->editorHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/MessagePreviewView;Lorg/telegram/ui/Stories/recorder/HintView2;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->editorHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/MessagePreviewView;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->isFirstUpdateMessages:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->isFirstUpdateMessages:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/MessagePreviewView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/MessagePreviewView;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNamesByMedia:Z

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNamesByMedia:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/MessagePreviewView;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNamesByPreview:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/MessagePreviewView;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->returnSendersNamesByPreview:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/MessagePreviewView;)Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/MessagePreviewView;)I
    .locals 0

    .line 86
    iget p0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentAccount:I

    return p0
.end method

.method private synthetic lambda$dismiss$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 4

    .line 2100
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->id:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2105
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2106
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->id:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2112
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    if-ne p1, v0, :cond_3

    return-void

    .line 2116
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$new$1(ZLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2120
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    if-nez p1, :cond_0

    .line 2121
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/MessagePreviewView;->dismiss(Z)V

    :cond_0
    return p3
.end method

.method private synthetic lambda$new$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method private updateColors()V
    .locals 0

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
    .locals 4

    .line 2140
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2141
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    .line 2142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/MessagePreviewView$4;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$4;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2152
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2153
    aget-object v2, v1, v0

    instance-of v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    if-eqz v2, :cond_0

    .line 2154
    aget-object v1, v1, v0

    check-cast v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    .line 2155
    iget v2, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v2, :cond_0

    .line 2156
    invoke-virtual {v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->updateSelection()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2161
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePreviewView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 2162
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MessagePreviewView;->onDismiss(Z)V

    :cond_2
    return-void
.end method

.method public getThemedColor(I)I
    .locals 1

    .line 2370
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->resourcesProvider:Lorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isShowing()Z
    .locals 1

    .line 2179
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showing:Z

    return v0
.end method

.method public isTouchedHandle()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2548
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2549
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    check-cast v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v3, v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v3, :cond_0

    .line 2550
    aget-object v0, v2, v1

    check-cast v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->isTouched()Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onDismiss(Z)V
    .locals 0

    return-void
.end method

.method protected onFullDismiss(Z)V
    .locals 0

    return-void
.end method

.method protected onQuoteSelectedPart()V
    .locals 0

    return-void
.end method

.method protected onTransitionAnimationProgress(ZF)V
    .locals 0

    return-void
.end method

.method protected removeForward()V
    .locals 0

    return-void
.end method

.method protected removeLink()V
    .locals 0

    return-void
.end method

.method protected removeQuote()V
    .locals 0

    return-void
.end method

.method protected removeReply()V
    .locals 0

    return-void
.end method

.method protected selectAnotherChat(Z)V
    .locals 0

    return-void
.end method

.method public setSendAsPeer(Lorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 3

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView;->sendAsPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    const/4 p1, 0x0

    .line 127
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 128
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    check-cast v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v1, v1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    aget-object v0, v0, p1

    check-cast v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-static {v0}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$000(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateAll()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 2509
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    .line 2510
    aget-object v3, v2, v1

    instance-of v3, v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    if-eqz v3, :cond_8

    .line 2511
    aget-object v2, v2, v1

    check-cast v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    .line 2512
    iget v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2513
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    .line 2515
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->replyMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 2517
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->linkMessage:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iput-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->messages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    .line 2519
    :cond_2
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$000(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    .line 2520
    iget v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    if-nez v3, :cond_6

    .line 2521
    iget-boolean v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->showOutdatedQuote:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->isSecret:Z

    if-nez v3, :cond_4

    .line 2523
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2524
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getSelectedCell()Lorg/telegram/ui/Cells/TextSelectionHelper$SelectableView;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 2526
    :cond_3
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2528
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput v0, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    .line 2529
    iget v6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->quoteLengthMax:I

    iget-object v7, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    .line 2530
    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v6, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v7, v5, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-static {v3, v6, v7}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;II)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v3

    iput-object v3, v5, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 2531
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->getReplyMessageCell()Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget v7, v6, Lorg/telegram/messenger/MessagePreviewParams;->quoteStart:I

    iget v6, v6, Lorg/telegram/messenger/MessagePreviewParams;->quoteEnd:I

    invoke-virtual {v3, v5, v7, v6}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->select(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    goto :goto_2

    .line 2534
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iput-object v5, v3, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    .line 2535
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 2536
    invoke-static {v2, v0, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$400(Lorg/telegram/ui/Components/MessagePreviewView$Page;ZZ)V

    .line 2538
    :cond_5
    :goto_2
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$1200(Lorg/telegram/ui/Components/MessagePreviewView$Page;Z)V

    .line 2540
    :cond_6
    iget-object v2, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    if-eqz v2, :cond_8

    .line 2541
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const/high16 v3, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public updateLink()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 2493
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 2494
    aget-object v3, v2, v1

    if-eqz v3, :cond_4

    aget-object v3, v2, v1

    check-cast v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget v3, v3, Lorg/telegram/ui/Components/MessagePreviewView$Page;->currentTab:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 2495
    aget-object v2, v2, v1

    check-cast v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    .line 2496
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v5, v4, Lorg/telegram/messenger/MessagePreviewParams;->singleLink:Z

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-nez v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2497
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2498
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->isVideo:Z

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    move v5, v0

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2499
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->hasMedia:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2500
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2501
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->videoChangeSizeBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->webpageSmall:Z

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2502
    iget-object v3, v2, Lorg/telegram/ui/Components/MessagePreviewView$Page;->changePositionBtn:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePreviewView;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagePreviewParams;->webpageTop:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 2503
    invoke-static {v2}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->access$000(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
