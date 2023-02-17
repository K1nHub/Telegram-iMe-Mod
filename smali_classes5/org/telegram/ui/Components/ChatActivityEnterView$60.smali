.class Lorg/telegram/ui/Components/ChatActivityEnterView$60;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$EmojiViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public static synthetic $r8$lambda$1w0GcQyqiwst7sfz6Kzpl1eOxTs(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->lambda$onClearEmojiRecent$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Omkg4QjBHgWmX3Ms2Uvl-xCTP_U(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->lambda$onKiklikoVideoSelected$0(Ljava/lang/String;ZZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKxPGzgEcpzQH4ly2RRvkBlIV3Y(Lorg/telegram/ui/Components/ChatActivityEnterView$60;[Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->lambda$showKiklikoReportAlert$1([Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$X6Dc4PomSNZixSRa5ZdtCsUQ_JI(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->lambda$onGifSelected$3(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s7At50j_Sd5-xC_G-Y55Iu-e3es(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->lambda$onCustomEmojiSelected$2(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 8338
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClearEmojiRecent$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 8653
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView;->clearRecentEmoji()V

    return-void
.end method

.method private synthetic lambda$onCustomEmojiSelected$2(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V
    .locals 4

    .line 8506
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 8511
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 8512
    new-instance v2, Landroid/text/SpannableString;

    if-nez p1, :cond_1

    const-string/jumbo p1, "\ud83d\ude00"

    :cond_1
    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 8515
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p3}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    .line 8517
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-direct {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    :goto_0
    if-nez p5, :cond_3

    const/4 p2, 0x1

    .line 8520
    iput-boolean p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    .line 8522
    :cond_3
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    .line 8523
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v2, p1, v1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8524
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8525
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p3

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8527
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8529
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    return-void

    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 8530
    throw p1
.end method

.method private synthetic lambda$onGifSelected$3(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    .line 8587
    invoke-virtual/range {p0 .. p7}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onKiklikoVideoSelected$0(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    .line 8352
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->onKiklikoVideoSelected(Ljava/lang/String;ZZILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showKiklikoReportAlert$1([Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback1;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 8416
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 8419
    :cond_0
    array-length p3, p1

    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_1

    .line 8420
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Components/ChatActivityEnterView$60$1;

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const/4 v0, 0x5

    invoke-direct {p3, p0, p4, v0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$60$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Landroid/content/Context;ILorg/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 8437
    :cond_1
    aget-object p1, p1, p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 8438
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const-wide/16 p2, 0x0

    const/16 p4, 0x4a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3, p4, v0}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public canSchedule()Z
    .locals 1

    .line 8720
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->canScheduleMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V
    .locals 2

    .line 8446
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8447
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 8448
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14402(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 8450
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->editAnimatedSticker(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/RLottieDrawable;Z)V

    return-void
.end method

.method public editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 2

    .line 8455
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 8457
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14402(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 8459
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->editMedia(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    return-void
.end method

.method public getDialogId()J
    .locals 2

    .line 8730
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgressToSearchOpened()F
    .locals 1

    .line 8767
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .locals 1

    .line 8735
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    return v0
.end method

.method public invalidateEnterView()V
    .locals 1

    .line 8762
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .line 8715
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    return v0
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 8725
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchOpened()Z
    .locals 1

    .line 8710
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSelf()Z
    .locals 5

    .line 8473
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimatedEmojiUnlockClick()V
    .locals 4

    .line 8536
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 8537
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8538
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 8540
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    :goto_0
    return-void
.end method

.method public onBackspace()Z
    .locals 4

    .line 8478
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8481
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onClearEmojiRecent()V
    .locals 3

    .line 8647
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8650
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8651
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiTitle:I

    const-string v2, "ClearRecentEmojiTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8652
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiText:I

    const-string v2, "ClearRecentEmojiText"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8653
    sget v1, Lorg/telegram/messenger/R$string;->ClearForAll:I

    const-string v2, "ClearButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8654
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 8655
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCustomEmojiSelected(JLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Z)V
    .locals 8

    .line 8505
    new-instance v7, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-wide v4, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4

    .line 8487
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 8492
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 8493
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p1, v2, v3, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 8494
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8495
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 8496
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8498
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8500
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    return-void

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8502(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 8501
    throw p1
.end method

.method public onEmojiSettingsClick(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)V"
        }
    .end annotation

    .line 8579
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8580
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onGifSelected(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v0, p6

    move-object/from16 v1, p7

    .line 8586
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->isInScheduleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, 0x1

    invoke-static {v2, v4, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 8587
    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v7

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v8

    new-instance v10, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    move-object/from16 p1, v7

    move-wide/from16 p2, v8

    move-object/from16 p4, v10

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    invoke-static/range {p1 .. p6}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_2

    .line 8589
    :cond_2
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 8590
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8591
    iget-object v0, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz p1, :cond_3

    move-object/from16 v1, p1

    goto :goto_0

    :cond_3
    iget-object v1, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    :goto_0
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V

    :cond_4
    return-void

    .line 8595
    :cond_5
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    const/4 v15, 0x0

    if-eqz v2, :cond_7

    .line 8596
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 8597
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 8599
    :cond_6
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v15, v4, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 8601
    :cond_7
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$Document;

    const-wide/16 v20, 0x3e8

    if-eqz v2, :cond_8

    .line 8602
    move-object v2, v3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 8603
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v7

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v8, v2

    move-object/from16 v9, p3

    move-object/from16 v14, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v19, p7

    invoke-virtual/range {v7 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZIZLjava/lang/String;)V

    .line 8604
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long v7, v7, v20

    long-to-int v8, v7

    invoke-virtual {v3, v2, v8, v4}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 8605
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 8606
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_1

    .line 8608
    :cond_8
    instance-of v2, v3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_a

    .line 8609
    move-object v9, v3

    check-cast v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 8611
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    .line 8612
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long v7, v7, v20

    long-to-int v8, v7

    invoke-virtual {v2, v3, v8, v15}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 8613
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 8614
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, v5, v3}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 8618
    :cond_9
    move-object v2, v5

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 8620
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 8621
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v9, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query_id"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "force_gif"

    const-string v3, "1"

    .line 8623
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8625
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v8

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v11

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    const/4 v2, 0x0

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, p7

    invoke-static/range {v7 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;)V

    .line 8627
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    if-eqz v3, :cond_a

    .line 8628
    iget-object v3, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 8629
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 8630
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 8633
    :cond_a
    :goto_1
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 8634
    iget-object v2, v6, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v4, p5

    invoke-interface {v2, v3, v4, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onKiklikoVideoSelected(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p4

    .line 8351
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->isInScheduleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v15, :cond_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v11, 0x1

    invoke-static {v1, v11, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p5, :cond_2

    .line 8352
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v13, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Ljava/lang/String;Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_3

    .line 8354
    :cond_2
    new-instance v16, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v6, p1

    const/4 v15, 0x1

    move-wide/from16 v11, v17

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    const/16 v1, 0xb

    new-array v1, v1, [I

    .line 8357
    invoke-static {v13, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(Ljava/lang/String;[I)V

    const/4 v2, 0x3

    .line 8358
    aget v2, v1, v2

    const/4 v3, 0x7

    .line 8359
    aget v3, v1, v3

    .line 8360
    aget v4, v1, v15

    const/4 v5, 0x2

    .line 8361
    aget v5, v1, v5

    const/4 v6, 0x4

    .line 8362
    aget v6, v1, v6

    int-to-long v7, v2

    const-wide/16 v9, 0x8

    .line 8363
    div-long/2addr v7, v9

    int-to-long v9, v6

    mul-long v7, v7, v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    if-eqz v14, :cond_3

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    .line 8364
    aget v1, v1, v2

    int-to-long v1, v1

    .line 8366
    :goto_0
    new-instance v6, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v6}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    if-eqz v14, :cond_4

    const/16 v17, -0x1

    const/4 v15, -0x1

    goto :goto_1

    .line 8367
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MediaController;->getVideoBitrate(Ljava/lang/String;)I

    move-result v17

    move/from16 v15, v17

    :goto_1
    iput v15, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/high16 v15, 0x3f800000    # 1.0f

    .line 8368
    iput v15, v6, Lorg/telegram/messenger/VideoEditedInfo;->end:F

    const-wide/16 v11, -0x1

    .line 8369
    iput-wide v11, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    iput-wide v11, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 8370
    iput-wide v9, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    add-long/2addr v1, v7

    .line 8371
    iput-wide v1, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    const-wide/32 v7, 0x8000

    .line 8372
    div-long v7, v1, v7

    const-wide/16 v11, 0x10

    mul-long v7, v7, v11

    add-long/2addr v1, v7

    iput-wide v1, v6, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 8373
    iput v3, v6, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    const-wide/16 v1, 0x3e8

    mul-long v9, v9, v1

    .line 8374
    iput-wide v9, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    .line 8375
    iput v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iput v4, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 8376
    iput v5, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iput v5, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 8377
    iput-object v13, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 8378
    iput-boolean v14, v6, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 8380
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    const/4 v7, 0x0

    move-object/from16 v2, v16

    move-object v3, v6

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    .line 8381
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 8382
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    .line 8384
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 8385
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 8386
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(Z)V

    .line 8387
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 8389
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 8390
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v1, v2, v3, v4, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onSearchOpenClose(I)V
    .locals 3

    .line 8699
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    if-eqz p1, :cond_1

    .line 8701
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZZ)V

    .line 8703
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 8704
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :cond_2
    return-void
.end method

.method public onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 9

    .line 8660
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8661
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersAlert;->getLayout()Lorg/telegram/ui/Components/TrendingStickersLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->showStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void

    .line 8664
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 8668
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 8669
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 8670
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    :cond_2
    move-object v5, p2

    .line 8672
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_3
    :goto_0
    return-void
.end method

.method public onStickerSelected(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZILjava/lang/String;)V
    .locals 13

    move-object v0, p0

    .line 8546
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8547
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/TrendingStickersAlert;->dismiss()V

    .line 8548
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14402(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 8550
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$11900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->isInScheduleMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8551
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8552
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz p1, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 8556
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8557
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 8558
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;IZ)V

    .line 8559
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/ui/Components/EmojiView;->closeSearch(ZJ)V

    .line 8560
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->hideSearchKeyboard()V

    .line 8562
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    .line 8564
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v9, 0x0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZILjava/lang/String;)V

    .line 8565
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8566
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, p2}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_6
    return-void
.end method

.method public onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 8

    .line 8677
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method public onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .locals 8

    .line 8682
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MediaDataController;->toggleStickerSet(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    return-void
.end method

.method public onStickersGroupClick(J)V
    .locals 2

    .line 8687
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8688
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8689
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    .line 8691
    :cond_0
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/GroupStickersActivity;-><init>(J)V

    .line 8692
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/GroupStickersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 8693
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    return-void
.end method

.method public onStickersSettingsClick()V
    .locals 4

    .line 8572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8573
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public onTabOpened(I)V
    .locals 2

    .line 8641
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onStickersTab(Z)V

    .line 8642
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setKiklikoAvatar(Ljava/lang/String;)V
    .locals 1

    .line 8464
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setKiklikoAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public showKiklikoReportAlert(Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8397
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 8400
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustNothing(Landroid/app/Activity;I)V

    .line 8401
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8402
    sget v0, Lorg/telegram/messenger/R$string;->ReportChat:I

    const-string v1, "ReportChat"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 8403
    sget v3, Lorg/telegram/messenger/R$string;->ReportChatViolence:I

    const-string v4, "ReportChatViolence"

    .line 8404
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget v3, Lorg/telegram/messenger/R$string;->ReportChatChild:I

    const-string v5, "ReportChatChild"

    .line 8405
    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget v3, Lorg/telegram/messenger/R$string;->ReportChatPornography:I

    const-string v5, "ReportChatPornography"

    .line 8406
    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    sget v3, Lorg/telegram/messenger/R$string;->ReportChatOther:I

    const-string v6, "ReportChatOther"

    .line 8407
    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v0, v0, [I

    .line 8409
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_report_violence:I

    aput v3, v0, v4

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    aput v3, v0, v2

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_report_xxx:I

    aput v2, v0, v5

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_report_other:I

    aput v2, v0, v6

    .line 8415
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;[Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 8441
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showTrendingStickersAlert(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
    .locals 8

    .line 8740
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8741
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v7, Lorg/telegram/ui/Components/ChatActivityEnterView$60$2;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterView$60$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v0, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14402(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    .line 8753
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8754
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTrendingStickersShowed(Z)V

    .line 8756
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$14400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/TrendingStickersAlert;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TrendingStickersAlert;->show()V

    :cond_1
    return-void
.end method
