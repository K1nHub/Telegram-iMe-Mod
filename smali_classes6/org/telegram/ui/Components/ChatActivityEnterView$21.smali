.class Lorg/telegram/ui/Components/ChatActivityEnterView$21;
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
.method public static synthetic $r8$lambda$2XxPlziu1S3BdOxRkpAy_c6GEX8()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$DZ2_FNVdagQPDdyKXWS1DIXtZps()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$FYDiLg0fFWGj2hTGrQXZI-LaVkk(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$0(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IW1KmCJXIGys8a4VOeeB-TXzlxM(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mgll0upZ36MUyu613supIOoxbIY(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$3(ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aldXal5d45EC1IrNXQj5LY0mUgs(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->lambda$onTouchEvent$5()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2964
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$0(ZILjava/lang/String;)V
    .locals 6

    .line 2987
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$1()V
    .locals 6

    .line 2987
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$2()V
    .locals 2

    .line 2995
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9302(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2996
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$3(ZILjava/lang/String;)V
    .locals 6

    .line 3078
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onTouchEvent$4()V
    .locals 6

    .line 3078
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5()V
    .locals 2

    .line 3086
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9302(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3087
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

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
    .locals 20

    move-object/from16 v0, p0

    .line 2978
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8900(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 2979
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const v3, 0x7fffffff

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_10

    .line 2980
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2981
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2982
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 2983
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2984
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-interface {v1, v6, v6, v5, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZII)V

    goto/16 :goto_3

    .line 2986
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v6, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2987
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v8

    sget-object v10, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda4;

    sget-object v11, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda3;

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v13

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 2989
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v14

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v6, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move v15, v6

    goto :goto_2

    :cond_7
    :goto_1
    move v15, v4

    :goto_2
    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/16 v19, 0x0

    move/from16 v18, v1

    invoke-virtual/range {v14 .. v19}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    .line 2990
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 2992
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 2993
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v5, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 2994
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9302(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2999
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v6

    .line 3003
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 3004
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    goto :goto_5

    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    :goto_5
    if-eqz v1, :cond_c

    .line 3005
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendVoice(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canSendRoundVideo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    if-eqz v2, :cond_e

    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->voice_messages_forbidden:Z

    if-eqz v1, :cond_e

    .line 3006
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    return v6

    .line 3010
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3011
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2102(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3012
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3013
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 3015
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_6
    return v6

    .line 3018
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v7, 0x5

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    if-eq v1, v6, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_11

    goto/16 :goto_a

    .line 3092
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v9, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3093
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 3094
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 3095
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v10

    if-eqz v10, :cond_12

    return v5

    .line 3098
    :cond_12
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v10

    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setLockTranslation(F)I

    move-result v10

    if-ne v10, v9, :cond_13

    .line 3099
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    return v5

    .line 3102
    :cond_13
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v10

    invoke-virtual {v10, v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setMovingCords(FF)V

    .line 3105
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_14

    .line 3106
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3107
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v10, v12

    double-to-float v10, v10

    invoke-static {v4, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3108
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/16 v10, 0x8c

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v4, v4, v11

    if-lez v4, :cond_14

    .line 3109
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v4, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3113
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    add-float/2addr v1, v4

    .line 3114
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float/2addr v1, v4

    .line 3115
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    div-float/2addr v1, v4

    add-float/2addr v1, v8

    .line 3116
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v2, v4, v2

    const/4 v4, 0x0

    if-eqz v2, :cond_18

    cmpl-float v2, v1, v8

    if-lez v2, :cond_15

    goto :goto_7

    :cond_15
    cmpg-float v2, v1, v4

    if-gez v2, :cond_16

    move v8, v4

    goto :goto_7

    :cond_16
    move v8, v1

    .line 3122
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 3123
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->setSlideX(F)V

    .line 3125
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSlideToCancelProgress(F)V

    move v1, v8

    :cond_18
    cmpl-float v1, v1, v4

    if-nez v1, :cond_1b

    .line 3129
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3130
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 3131
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_19

    goto :goto_8

    :cond_19
    move v3, v5

    :goto_8
    invoke-interface {v1, v9, v6, v5, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZII)V

    goto :goto_9

    .line 3133
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3134
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v12, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    .line 3136
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3137
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    :cond_1b
    return v6

    .line 3019
    :cond_1c
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-wide/16 v10, 0x0

    if-ne v1, v4, :cond_20

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3020
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 3021
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3022
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 3023
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_1d

    goto :goto_b

    :cond_1d
    move v3, v5

    :goto_b
    invoke-interface {v1, v9, v6, v5, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZII)V

    goto :goto_c

    .line 3025
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3026
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    .line 3028
    :goto_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5902(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 3029
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3030
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    goto :goto_d

    .line 3032
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3033
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9600(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :goto_d
    return v5

    .line 3037
    :cond_20
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v1

    if-nez v1, :cond_22

    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_24

    .line 3038
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3039
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_23
    return v5

    .line 3044
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getX()F

    move-result v12

    add-float/2addr v1, v12

    .line 3045
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v12

    sub-float/2addr v1, v12

    .line 3046
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9700(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v12

    div-float/2addr v1, v12

    add-float/2addr v1, v8

    float-to-double v12, v1

    const-wide v14, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v1, v12, v14

    if-gez v1, :cond_27

    .line 3048
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3049
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 3050
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_25

    goto :goto_e

    :cond_25
    move v3, v5

    :goto_e
    invoke-interface {v1, v9, v6, v5, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZII)V

    goto :goto_f

    .line 3052
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3053
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    .line 3055
    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v10, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5902(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J

    .line 3056
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3057
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(I)V

    goto/16 :goto_15

    .line 3059
    :cond_27
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3060
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3061
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3062
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onSwitchRecordMode(Z)V

    .line 3063
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    xor-int/2addr v2, v6

    invoke-static {v1, v2, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10000(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    goto :goto_10

    .line 3065
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    .line 3067
    :goto_10
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 3068
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto/16 :goto_15

    .line 3069
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 3070
    :cond_2a
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3071
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3072
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->cancelOnInitRunnable(Ljava/lang/Runnable;)V

    .line 3073
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz v2, :cond_2b

    goto :goto_11

    :cond_2b
    move v3, v5

    :goto_11
    invoke-interface {v1, v6, v6, v5, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(IZII)V

    goto/16 :goto_14

    .line 3074
    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 3075
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needShowMediaBanHint()V

    goto/16 :goto_14

    .line 3077
    :cond_2d
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_2e
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v6, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3078
    :cond_2f
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v13

    sget-object v15, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda5;

    sget-object v16, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda2;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v18

    move-object/from16 v17, v1

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3080
    :cond_30
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 3081
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInScheduleMode()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v6, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_12

    :cond_31
    move v13, v6

    goto :goto_13

    :cond_32
    :goto_12
    move v13, v4

    :goto_13
    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v17}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    .line 3083
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 3084
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean v5, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    .line 3085
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$21;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9302(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 3088
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$21;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    if-eqz v2, :cond_33

    const-wide/16 v10, 0x1f4

    .line 3085
    :cond_33
    invoke-static {v1, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_34
    :goto_15
    return v6
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2968
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
