.class Lorg/telegram/ui/Components/ChatActivityEnterView$9;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1102
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onPreAudioVideoRecord()V

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1109
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2802(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v0

    const/16 v3, 0x17

    const-string v4, "android.permission.RECORD_AUDIO"

    if-eqz v0, :cond_a

    .line 1112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_8

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1114
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v3

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v0, :cond_4

    if-nez v3, :cond_8

    :cond_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    const/4 v6, 0x2

    goto :goto_2

    :cond_5
    move v6, v1

    .line 1116
    :goto_2
    new-array v6, v6, [Ljava/lang/String;

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    .line 1118
    aput-object v4, v6, v2

    .line 1119
    aput-object v5, v6, v1

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    .line 1121
    aput-object v4, v6, v2

    goto :goto_3

    .line 1123
    :cond_7
    aput-object v5, v6, v2

    .line 1125
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1129
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1130
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 1132
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4

    .line 1145
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1152
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 1153
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 1154
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MediaController;->startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;I)V

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->start()V

    .line 1160
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->access$3802(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;Z)Z

    .line 1163
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$9;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves(ZZ)V

    :cond_e
    :goto_4
    return-void
.end method
