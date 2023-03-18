.class Lorg/telegram/ui/CalendarActivity$MonthView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity$MonthView;-><init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$3d1TAWw1-eVjS0za95p9MjFJjqM(Lorg/telegram/ui/CalendarActivity$MonthView$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L_oFYuaYdSETZw44Ym6f54oYZrM(Lorg/telegram/ui/CalendarActivity$MonthView$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YJpwmKJK7rADqIGVyEVmZs6Fhpg(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kWqnThtxKdHmhnH5-hD3Fv0GX3Y(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$1(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tO1FoBA7g2nISHqxxWCmJwkJQJ0(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->lambda$onLongPress$2(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/CalendarActivity$MonthView;Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iput-object p3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;
    .locals 13

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 669
    :cond_0
    iget v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->startDayOfWeek:I

    .line 671
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v0, v3

    const/16 v3, 0x34

    .line 672
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x2c

    .line 673
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 674
    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget v9, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->daysInMonth:I

    if-ge v7, v9, :cond_3

    int-to-float v9, v1

    mul-float v9, v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v0, v10

    add-float/2addr v9, v11

    int-to-float v11, v8

    mul-float v11, v11, v3

    div-float v10, v3, v10

    add-float/2addr v11, v10

    .line 676
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    int-to-float v10, v5

    sub-float v12, v9, v10

    cmpl-float v12, p1, v12

    if-ltz v12, :cond_1

    add-float/2addr v9, v10

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_1

    sub-float v9, v11, v10

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_1

    add-float/2addr v11, v10

    cmpg-float v9, p2, v11

    if-gtz v9, :cond_1

    .line 679
    iget-object v9, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v9, v9, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CalendarActivity$PeriodDay;

    if-eqz v9, :cond_1

    return-object v9

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x7

    if-lt v1, v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private synthetic lambda$onLongPress$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 727
    check-cast p1, Lorg/telegram/ui/ChatActivity;

    iget p2, p2, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity;->jumpToDate(I)V

    return-void
.end method

.method private synthetic lambda$onLongPress$1(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 2

    .line 722
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p2}, Lorg/telegram/ui/CalendarActivity;->access$2800(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p2}, Lorg/telegram/ui/CalendarActivity;->access$2900(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 723
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p2}, Lorg/telegram/ui/CalendarActivity;->access$3100(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$3000(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 724
    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    const-wide/16 p1, 0x12c

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 731
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onLongPress$2(Lorg/telegram/ui/CalendarActivity$PeriodDay;Landroid/view/View;)V
    .locals 0

    .line 740
    iget-object p2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p2, p2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {p2, p1}, Lorg/telegram/ui/CalendarActivity;->access$402(Lorg/telegram/ui/CalendarActivity;I)I

    move-result p1

    invoke-static {p2, p1}, Lorg/telegram/ui/CalendarActivity;->access$302(Lorg/telegram/ui/CalendarActivity;I)I

    .line 741
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/CalendarActivity;->access$502(Lorg/telegram/ui/CalendarActivity;Z)Z

    .line 742
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$600(Lorg/telegram/ui/CalendarActivity;)V

    .line 743
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$700(Lorg/telegram/ui/CalendarActivity;)V

    .line 744
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onLongPress$3(Landroid/view/View;)V
    .locals 8

    .line 752
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2500(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 753
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2700(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$2600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 754
    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    const/4 v2, 0x1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->access$1900(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$1;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 764
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onLongPress$4(Landroid/view/View;)V
    .locals 0

    .line 781
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    .line 696
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1100(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 700
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 705
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 706
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$1900(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 707
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$1900(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v2

    const-string v4, "user_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$1900(Lorg/telegram/ui/CalendarActivity;)J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "chat_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 711
    :goto_0
    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    const-string v3, "start_from_date"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "need_remove_previous_same_chat_activity"

    .line 712
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 713
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 715
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    iget-object v5, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v5, v5, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 716
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    const-string v4, "actionBarDefaultSubmenuBackground"

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 718
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v4, v4, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 719
    sget v4, Lorg/telegram/messenger/R$string;->JumpToDate:I

    const-string v6, "JumpToDate"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/16 v4, 0xa0

    .line 720
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 721
    new-instance v6, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 735
    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->access$1200(Lorg/telegram/ui/CalendarActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 736
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v6, v6, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 737
    sget v6, Lorg/telegram/messenger/R$string;->SelectThisDay:I

    const-string v7, "SelectThisDay"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_select:I

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 738
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 739
    new-instance v6, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Lorg/telegram/ui/CalendarActivity$PeriodDay;)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 748
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p1, v3, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 749
    sget v1, Lorg/telegram/messenger/R$string;->ClearHistory:I

    const-string v3, "ClearHistory"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 750
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 751
    new-instance v1, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 768
    :cond_2
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    new-instance v1, Lorg/telegram/ui/CalendarActivity$MonthView$2$2;

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/CalendarActivity$MonthView$2$2;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;Landroid/content/Context;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/CalendarActivity;->access$2002(Lorg/telegram/ui/CalendarActivity;Landroid/view/View;)Landroid/view/View;

    .line 780
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2000(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CalendarActivity$MonthView$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CalendarActivity$MonthView$2;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2000(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 784
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2000(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 785
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v1, v1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v1}, Lorg/telegram/ui/CalendarActivity;->access$2000(Lorg/telegram/ui/CalendarActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$2400(Lorg/telegram/ui/CalendarActivity;)V

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    :cond_3
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1300(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 612
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1100(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$PeriodDay;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity;->callback:Lorg/telegram/ui/CalendarActivity$Callback;

    if-eqz v3, :cond_1

    .line 615
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget v0, v0, Lorg/telegram/ui/CalendarActivity$PeriodDay;->startOffset:I

    invoke-interface {v3, v2, v0}, Lorg/telegram/ui/CalendarActivity$Callback;->onDateSelected(II)V

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 619
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->messagesByDays:Landroid/util/SparseArray;

    if-eqz v2, :cond_b

    .line 620
    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$500(Lorg/telegram/ui/CalendarActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1400(Lorg/telegram/ui/CalendarActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1400(Lorg/telegram/ui/CalendarActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/CalendarActivity;->access$1402(Lorg/telegram/ui/CalendarActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 627
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$300(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$400(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 644
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->access$402(Lorg/telegram/ui/CalendarActivity;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->access$302(Lorg/telegram/ui/CalendarActivity;I)I

    goto/16 :goto_1

    .line 628
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$300(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$400(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_5

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/CalendarActivity;->access$402(Lorg/telegram/ui/CalendarActivity;I)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/CalendarActivity;->access$302(Lorg/telegram/ui/CalendarActivity;I)I

    goto :goto_1

    .line 630
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$300(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_6

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$400(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/CalendarActivity;->access$302(Lorg/telegram/ui/CalendarActivity;I)I

    goto :goto_1

    .line 632
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$400(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    if-ne v0, v2, :cond_7

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$300(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/CalendarActivity;->access$402(Lorg/telegram/ui/CalendarActivity;I)I

    goto :goto_1

    .line 634
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$300(Lorg/telegram/ui/CalendarActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$400(Lorg/telegram/ui/CalendarActivity;)I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 635
    iget v0, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v2}, Lorg/telegram/ui/CalendarActivity;->access$400(Lorg/telegram/ui/CalendarActivity;)I

    move-result v2

    if-le v0, v2, :cond_8

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->access$402(Lorg/telegram/ui/CalendarActivity;I)I

    goto :goto_1

    .line 638
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->access$302(Lorg/telegram/ui/CalendarActivity;I)I

    goto :goto_1

    .line 641
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->access$402(Lorg/telegram/ui/CalendarActivity;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/CalendarActivity;->access$302(Lorg/telegram/ui/CalendarActivity;I)I

    .line 647
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$600(Lorg/telegram/ui/CalendarActivity;)V

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object p1, p1, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {p1}, Lorg/telegram/ui/CalendarActivity;->access$700(Lorg/telegram/ui/CalendarActivity;)V

    goto :goto_2

    .line 651
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CalendarActivity$MonthView$2;->getDayAtCoord(FF)Lorg/telegram/ui/CalendarActivity$PeriodDay;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1500(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1600(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_b

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v0, v0, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v0}, Lorg/telegram/ui/CalendarActivity;->access$1800(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v3, v3, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-static {v3}, Lorg/telegram/ui/CalendarActivity;->access$1700(Lorg/telegram/ui/CalendarActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 654
    instance-of v2, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_b

    .line 655
    iget-object v2, p0, Lorg/telegram/ui/CalendarActivity$MonthView$2;->this$1:Lorg/telegram/ui/CalendarActivity$MonthView;

    iget-object v2, v2, Lorg/telegram/ui/CalendarActivity$MonthView;->this$0:Lorg/telegram/ui/CalendarActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 656
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget p1, p1, Lorg/telegram/ui/CalendarActivity$PeriodDay;->date:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->jumpToDate(I)V

    :cond_b
    :goto_2
    return v1
.end method
