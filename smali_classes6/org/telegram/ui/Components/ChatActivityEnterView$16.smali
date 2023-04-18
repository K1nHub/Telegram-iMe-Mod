.class Lorg/telegram/ui/Components/ChatActivityEnterView$16;
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
.method public static synthetic $r8$lambda$DSwOg2PMMZ6KtrbvUgufW6WJsuY(Lorg/telegram/ui/Components/ChatActivityEnterView$16;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->lambda$onTouchEvent$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$I_QMhCiehAiaIQtBsx3rl7QJMtg()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZePLBnccduFco3iQNNup8Kg_Vv4(Lorg/telegram/ui/Components/ChatActivityEnterView$16;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->lambda$onTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$kizLE_U24vWxirJUNveISzpIhIs(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->lambda$onTouchEvent$3(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmq88XMz7IA3wgdoTsK7SmgL8AY()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->lambda$onTouchEvent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$umZjRNVp2r5anqBvNjyON3jJsI0(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->lambda$onTouchEvent$0(ZILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2488
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$0(ZILjava/lang/String;)V
    .locals 2

    .line 2506
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$1()V
    .locals 3

    .line 2506
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$2()V
    .locals 2

    .line 2514
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2515
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$3(ZILjava/lang/String;)V
    .locals 2

    .line 2595
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$4()V
    .locals 3

    .line 2595
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5()V
    .locals 2

    .line 2603
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2604
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

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

    .line 2497
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6800(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 2498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_d

    .line 2499
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2500
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2501
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2502
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2503
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v5, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_1

    .line 2505
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2506
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    sget-object v9, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda5;

    sget-object v10, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda3;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2508
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v5

    :cond_6
    :goto_0
    invoke-virtual {p1, v3, v5, v4, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2509
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2511
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2512
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 2513
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$16;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2518
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v5

    .line 2521
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2522
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 2523
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz p1, :cond_9

    .line 2524
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    if-eqz v0, :cond_b

    iget-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    if-eqz p1, :cond_b

    .line 2525
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    return v5

    .line 2529
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2530
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2531
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2532
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 2534
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_2
    return v5

    .line 2537
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v6, 0x5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    if-eq v0, v5, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_e

    goto/16 :goto_5

    .line 2609
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 2612
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v3

    if-eqz v3, :cond_f

    return v4

    .line 2615
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setLockTranslation(F)I

    move-result v3

    if-ne v3, v8, :cond_10

    .line 2616
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return v4

    .line 2619
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setMovingCords(FF)V

    .line 2622
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_11

    .line 2623
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2624
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-double v9, v3

    const-wide v11, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v9, v11

    double-to-float v3, v9

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2625
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const/16 v3, 0x8c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    cmpl-float p1, p1, v9

    if-lez p1, :cond_11

    .line 2626
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2630
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    add-float/2addr v0, p1

    .line 2631
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    sub-float/2addr v0, p1

    .line 2632
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    div-float/2addr v0, p1

    add-float/2addr v0, v7

    .line 2633
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    cmpl-float p1, v0, v7

    if-lez p1, :cond_12

    goto :goto_3

    :cond_12
    cmpg-float p1, v0, v1

    if-gez p1, :cond_13

    move v7, v1

    goto :goto_3

    :cond_13
    move v7, v0

    .line 2639
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2640
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->setSlideX(F)V

    .line 2642
    :cond_14
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2643
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setSlideToCancelProgress(F)V

    :cond_15
    move v0, v7

    :cond_16
    cmpl-float p1, v0, v1

    if-nez p1, :cond_18

    .line 2648
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2649
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2650
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v8, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_4

    .line 2652
    :cond_17
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2653
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v4, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2655
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2656
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    :cond_18
    return v5

    .line 2538
    :cond_19
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2539
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1b

    .line 2540
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2541
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2542
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v8, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_6

    .line 2544
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2545
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v4, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2547
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2548
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    goto :goto_7

    .line 2550
    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object p1

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->access$7402(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Z)Z

    .line 2551
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :goto_7
    return v4

    .line 2555
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_20

    .line 2556
    :cond_1e
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 2557
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1f
    return v4

    .line 2562
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    add-float/2addr p1, v0

    .line 2563
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    sub-float/2addr p1, v0

    .line 2564
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    div-float/2addr p1, v0

    add-float/2addr p1, v7

    float-to-double v9, p1

    const-wide v11, 0x3fdccccccccccccdL    # 0.45

    cmpg-double p1, v9, v11

    if-gez p1, :cond_22

    .line 2566
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2567
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2568
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v8, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto :goto_8

    .line 2570
    :cond_21
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2571
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v4, v4, v4, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2573
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2574
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    goto/16 :goto_c

    .line 2576
    :cond_22
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2577
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2578
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2579
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onSwitchRecordMode(Z)V

    .line 2580
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {p1, v0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8000(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    goto :goto_9

    .line 2582
    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    .line 2584
    :goto_9
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 2585
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto/16 :goto_c

    .line 2586
    :cond_24
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 2587
    :cond_25
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2588
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2589
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 2590
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v5, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZI)V

    goto/16 :goto_b

    .line 2591
    :cond_26
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 2592
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    goto :goto_b

    .line 2594
    :cond_27
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result p1

    if-nez p1, :cond_29

    :cond_28
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2595
    :cond_29
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v7

    sget-object v9, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda4;

    sget-object v10, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda2;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2597
    :cond_2a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    invoke-interface {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2598
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v5, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_a

    :cond_2b
    move v3, v5

    :cond_2c
    :goto_a
    invoke-virtual {p1, v3, v5, v4, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 2600
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2601
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v4, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 2602
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$16$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$16;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2d
    :goto_c
    return v5
.end method
