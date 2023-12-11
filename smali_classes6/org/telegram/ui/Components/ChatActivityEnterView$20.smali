.class Lorg/telegram/ui/Components/ChatActivityEnterView$20;
.super Landroid/widget/FrameLayout;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$5XH5QfKdB0Qli3qPMTZndnHNjYA(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$BkO36AlRPUapRsT_4V06ijslu4E(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$0(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R2oVJNEFdnS_5te8RYQewRny2fY()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$erqC6rKcCdE1U9qXjDHvpZ08pvs()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$gB07iAtLGzQQQUHE0UF6RxJIeUA(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$3(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4knmvXysBj_f_rYnWaSMIAjBVQ(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->lambda$onTouchEvent$5()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2598
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$0(ZILjava/lang/String;)V
    .locals 2

    .line 2616
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$1()V
    .locals 3

    .line 2616
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$2()V
    .locals 2

    .line 2624
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2625
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$3(ZILjava/lang/String;)V
    .locals 2

    .line 2705
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$4()V
    .locals 3

    .line 2705
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5()V
    .locals 2

    .line 2713
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2714
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 2607
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 2608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_f

    .line 2609
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2610
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2611
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2612
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2613
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v5, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_1

    .line 2615
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2616
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    sget-object v9, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda4;

    sget-object v10, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda2;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2618
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v5

    :cond_6
    :goto_0
    invoke-virtual {p1, v2, v5, v4, v3}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2619
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2621
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2622
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 2623
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2628
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v5

    .line 2632
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 2633
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    :goto_3
    if-eqz v3, :cond_b

    .line 2634
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    if-eqz p1, :cond_d

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    if-eqz p1, :cond_d

    .line 2635
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    return v5

    .line 2639
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2640
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2102(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2641
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2642
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 2644
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_4
    return v5

    .line 2647
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v6, 0x5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    if-eq v0, v5, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_10

    goto/16 :goto_7

    .line 2719
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 2722
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v2

    if-eqz v2, :cond_11

    return v4

    .line 2725
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setLockTranslation(F)I

    move-result v2

    if-ne v2, v8, :cond_12

    .line 2726
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return v4

    .line 2729
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setMovingCords(FF)V

    .line 2732
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_13

    .line 2733
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2734
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-double v9, v2

    const-wide v11, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v9, v11

    double-to-float v2, v9

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8202(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2735
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const/16 v2, 0x8c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float p1, p1, v9

    if-lez p1, :cond_13

    .line 2736
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8202(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2740
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    add-float/2addr v0, p1

    .line 2741
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    sub-float/2addr v0, p1

    .line 2742
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    div-float/2addr v0, p1

    add-float/2addr v0, v7

    .line 2743
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    cmpl-float p1, v0, v7

    if-lez p1, :cond_14

    goto :goto_5

    :cond_14
    cmpg-float p1, v0, v1

    if-gez p1, :cond_15

    move v7, v1

    goto :goto_5

    :cond_15
    move v7, v0

    .line 2749
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2750
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->setSlideX(F)V

    .line 2752
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 2753
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setSlideToCancelProgress(F)V

    :cond_17
    move v0, v7

    :cond_18
    cmpl-float p1, v0, v1

    if-nez p1, :cond_1a

    .line 2758
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2759
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2760
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v8, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_6

    .line 2762
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2763
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v4, v3}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2765
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2766
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    :cond_1a
    return v5

    .line 2648
    :cond_1b
    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2649
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1d

    .line 2650
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 2651
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2652
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v8, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_8

    .line 2654
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2655
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v4, v3}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2657
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2658
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    goto :goto_9

    .line 2660
    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->access$8002(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Z)Z

    .line 2661
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :goto_9
    return v4

    .line 2665
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_22

    .line 2666
    :cond_20
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2667
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_21
    return v4

    .line 2672
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    add-float/2addr p1, v0

    .line 2673
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 2674
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8200(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    div-float/2addr p1, v0

    add-float/2addr p1, v7

    float-to-double v9, p1

    const-wide v11, 0x3fdccccccccccccdL    # 0.45

    cmpg-double p1, v9, v11

    if-gez p1, :cond_24

    .line 2676
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2677
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2678
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v8, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_a

    .line 2680
    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2681
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v4, v3}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2683
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2684
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    goto/16 :goto_f

    .line 2686
    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2687
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2688
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2689
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onSwitchRecordMode(Z)V

    .line 2690
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {p1, v0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    goto :goto_b

    .line 2692
    :cond_25
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    .line 2694
    :goto_b
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 2695
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto/16 :goto_f

    .line 2696
    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 2697
    :cond_27
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2698
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 2699
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2700
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v5, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto/16 :goto_d

    .line 2701
    :cond_28
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 2702
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    goto :goto_d

    .line 2704
    :cond_29
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_2b

    :cond_2a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 2705
    :cond_2b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    sget-object v9, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda5;

    sget-object v10, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda3;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2707
    :cond_2c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2708
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_c

    :cond_2d
    move v2, v5

    :cond_2e
    :goto_c
    invoke-virtual {p1, v2, v5, v4, v3}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2710
    :goto_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2711
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 2712
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$20;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7602(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2715
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$20;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    if-eqz v0, :cond_2f

    const-wide/16 v0, 0x1f4

    goto :goto_e

    :cond_2f
    const-wide/16 v0, 0x0

    .line 2712
    :goto_e
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_30
    :goto_f
    return v5
.end method
