.class Lorg/telegram/ui/Components/ShareAlert$24;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;->selectDialog(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

.field final synthetic val$timeoutRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static synthetic $r8$lambda$XgdfmUXWwErBRj21mLoZ7ySy0Vc(Lorg/telegram/ui/Components/ShareAlert$24;Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ShareAlert$24;->lambda$didReceivedNotification$0(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$w_Yp918e7uIE31x7Suh200eMX7E(Lorg/telegram/ui/Components/ShareAlert$24;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ShareAlert$24;->lambda$didReceivedNotification$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$Dialog;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 1893
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iput-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$timeoutRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$cell:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$0(Landroid/view/View;[ILandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p4, p3

    .line 1931
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3, p1, p2, p4}, Lorg/telegram/ui/Components/ShareAlert;->access$11500(Lorg/telegram/ui/Components/ShareAlert;Landroid/view/View;[IF)V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$1(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1934
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2100(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1935
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1936
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert;->searchView:Lorg/telegram/ui/Components/ShareAlert$SearchField;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1938
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$11302(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    const/4 p1, 0x0

    .line 1897
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 1898
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v0, v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_7

    .line 1899
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$6500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->access$10600(Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$10700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$timeoutRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, p1

    .line 1901
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$6500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$10800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->access$10602(Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;Ljava/util/List;)Ljava/util/List;

    if-eqz p2, :cond_3

    .line 1903
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$6500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1906
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$6500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;->access$10600(Lorg/telegram/ui/Components/ShareAlert$ShareTopicsAdapter;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 1907
    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/ShareAlert;->access$10900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoaded:I

    invoke-virtual {p3, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_4
    if-eqz p2, :cond_7

    .line 1911
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$6400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1912
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$6400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1913
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1914
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1915
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1916
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert;->topicsBackActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget p2, Lorg/telegram/messenger/R$string;->SelectTopic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1917
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->access$11102(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    .line 1919
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11300(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1920
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11300(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_5
    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 1924
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1, p3}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 1926
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$11400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$11400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity;->shareAlertDebugTopicsSlowMotion:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_1

    :cond_6
    const/high16 v1, 0x44480000    # 800.0f

    :goto_1
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1927
    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    .line 1925
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p3

    .line 1924
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/ShareAlert;->access$11302(Lorg/telegram/ui/Components/ShareAlert;Landroidx/dynamicanimation/animation/SpringAnimation;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1928
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$11300(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$cell:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$24$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p1}, Lorg/telegram/ui/Components/ShareAlert$24$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$24;Landroid/view/View;[I)V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1933
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11300(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$24$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ShareAlert$24$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$24;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1940
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$11300(Lorg/telegram/ui/Components/ShareAlert;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 1942
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$timeoutRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1943
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$timeoutRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1944
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->val$timeoutRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
