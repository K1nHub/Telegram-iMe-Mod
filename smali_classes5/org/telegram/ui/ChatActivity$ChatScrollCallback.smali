.class public Lorg/telegram/ui/ChatActivity$ChatScrollCallback;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatScrollCallback"
.end annotation


# instance fields
.field private bottom:Z

.field private lastBottom:Z

.field private lastItemOffset:I

.field private lastPadding:I

.field private offset:I

.field private position:I

.field private scrollTo:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$JPWS-73_eeKdS1wRiwtdf57LlQ8(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lambda$onEndAnimation$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    .line 33780
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;-><init>()V

    const/4 p1, 0x0

    .line 33783
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->position:I

    const/4 v0, 0x1

    .line 33784
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->bottom:Z

    .line 33785
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->offset:I

    return-void
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 33780
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;Z)Z
    .locals 0

    .line 33780
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastBottom:Z

    return p1
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)I
    .locals 0

    .line 33780
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastItemOffset:I

    return p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)I
    .locals 0

    .line 33780
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastPadding:I

    return p1
.end method

.method static synthetic access$35002(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)I
    .locals 0

    .line 33780
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->position:I

    return p1
.end method

.method static synthetic access$35102(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;I)I
    .locals 0

    .line 33780
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->offset:I

    return p1
.end method

.method static synthetic access$35202(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;Z)Z
    .locals 0

    .line 33780
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->bottom:Z

    return p1
.end method

.method private synthetic lambda$onEndAnimation$0()V
    .locals 2

    .line 33817
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$59900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onEndAnimation()V
    .locals 4

    .line 33801
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 33802
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsSafe()V

    .line 33803
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 33805
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastItemOffset:I

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->lastBottom:Z

    invoke-virtual {v1, v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    goto :goto_0

    .line 33808
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsSafe()V

    .line 33809
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->position:I

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->offset:I

    iget-boolean v3, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->bottom:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33811
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->scrollTo:Lorg/telegram/messenger/MessageObject;

    .line 33812
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$23102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 33815
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)V

    .line 33817
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$ChatScrollCallback$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatScrollCallback;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartAnimation()V
    .locals 4

    .line 33792
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onStartAnimation()V

    .line 33793
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$59900(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$21800()[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$59902(Lorg/telegram/ui/ChatActivity;I)I

    .line 33794
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$28900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33795
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$28900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->finishZoom()V

    :cond_0
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 1

    .line 33822
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    .line 33823
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatScrollCallback;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$48700(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
