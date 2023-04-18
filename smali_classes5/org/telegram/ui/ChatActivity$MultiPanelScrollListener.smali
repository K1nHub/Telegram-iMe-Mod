.class Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPanelScrollListener"
.end annotation


# instance fields
.field private final SCROLL_THRESHOLD:I

.field private isVisible:Z

.field private scrolledDistance:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$AhvLLkiXBSIrGpiNAQYwuNOzNlM(Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->lambda$onScrollStateChanged$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 2109
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/16 p1, 0x64

    .line 2111
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->SCROLL_THRESHOLD:I

    const/4 p1, 0x0

    .line 2112
    iput p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->scrolledDistance:I

    const/4 p1, 0x1

    .line 2113
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->isVisible:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$1;)V
    .locals 0

    .line 2109
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;-><init>(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;Z)V
    .locals 0

    .line 2109
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->show(Z)V

    return-void
.end method

.method private synthetic lambda$onScrollStateChanged$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 2131
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2132
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->show(Z)V

    :cond_0
    return-void
.end method

.method private show(Z)V
    .locals 2

    .line 2139
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->isVisible:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2142
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->isVisible:Z

    const/4 v0, 0x0

    .line 2143
    iput v0, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->scrolledDistance:I

    .line 2144
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$1600(Lorg/telegram/ui/ChatActivity;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 2128
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2130
    new-instance p2, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v0, 0x64

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 2117
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2118
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$1500(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->isVisible:Z

    if-eqz p1, :cond_1

    .line 2119
    iget p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->scrolledDistance:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->SCROLL_THRESHOLD:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2120
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->show(Z)V

    .line 2122
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->scrolledDistance:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/ChatActivity$MultiPanelScrollListener;->scrolledDistance:I

    :cond_1
    return-void
.end method
